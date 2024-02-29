local oldfunc = CX2SkillTree.AddSkillTemplet_LUA


CX2SkillTree.AddSkillTemplet_LUA = function(self, data)
			if data then
				if data.m_eID == 2009 then
						data.SA_PROJECTILE_FIRE_COUNT = {

								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100
						}
				end

				if data.m_eID == 2008 then
						data.SA_PROJECTILE_FIRE_COUNT = {

								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100
						}
				end

				if data.m_eID == 2005 then
						data.SA_PROJECTILE_FIRE_COUNT = {

								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100,
								100
						}
				end

			end

	return oldfunc(self, data)

	end
