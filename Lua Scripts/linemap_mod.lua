local f = io.open("_derp.txt", "wb")

f:write("Before getmetatable\r\n")
f:flush()

local mt = getmetatable(g_pLineMap)


if not lm_oldindex then
	lm_oldindex = mt.__index
end

mt.__index = function(tbl, key)
	if key == "AddLine_LUA" then
		local func = lm_oldindex(tbl, key)

		return function(self, data)
			data.LINE_TYPE = LINE_TYPE.LT_BUNGEE
			data.TELEPORT_LINE = data.LINE_NUM + 1
			f:write("Line modified\r\n")
			f:flush()
			return func(self, data)
		end
	end

	return lm_oldindex(tbl, key)
end

f:write("__index overwritten\r\n")
f:flush()
