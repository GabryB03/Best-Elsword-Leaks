#pragma once


//The plugin callback function gets called with this reasonForCall
//when the plugin is first initialized.
//
//L          A pointer to printf. (Cast it to printf_t)
//chunk      Invalid
//size       Invalid
//llrealloc  Invalid
//chunkname  Invalid
#define MODULE_CALLBACK_INIT 0

//The plugin callback function gets called with this reasonForCall
//whenever the target program loads Lua code.
//
//Argument   Meaning
//
//L          The lua_State passed to lua_load
//chunk      A buffer containing the Lua code passed to lua_load
//size       The size of the Lua code buffer
//llrealloc  A pointer to realloc. This can be used to change the size of the Lua code buffer.
//chunkname  The name of the chunk being loaded.
//
//
//If a plugin wants to overwrite the Lua code being loaded, it may
//alter the lua code buffer that it gets through the "chunk" argument.
//In order to change the size of the lua code buffer, you can use
//the following code:
//
//	*size = new_chunk_size;
//	*chunk = (char*)llrealloc(*chunk, *size);
//
//It is important that you do NOT use your C library's regular realloc
//function. Doing so may corrupt the heap.
//Additionally, make sure to always update the "size" outarg accordingly.
//
//
//IMPORTANT ADVICE:
//
//To overwrite the buffer with different Lua code, it is best to use
//the OVERWRITE_LUALINKER_CHUNK_BUFFER macro.
#define MODULE_CALLBACK_LUA_LOAD 1

//The plugin callback function gets called with this reasonForCall
//when the plugin is unloaded.
//The callback should stop all functions/threads/hooks of the plugin
//and destroy any GUI windows the plugin may have created.
//
//No parameters other than reasonForCall will be valid.
#define MODULE_CALLBACK_DEINIT 2

//The plugin callback function gets called with this reasonForCall
//when the user enters a command in the LuaLinker command line that
//gets forwarded to the plugin. This allows the user to control
//plugins through the command line.
//
//Argument   Meaning
//
//L          Invalid
//chunk      An array of pointers to strings which represent the tokenized command. Similar to a C program's main function "argv" argument.
//size       The number of arguments passed in the "chunk" array. Similar to a C program's main function "argc" argument.
//llrealloc  Invalid
//chunkname  Invalid
#define MODULE_CALLBACK_COMMAND 3


typedef void* (__cdecl *realloc_t)(void* mem, size_t size);
typedef int (__cdecl *printf_t)(const char* format, ...);


//You must export a function called "plugin_callback" from your plugin DLL that has the prototype typedef'd below.
//reasonForCall: Reason for the callback function to be called.
//Depending on the call reason, the arguments to this function have different meaning.
//
//Example function definition for Visual C++:
//
//	extern "C" {
//		void __declspec(dllexport) __cdecl plugin_callback(uint8_t reasonForCall, void* L, char** chunk, size_t* size, realloc_t llrealloc, const char* chunkname) {
//			/* Implement me */
//		}
//	}
//
typedef void(__cdecl *llmodule_func_t)(uint8_t reasonForCall, void* L, char** chunk, size_t* size, realloc_t llrealloc, const char* chunkname);


//Use this macro to overwrite the lua code buffer in a
//MODULE_CALLBACK_LUA_LOAD callback if you want to replace the
//Lua code that the target program loads.
//
//Argument   Meaning
//
//chunk      The chunk argument passed to the plugin callback function
//size       The size argument passed to the plugin callback function
//llrealloc  The llrealloc argument passed to the plugin callback function
//newdata    The new Lua code to overwrite the lua code buffer with
//newsize    The size of the new Lua code to overwrite the lua code buffer with
#define OVERWRITE_LUALINKER_CHUNK_BUFFER(chunk, size, llrealloc, newdata, newsize) {\
	*size = newsize;\
	*chunk = (char*)llrealloc(*chunk, *size);\
	memcpy(*chunk, newdata, *size);\
}
