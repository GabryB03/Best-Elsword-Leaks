local f = io.open("_quest.txt", "wb")

local originalfunc = CX2QuestManager.AddQuestTemplet_LUA
CX2QuestManager.AddQuestTemplet_LUA = function(self, data)
	if not data then return end

	f:write(tostring(data.m_wstrTitle) .. " = " .. tostring(data.m_iID) .. "\r\n")
	f:flush()

	return originalfunc(self, data)
end

f:write("Dumper loaded\r\n")
f:flush()