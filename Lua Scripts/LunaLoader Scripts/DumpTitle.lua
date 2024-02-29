local f = io.open("_titles.txt", "wb")

local originalfunc = CX2TitleManager.AddTitleInfo_LUA
CX2TitleManager.AddTitleInfo_LUA = function(self, data)
	if not data then return end

	f:write(tostring(data.m_TitleName) .. " = " .. tostring(data.m_iTitleID) .. "\r\n")
	f:flush()

	return originalfunc(self, data)
end

f:write("Dumper loaded\r\n")
f:flush()