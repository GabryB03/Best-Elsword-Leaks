local oldfunc = CX2SkillTree.AddSkillTemplet_LUA

local function nullThat(tbl)
	if type(tbl) ~= "table" then return end
	for k, v in ipairs(tbl) do
		tbl[k] = 0
	end
end

CX2SkillTree.AddSkillTemplet_LUA = function(self, data)
	if data then
		nullThat(data.SA_USE_DP_REL_AT_FORMATION_MODE)
	end
	return oldfunc(self, data)
end
