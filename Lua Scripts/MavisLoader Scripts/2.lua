--{"Name": "SkillMod CD/MP = 0", "Type": "Universal", "Version": "1.0.0.0"}
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
		data.m_eActiveSkillUseCondtion = 3
		data.m_bShowSkillLevel = True
		-- nullThat(data.m_MPConsumption)
	end
	return oldfunc(self, data)
end