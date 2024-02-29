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

function CalculateLinearMoveSpeedValue(fSumValue, iUserLevel)
    return 20
end

function CalculateLinearMoveSpeedValue(fSumValue, iUserLevel)
    return 20
end

function CalculateFinalMoveSpeedCoefficient(fSumValue, iUserLevel)
    return 30
end

function CalculateFinalMoveSpeedPercent(fSumValue, iUserLevel)
    return 32
end

function CalculateIntermediateMoveSpeedValue(fSumValue, iUserLevel)
    return 20
end

function CalculateFinalJumpSpeedPercent(fSumValue, iUserLevel)
	return 1.2
end
function CalculateFinalAnimationSpeedPercent(fSumValue, iUserLevel)
	return 1.1
end
function CalculateFinalAnitEvadePercent(fSumValue, iUserLevel)
	return 1
end
function CalculateFinalHyperGageChargeSpeedPercent(fSumValue, iUserLevel)
	return 10
end

--This code must be execute before login to game, if you change something, you need to exit elsword and reset again

local oldfunc = CX2SkillTree.AddSkillTemplet_LUA
local function nullThat(tbl)
	if type(tbl) ~= "table" then return end
	for k, v in ipairs(tbl) do
		tbl[k] = 0
	end
end

CX2SkillTree.AddSkillTemplet_LUA = function(self, data)
	if data then
		nullThat(data.m_MPConsumption)  --All Skill will not need use MP (can see in skill Description)
						--MP using Random Mission cannot be fullfilled anymore
						-- Bug?? Add DP Skill will not restore any DP as no MP consume
		nullThat(data.m_SkillCoolTime)  --All Skill will not have Cooldown Time
		data.m_MPConsumption = {20,20,20,20,20,20,20,20,20,20,20,20} --All Skill use only 20MP (can change, prevent hack busting in party)+
									     --Can fullfill MP Using Random Mission
 									     --Bug? Add DP SKill only restore 3-5 DP

		data.m_eActiveSkillUseCondtion = 3  --Any Skill now can be used when airborne, attacked, knockdowned... even when screen warning in boss
						    --Use with Cooldown Hack, you can cancel animation of any skill, however some skills will not takes effect as animation didn't finish 
						    --Bug? Erbluhen Emotion's Alchimie Eid bug really hard on this, don't recommendeded, see for yourself	

		data.m_usCBConsumption = 0	--All for Canonball Hack, not work in PVE??? maybe PVP, not test
		data.m_CB_CONSUMPTION = 0
		data.CB_CONSUMPTION = 0
		data.m_SA_CHARGE_CANNONBALL = 4
	

		nullThat(data.SA_USE_DP_REL_AT_FORMATION_MODE) --Add No Longer use DP when awakened (work best on Diabolic Esper)
								--Bug?? Mastermind still consume DP when switching Dynamo Skill
								--Bug?? Mastermind still consume MP Dynamo Skills
		end
	return oldfunc(self, data)
end