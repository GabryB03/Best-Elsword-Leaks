--local luacode = "<chunk>" is prepended to this script by the executor plugin
local ld = loadstring or load --Lua5.1 / Lua5.2
local f = ld("\000" .. luacode) --Prepend zero so executor won't intercept again
if not f then
	f = ld(luacode) --For LuaTinker, might cause hang
end
if not f then
	return
end
return f(...)