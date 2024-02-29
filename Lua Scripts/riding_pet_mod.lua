local originalfunc = CX2RidingPetManager.AddRidingPetTemplet

CX2RidingPetManager.AddRidingPetTemplet = function(self, data)
	if not data then return originalfunc(self, data) end

	data.STAMINA_INCREASE_RATE = 20
	data.STAMINA_RECOVERY_RATE = 1000


	local asi = data.ATTACK_SKILL_INFO

	if asi then
		for k, v in ipairs(asi) do
			v[5] = 0 --Skill MP consumption
			v[6] = 0.1 --Skill cooldown
		end
	end


	return originalfunc(self, data)
end