local NEW_COOLDOWN = 0.8
local NEW_MANA = 0.8




local oldfunc = CX2SkillTree.AddSkillTemplet_LUA

local function changeTblValues(tbl, change)
	if type(tbl) ~= "table" then return end
	for k, v in ipairs(tbl) do
		tbl[k] = tbl[k] * change
	end
end

CX2SkillTree.AddSkillTemplet_LUA = function(self, data)
	if data then
		changeTblValues(data.m_SkillCoolTime, NEW_COOLDOWN)
		changeTblValues(data.m_MPConsumption, NEW_MANA)
	end
	return oldfunc(self, data)
end
