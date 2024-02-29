--Execute before Elsword is fully laoded.
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
		data.m_MPConsumption = {0,0,0,0,0,0,0,0,0,0,0,0} --All Skill use only 20MP (can change, prevent hack busting in party)+
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