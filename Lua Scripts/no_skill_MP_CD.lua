local oldfunc = CX2SkillTree.AddSkillTemplet_LUA

local function nullThat(tbl)
	if type(tbl) ~= "table" then return end
	for k, v in ipairs(tbl) do
		tbl[k] = 0
	end
end

CX2SkillTree.AddSkillTemplet_LUA = function(self, data)
	if data then
		nullThat(data.m_SkillCoolTime)
		nullThat(data.m_MPConsumption)
	end
	return oldfunc(self, data)
end
