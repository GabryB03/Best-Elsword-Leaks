--{"Name": "SocketMod", "Type": "Dungeon", "Version": "1.0.0.0"}
function CalculateFinalMoveSpeedPercent(fSumValue, iUserLevel)
	return 0.26
end
function CalculateFinalJumpSpeedPercent(fSumValue, iUserLevel)
	return 0.26
end
function CalculateFinalAnimationSpeedPercent(fSumValue, iUserLevel)
	return 0.26
end
function CalculateFinalHyperGageChargeSpeedPercent(fSumValue, iUserLevel)
	return 0.5
end
function CalculateFinalAdditionalDefencePercent(fSumValue, iUserLevel)
	return 0.6
end
function CalculateFinalAdditionalAttackValue(fSumValue, iUserLevel)
	return	3
end


local NEW_COOLDOWN = 0.7
local NEW_MANA = 0.7




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
