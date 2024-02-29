local f = io.open("_skill.txt", "wb")

local originalfunc = CX2SkillTree.AddSkillTemplet_LUA
CX2SkillTree.AddSkillTemplet_LUA = function(self, data)
	if not data then return end

	f:write(tostring(data.m_wstrName) .. " = " .. tostring(data.m_eID) .. "\r\n")
	f:flush()

	return originalfunc(self, data)
end

f:write("Dumper loaded\r\n")
f:flush()