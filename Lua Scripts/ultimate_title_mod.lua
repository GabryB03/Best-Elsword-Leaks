--MOD SETTINGS

local STATS = {
	m_IncreaseHP = 0.5,
	m_fAdditionalDefenceValue = 0.4,

	RESIST_ENCHANT = {
		BLAZE = 100,
		WATER = 100,
		NATURE = 100,
		WIND = 100,
		LIGHT = 100,
		DARK = 100
	},
}
local ADD_PHYSICAL_DEFENSE_LEVEL = 5
local ADD_MAGICAL_DEFENSE_LEVEL = 5

local ADDITIONAL_EFFECT_IDS = {
	12122, --10% more MP
}

local TITLE_ID_TO_MODIFY = 10210




--BEGIN MOD CODE (do not change)

local function addToTable(dst, src)
	local i = 0
	for k, v in ipairs(dst) do
		i = k
	end
	for k, v in ipairs(src) do
		dst[k + i] = v
	end
end

local function getStatAddLvlEffectData(level, base)
	if (level < 0.5) or (level > 10.25) then return {} end
	return {math.floor(base + level * 4)}
end



local function modstats(data)
	if not data then return end
	if data.m_iTitleID ~= TITLE_ID_TO_MODIFY then return end

	local ndata = {
		ID = 13371350,
		TYPE = SOCKET_DATA_TYPE.SDT_WEAPON_NORMAL,
		STAT = {},
		m_SetMonsterIDDamageReduced = "Group 0",
		m_SkillLevelUpID = "Group 0",
		m_setMonsterIDForDamageUp = "Group 0",
		m_setMonsterIDForEvade = "Group 0"
	}

	for k, v in pairs(STATS) do
		ndata[k] = v
	end

	g_pCX2SocketItem:AddSocketData_LUA(ndata)

	data.SOCKET_OPTION = {13371350}
	addToTable(data.SOCKET_OPTION, getStatAddLvlEffectData(ADD_PHYSICAL_DEFENSE_LEVEL, 61288))
	addToTable(data.SOCKET_OPTION, getStatAddLvlEffectData(ADD_MAGICAL_DEFENSE_LEVEL, 61328))
	addToTable(data.SOCKET_OPTION, ADDITIONAL_EFFECT_IDS)
end


local oldfunc = CX2TitleManager.AddTitleInfo_LUA
CX2TitleManager.AddTitleInfo_LUA = function(self, data)
	modstats(data)
	return oldfunc(self, data)
end
