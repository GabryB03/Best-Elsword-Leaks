// ExecutorPlugin.cpp: Definiert die exportierten Funktionen für die DLL-Anwendung.
//

#include "stdafx.h"
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "..\LuaLinkerClient\LuaLinkerPluginCallback.h"


#define REPLACEMENT_PREFIX "local luacode = \""
#define REPLACEMENT_SUFFIX "\"\n"

#define PREPEND_PREFIX "pcall(function()\n"
#define PREPEND_SUFFIX "\nend)\n"


#define UNKNOWN_COMMAND_HELP_TEXT "Executor plugin: Unknown command.\n'help' shows a list of supported commands.\n"

#define COMMAND_LIST_HELP_TEXT \
"Available commands:\n"\
"usecompiler <DLL path>   Compile Lua code before running it.\n"\
"unloadcompiler           Unloads the current Lua compiler.\n"\
"replaceall <Lua path>    Replace all Lua scripts with this script.\n"\
"unloadscript             Unloads the replacement Lua script.\n"\
"prependonce <Lua path>   Executes the given script just once.\n"



#define lua_pop(L,n)		lua_settop(L, -(n)-1)

typedef int(__cdecl *lua_Writer) (void* L, const void* p, size_t sz, void* ud);

typedef struct {
	size_t size;
	char* data;
} lua_writer_buffer_t;


const char* replacementScript;

printf_t p_printf = NULL;

//Writes the output of lua_dump into a lua_writer_buffer_t
int __cdecl l_writer(void* L, const void* p, size_t sz, void* ud) {
	lua_writer_buffer_t* buf = (lua_writer_buffer_t*)ud;
	if (!buf) {
		return 1;
	}
	
	size_t newsize = buf->size + sz;
	buf->data = (char*)realloc(buf->data, newsize);

	if (!buf->data) {
		return 2;
	}

	memcpy(buf->data + buf->size, p, sz);
	buf->size = newsize;

	return 0;
}


typedef int(__cdecl *luaL_loadstring_t)(void*, const char*);
typedef void*(__cdecl *luaL_newstate_t)(void);
typedef int(__cdecl *lua_dump_t)(void*, lua_Writer, void*);
typedef void(__cdecl *lua_settop_t)(void*, int);


void* g_L;
luaL_loadstring_t luaL_loadstring;
lua_dump_t lua_dump;
lua_settop_t lua_settop;


//Clears the function pointers for the compiler DLL.
void clearCompiler() {
	g_L = NULL;
	luaL_loadstring = NULL;
	lua_dump = NULL;
	lua_settop = NULL;
}


//Compiles a chunk of Lua code. Returns the resulting bytecode or NULL if compilation failed.
lua_writer_buffer_t* lua_compile_string(const char* str) {
	lua_writer_buffer_t* buf = NULL;
	if (luaL_loadstring(g_L, str) == 0) {
		buf = (lua_writer_buffer_t*)malloc(sizeof(lua_writer_buffer_t));
		buf->size = 0;
		buf->data = NULL;
		if (lua_dump(g_L, l_writer, buf) != 0) {
			free(buf->data);
			free(buf);
			buf = NULL;
		}
	}
	lua_pop(g_L, 1);
	return buf;
}

//Loads a DLL to compile Lua code with before execution
void loadCompilerDll(const char* dllPath) {
	clearCompiler();

	HMODULE hCompilerDll = LoadLibraryA(dllPath);
	if (hCompilerDll == NULL) {
		p_printf("Unable to load DLL. LoadLibrary failed.\n");
		return;
	}

	luaL_newstate_t new_luaL_newstate = (luaL_newstate_t)GetProcAddress(hCompilerDll, "luaL_newstate");
	luaL_loadstring_t new_luaL_loadstring = (luaL_loadstring_t)GetProcAddress(hCompilerDll, "luaL_loadstring");
	lua_dump_t new_lua_dump = (lua_dump_t)GetProcAddress(hCompilerDll, "lua_dump");
	lua_settop_t new_lua_settop = (lua_settop_t)GetProcAddress(hCompilerDll, "lua_settop");

	if (!new_luaL_newstate || !new_luaL_loadstring || !new_lua_dump || !new_lua_settop) {
		p_printf("The specified DLL is not a Lua runtime.\n");
		return;
	}

	void* new_L = new_luaL_newstate();
	if (!new_L) {
		p_printf("luaL_newstate failed\n");
		return;
	}

	g_L = new_L;
	luaL_loadstring = new_luaL_loadstring;
	lua_dump = new_lua_dump;
	lua_settop = new_lua_settop;

	p_printf("Compiler loaded.\n");
}

//Loads a file and returns it as a string.
char* loadFile(const char* filename) {
	FILE* f = fopen(filename, "rb");
	if (!f) {
		p_printf("Unable to open file.\n");
		return NULL;
	}

	long filesize;
	fseek(f, 0, SEEK_END);
	filesize = ftell(f);
	rewind(f);

	char* buf = (char*)malloc(filesize + 1);
	if (!buf) {
		p_printf("Out of memory.\n");
		fclose(f);
		return NULL;
	}

	size_t readResult = fread(buf, 1, filesize, f);
	buf[filesize] = 0;
	fclose(f);
	if (readResult != filesize) {
		p_printf("File read error.\n");
		free(buf);
		return NULL;
	}

	return buf;
}

//Loads a script file to replace all Lua code with.
void loadReplacementLua(const char* filename) {
	char* buf = loadFile(filename);
	if (!buf) {
		return;
	}

	replacementScript = buf;
	p_printf("Script loaded.\n");
}


char* scriptToPrepend;

//Prepends the given script file to the next script to be executed.
void prependOnce(const char* filename) {
	char* buf = loadFile(filename);
	if (!buf) {
		return;
	}

	bool oldScriptPresent = scriptToPrepend != NULL;
	size_t newsize = strlen(PREPEND_PREFIX) + strlen(buf) + strlen(PREPEND_SUFFIX) + 1;
	if (oldScriptPresent) {
		newsize += strlen(scriptToPrepend);
	}
	scriptToPrepend = (char*)realloc(scriptToPrepend, newsize);
	if (!oldScriptPresent) {
		scriptToPrepend[0] = 0;
	}
	strcat(scriptToPrepend, PREPEND_PREFIX);
	strcat(scriptToPrepend, buf);
	strcat(scriptToPrepend, PREPEND_SUFFIX);

	//p_printf("%s\n", scriptToPrepend);

	p_printf("Script loaded for one-time execution.\n");

	if (replacementScript == NULL) {
		p_printf("Script will only run after you issued a 'replaceall' command.\n");
	}
}

//Handles a console command by the user.
void handleCommand(size_t argc, char** argv) {
	if (argc == 0) {
		p_printf(UNKNOWN_COMMAND_HELP_TEXT);
		return;
	}

	char* cmd = argv[0];

	if (strcmp(cmd, "help") == 0) {
		p_printf(COMMAND_LIST_HELP_TEXT);
		return;
	}

	if (strcmp(cmd, "usecompiler") == 0) {
		if (argc != 2) {
			p_printf("Wrong number of arguments.\n");
		} else {
			loadCompilerDll(argv[1]);
		}
		return;
	}

	if (strcmp(cmd, "unloadcompiler") == 0) {
		clearCompiler();
		return;
	}

	if (strcmp(cmd, "unloadscript") == 0) {
		replacementScript = NULL;
		return;
	}

	if (strcmp(cmd, "replaceall") == 0) {
		if (argc != 2) {
			p_printf("Wrong number of arguments.\n");
		} else {
			loadReplacementLua(argv[1]);
		}
		return;
	}

	if (strcmp(cmd, "prependonce") == 0) {
		if (argc != 2) {
			p_printf("Wrong number of arguments.\n");
		}
		else {
			prependOnce(argv[1]);
		}
		return;
	}

	p_printf(UNKNOWN_COMMAND_HELP_TEXT);
}

//const char* hexChars = "0123456789ABCDEF";

//Escapes a buffer as a Lua string constant and returns the string.
char* escapeForLua(const char* buf, size_t size) {
	char* result = (char*)malloc(size * 4 + 1);
	size_t j = 0;
	for (size_t i = 0; i < size; i++) {
		result[j++] = '\\';
		//result[j++] = 'x';
		char c = buf[i];
		//result[j++] = hexChars[(c >> 4) & 0xF];
		//result[j++] = hexChars[c & 0xF];
		sprintf(result + j, "%03u", ((unsigned char)c) & 0xFF);
		j += 3;
	}
	result[j++] = 0;
	return result;
}

void replaceLua(char** chunk, size_t* size, realloc_t llrealloc, const char* chunkname) {
	if (replacementScript == NULL) {
		return;
	}

	if ((*size > 0) && (**chunk == 0)) {
		//This Lua script has a NULL prefix, so it knows about
		//this plugin and wants to bypass replacement.
		//Just remove the NULL prefix and let it execute.
		*size -= 1;
		char* chunkbuf = *chunk;
		memmove(chunkbuf, chunkbuf + 1, *size);
		return;
	}

	char* escapedString = escapeForLua(*chunk, *size);
	
	size_t prependSize = 0;
	if (scriptToPrepend != NULL) {
		prependSize = strlen(scriptToPrepend);
	}

	char* newChunk = (char*)malloc(prependSize + strlen(REPLACEMENT_PREFIX) + strlen(escapedString) + strlen(REPLACEMENT_SUFFIX) + strlen(replacementScript) + 1);
	newChunk[0] = 0;
	if (scriptToPrepend != NULL) {
		strcat(newChunk, scriptToPrepend);
		free(scriptToPrepend);
		scriptToPrepend = NULL;
	}
	strcat(newChunk, REPLACEMENT_PREFIX);
	strcat(newChunk, escapedString);
	strcat(newChunk, REPLACEMENT_SUFFIX);
	strcat(newChunk, replacementScript);
	size_t newlen = strlen(newChunk);

	free(escapedString);

	if (g_L != NULL) {
		lua_writer_buffer_t* lwbuf = lua_compile_string(newChunk);
		if (!lwbuf) {
			p_printf("Unable to compile script\n");
			return;
		}
		free(newChunk);
		newChunk = lwbuf->data;
		newlen = lwbuf->size;
		free(lwbuf);
	}

	OVERWRITE_LUALINKER_CHUNK_BUFFER(chunk, size, llrealloc, newChunk, newlen);

	free(newChunk);
}

extern "C" {
	void __declspec(dllexport) __cdecl plugin_callback(uint8_t reasonForCall, void* L, char** chunk, size_t* size, realloc_t llrealloc, const char* chunkname) {
		switch (reasonForCall) {
		case MODULE_CALLBACK_INIT:
			clearCompiler();
			replacementScript = NULL;
			scriptToPrepend = NULL;
			p_printf = (printf_t)L;
			break;

		case MODULE_CALLBACK_LUA_LOAD:
			replaceLua(chunk, size, llrealloc, chunkname);
			break;

		case MODULE_CALLBACK_DEINIT:
			break;

		case MODULE_CALLBACK_COMMAND:
			handleCommand(*size, chunk);
			break;

		default:
			break;
		}
	}
}

