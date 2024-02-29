local f = io.open("_elresonance.txt", "wb")

local originalfunc = CX2EXPTable.AddElResonanceExpTable_LUA
CX2EXPTable.AddElResonanceExpTable_LUA = function(self, data)
	if not data then return end

	f:write(tostring(data.ER_LEVEL) .. " = " .. tostring(data.NEED_ER_EXP) .. "\r\n")
	f:flush()

	return originalfunc(self, data)
end

f:write("Dumper loaded\r\n")
f:flush()