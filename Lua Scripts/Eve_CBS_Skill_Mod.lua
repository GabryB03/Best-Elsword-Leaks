local oldfunc = CX2SkillTree.AddSkillTemplet_LUA


CX2SkillTree.AddSkillTemplet_LUA = function(self, data)

	if data then
			if data.m_eID == 5204 then
					data.SA_CHARGING_TIME = {
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0
					}
			end

			if data.m_eID == 5204 then
						data.PROJECTILE_SIZE = {
							20,
							20,
							20,
							20,
							20,
							20,
							20,
							20,
							20,
							20,
							20,
							20,
							20,
							20,
							20,
							20,
							20,
							20,
							20,
							20,
							20,
							20,
							20,
							20,
							20,
							20,
							20,
							20,
							20,
							20
					}
			end

			if data.m_eID == 5204 then
						data.SA_PROJECTILE_PIERCING = {
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000
					}
			end

			if data.m_eID == 5023 then
						data.SA_RANGE_REL = {
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000
					}
			end


			if data.m_eID == 5019 then
						data.SA_SCOPE_ABS = {
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000
					}
			end

			if data.m_eID == 5019 then
						data.SA_SCOPE_ABS_HYPER = {
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000,
							200000
					}
			end

			if data.m_eID == 5022 then
						data.SA_EFFECTIVE_TIME = {
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000
					}
			end

			if data.m_eID == 5221 then
						data.SA_PROJECTILE_SIZE = {
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000
					}
			end

			if data.m_eID == 5221 then
					data.SA_CHARGING_TIME = {
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0,
							0
					}
			end
			if data.m_eID == 5221 then
						data.SA_PROJECTILE_PIERCING = {
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000
					}
			end
			if data._eID == 5413 then
						data.SA_EFFECTIVE_TIME_HYPER = {
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000,
							2000
					}
			end
	end
	return oldfunc(self, data)
end
