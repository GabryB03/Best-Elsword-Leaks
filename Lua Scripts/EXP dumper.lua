local f = io.open("_exp.txt", "wb")

local originalfunc = CX2EXPTable.AddExpTable_LUA
CX2EXPTable.AddExpTable_LUA = function(self, data)
	if not data then return end

	f:write(tostring(data.LEVEL) .. " = " .. tostring(data.NEED_EXP) .. "\r\n")
	f:flush()

	return originalfunc(self, data)
end

f:write("Dumper loaded\r\n")
f:flush()