g_pGameEdit:AddCommandChange("\227\133\156", "n")
g_pGameEdit:AddCommandChange("\227\133\156\227\133\129", "na")
g_pGameEdit:AddCommandChange("\236\184\160", "cm")
g_pGameEdit:AddCommandChange("\227\133\161\227\133\151\227\133\148", "mhp")
g_pGameEdit:AddCommandChange("\227\133\151", "h")
g_pGameEdit:AddCommandChange("\227\133\160", "b")
g_pGameEdit:AddCommandChange("\235\167\136", "ak")
g_pGameEdit:AddCommandChange("\235\168\128", "ai")
g_pGameEdit:AddCommandChange("\227\132\185\227\133\138", "fc")
g_pGameEdit:AddCommandChange("\227\132\183", "e")
g_pGameEdit:AddCommandChange("\227\133\160\235\148\148", "bel")
g_pGameEdit:AddCommandChange("\227\133\163", "l")
g_pGameEdit:AddCommandChange("\227\132\180\227\133\133\227\133\129\227\133\142\227\132\183", "stage")
g_pGameEdit:AddCommandChange("\227\133\129\227\133\135", "ad")
g_pGameEdit:AddCommandChange("\227\133\163\227\133\148", "lp")
g_pGameEdit:AddCommandChange("\235\139\157", "sld")
g_pGameEdit:AddCommandChange("\227\133\149\227\133\149\227\133\149", "uuu")
g_pGameEdit:AddCommandChange("\227\133\138\227\132\177\227\133\129\235\133\184", "crash")
g_pGameEdit:AddCommandChange("\227\132\180\227\132\185", "sf")
g_pGameEdit:AddCommandChange("\227\133\143", "k")
g_pGameEdit:AddCommandChange("\227\133\138\227\132\180", "cs")
g_pGameEdit:AddCommandChange("\235\132\187", "spc")
g_pGameEdit:AddCommandChange("\237\142\152", "vp")
g_pGameEdit:AddCommandChange("\227\133\149\227\133\138", "uc")
g_pGameEdit:AddCommandChange("\236\184\160\227\133\148", "cmp")
g_pGameEdit:AddCommandChange("\227\133\133", "t")
g_pGameEdit:AddCommandChange("\227\133\142\235\132\164", "gsp")
g_pGameEdit:AddCommandChange("\227\133\129\227\132\180\227\133\138", "msc")
g_pGameEdit:AddCommandChange("\227\133\148\227\132\183\227\133\133", "pet")
g_pGameEdit:AddCommandChange("\227\133\148\227\133\129", "pa")
g_pGameEdit:AddCommandChange("\227\133\149\227\132\180\227\132\183\227\132\177\227\132\183\227\133\135", "usered")
g_pGameEdit:AddCommandChange("\235\134\176\227\133\148", "shop")
g_pGameEdit:AddCommandChange("\236\180\136\235\172\180\227\133\156\235\148\148", "channel")
g_pGameEdit:AddCommandChange("\227\133\151\235\145\144\227\133\145\227\132\177", "henir")
g_pGameEdit:AddCommandChange("\227\133\160\227\133\149\227\132\185\227\132\185", "buff")
g_pGameEdit:AddCommandChange("\235\147\156", "em")
g_pGameEdit:AddCommandChange("\227\133\136\235\132\164", "wsp")
g_pGameEdit:AddCommandChange("\227\133\138\227\132\180\227\133\135", "csd")
g_pGameEdit:AddCommandChange("\227\132\185\235\130\152", "fsk")
g_pGameEdit:AddCommandChange("\227\132\185\227\133\136\227\133\129\234\178\140", "fwarp")
g_pGameEdit:AddCommandChange("\227\133\135\235\173\143\227\132\183\227\132\177", "danger")
g_pGameEdit:AddCommandChange("\227\133\144\227\133\160\227\132\180", "obs")
g_pGameEdit:AddCommandChange("\227\133\144\227\133\160\227\132\181", "obsw")
g_pGameEdit:AddCommandChange("\227\133\144\227\133\160\227\132\180\227\133\135\235\148\148", "obsdel")
g_pGameEdit:AddCommandChange("\227\133\144\227\133\160\235\138\144\227\133\144\227\133\135\227\132\183", "obsmode")
g_pGameEdit:AddCommandChange("\236\160\132\236\167\129", "uc2")
g_pGameEdit:AddCommandChange("\236\138\164\237\130\172", "fsk")
g_pGameEdit:AddCommandChange("\236\138\164\237\130\172\236\180\136\234\184\176\237\153\148", "isk")
g_pGameEdit:AddCommandChange("\236\138\164\237\130\172\237\143\172\236\157\184\237\138\184", "sp")
g_pGameEdit:AddCommandChange("\236\178\180\235\160\165", "mhp")
g_pGameEdit:AddCommandChange("\234\179\181\236\167\128", "n")
g_pGameEdit:AddCommandChange("\235\143\136", "e")
g_pGameEdit:AddCommandChange("\235\157\188\236\157\184\235\167\181", "linemap")
g_pGameEdit:AddCommandChange("\227\133\129\227\132\185\227\133\135", "afd")
g_pGameEdit:AddCommandChange("\227\132\177\227\133\148\227\132\180", "rps")
g_pGameEdit:AddCommandChange("\235\157\188\236\157\180\235\148\169\236\138\164\237\133\140\235\175\184\235\132\136", "rps")
g_pGameEdit:AddCommandChange("\236\177\132\227\133\149\227\133\148\227\133\163\227\132\183", "couple")
g_pGameEdit:AddCommandChange("\236\157\180\237\142\153\237\138\184\235\161\156\234\183\184", "EffectLog")
g_pGameEdit:AddCommandChange("EFFECTLOG", "EffectLog")
g_pGameEdit:AddCommandChange("effectlog", "EffectLog")

-- Autokill
function CalculateExtraStatValue(fSumValue, iUserLevel)
    return -99999999
end

-- Skip Danger
CX2Game.ShowDangerAlarm_LUA = nil
CX2DungeonGame.ShowBossName_LUA = nil

-- Speed Hack
function CalculateLinearMoveSpeedValue(fSumValue, iUserLevel)
    return 20
end

-- Speed Hack
function CalculateLinearMoveSpeedValue(fSumValue, iUserLevel)
    return 20
end

-- Speed Hack
function CalculateFinalMoveSpeedCoefficient(fSumValue, iUserLevel)
    return 30
end

-- Speed Hack
function CalculateFinalMoveSpeedPercent(fSumValue, iUserLevel)
    return 32
end

-- Speed Hack
function CalculateIntermediateMoveSpeedValue(fSumValue, iUserLevel)
    return 20
end

-- Speed Hack
function CalculateFinalJumpSpeedPercent(fSumValue, iUserLevel)
	return 1.2
end

-- Speed Hack
function CalculateFinalAnimationSpeedPercent(fSumValue, iUserLevel)
	return 1.1
end

-- Speed Hack
function CalculateFinalAnitEvadePercent(fSumValue, iUserLevel)
	return 1
end

-- Speed Hack
function CalculateFinalHyperGageChargeSpeedPercent(fSumValue, iUserLevel)
	return 10
end

  -- Monster VAC
local BOT_LAST_POS = nil
local originalAddStartPos = CKTDGLineMap.AddStartPos
CKTDGLineMap.AddStartPos = function(self, num, pos, unkbool, unkint)

	-- Monster VAC
    if (not BOT_LAST_POS) or (num == 1) then
        BOT_LAST_POS = pos
    end

    return originalAddStartPos(self, num, BOT_LAST_POS, unkbool, unkint)
end

-- Godmode
function CalculateFinalAdditionalDefencePercent(fSumValue, iUserLevel)
	return 999999
end

-- Damage Hack, Iron Armor
function CalculateFinalAdditionalAttackValue(fSumValue, iUserLevel)
	return 50
end

-- Infinite Skills, Skills in air, no MP for skills
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
		nullThat(data.m_MPConsumption)
		nullThat(data.m_SkillCoolTime)
		data.m_eActiveSkillUseCondtion = 3
		data.m_usCBConsumption = 0
		data.m_CB_CONSUMPTION = 0
		data.CB_CONSUMPTION = 0
		data.m_SA_CHARGE_CANNONBALL = 4
		nullThat(data.SA_USE_DP_REL_AT_FORMATION_MODE)
		data.m_iRequireLearnSkillPoint = nil
		data.m_iRequireUpgradeSkillPoint = nil
		data.m_usFPGainCount = 0
		data.m_bShowSkillLevel = 20
		data.m_bBornSeale = 0

		end
	return oldfunc(self, data)
end


--Maps world file names (without extension) to World IDs.
local BOT_WORLD_ID_MAP = {}

local originalAddWorldData = CX2WorldManager.AddWorldData
CX2WorldManager.AddWorldData = function(self, data)
	local name = tostring(data.dataFileName):lower():gsub("%.lua", "")
	BOT_WORLD_ID_MAP[name] = data.worldID
	return originalAddWorldData(self, data)
end

-- Auto Teleport To The Next Sub-Stage
-- This is only a Beta of this addition.

--The currently active stage, or nil.
local BOT_CURRENT_STAGE_DATA = nil

--Searches the current stage data for the given world ID
--(and populates the BOT_CURRENT_STAGE_DATA variable with the corresponding stage data)
local function loadStageData(worldID)
	if STAGE_LIST == nil then
		BOT_CURRENT_STAGE_DATA = nil
		return
	end

	for k, v in pairs(STAGE_LIST) do
		if type(v) == "table" then
			if v.WORLD_ID == worldID then
				BOT_CURRENT_STAGE_DATA = v
			end
		end
	end

	local endLineSets = {}
	local startToEndMap = {}
	for k, v in pairs(BOT_CURRENT_STAGE_DATA) do
		if type(v) == "table" then
			if v.MAIN_LINE_SET then
				endLineSets[v.END_LINE_SET] = v.GO_TYPE or GO_TYPE.GT_RIGHT
				startToEndMap[v.MAIN_LINE_SET] = v.END_LINE_SET
			end
		end
	end

	BOT_CURRENT_STAGE_DATA.endLineSets = endLineSets
	BOT_CURRENT_STAGE_DATA.startToEndMap = startToEndMap
end


--Get the line data before actually loading lines
local function simulateLoadLineMap(filename)
	local original_g_pLineMap = g_pLineMap

	--Maps linesets to their lines
	local lineSetMap = {}

	g_pLineMap = {
		AddLine_LUA = function(self, data)
			if not lineSetMap[data.LINE_SET] then
				lineSetMap[data.LINE_SET] = {}
			end

			lineSetMap[data.LINE_SET][data.LINE_NUM] = data
		end
	}
	setmetatable(g_pLineMap, {
		__index = function(tbl, idx)
			return function() end
		end
	})

	IncludeLua(filename)
	g_pLineMap = original_g_pLineMap

	return lineSetMap
end


--Hook loading of world object data for getting the dungeon file name
local originalSetLineMap = CX2World.SetLineMap
CX2World.SetLineMap = function(self, name)
	local newname = name:lower():gsub("_linemap.lua", "")
	local worldID = BOT_WORLD_ID_MAP[newname]

	if worldID ~= nil then
		loadStageData(worldID)
		BOT_CURRENT_STAGE_DATA.lineSetMap = simulateLoadLineMap(name)
	end

	return originalSetLineMap(self, name)
end


--Returns a line from a given line set, or nil if there is no line.
local function getAnyLineFromLineSet(set)
	local line = nil
	for k, v in pairs(set) do
		if (line == nil) or (line.LINE_NUM > v.LINE_NUM) then
			line = v
		end
	end
	return line
end


--Hook loading of world lines.
local originalAddLine = CKTDGLineMap.AddLine_LUA
CKTDGLineMap.AddLine_LUA = function(self, data)
	if BOT_CURRENT_STAGE_DATA == nil then
		return originalAddLine(self, data)
	end

	local endSet = BOT_CURRENT_STAGE_DATA.endLineSets[data.LINE_SET]
	if endSet then
		if endSet == GO_TYPE.GT_RIGHT then
			data.SPEED = 35000
		else
			data.SPEED = -35000
		end
	else
		local targetLineSetNumber = BOT_CURRENT_STAGE_DATA.startToEndMap[data.LINE_SET]
		local targetLineSet = BOT_CURRENT_STAGE_DATA.lineSetMap[targetLineSetNumber]
		local targetLine = nil
		if targetLineSet ~= nil then
			targetLine = getAnyLineFromLineSet(targetLineSet)
		end

		if targetLine ~= nil then
			data.LINE_TYPE = LINE_TYPE.LT_BUNGEE
			data.TELEPORT_LINE = targetLine.LINE_NUM
		else
			data.LINE_TYPE = LINE_TYPE.LT_BUNGEE
			data.TELEPORT_LINE = data.LINE_NUM
		end
	end

	return originalAddLine(self, data)
end

while true do

  if g_pX2Game == nil then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
  end
  
  CX2Game.ShowDangerAlarm_LUA(false)
CX2DungeonGame.ShowBossName_LUA(false)
  
  _pX2Game:EnableAllNPCAI(0)
  g_pX2Game:KillAllNPC_LUA(true)

    if g_pX2Game == nil then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
  end
  local iNumOfNpc = g_pX2Game:GetNPCUnitListSize()
  for i = 0, iNumOfNpc - 1 do
    local pNpc = g_pX2Game:GetNPCUnit(i)
    if nil ~= pNpc then
      local npcHp = pNpc:GetNowHP_LUA()
      if npcHp > 0 then
        local setHp = 0
        pNpc:SetNowHP_LUA(setHp)
      end
    end
  end

  local checkOnOff = 0
  if g_pX2Game == nil then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
  end
  local pUnit = g_pX2Game:GetMyUnit()
  if pUnit == nil then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\236\156\160\235\139\155\236\157\180 \236\151\134\236\138\181\235\139\136\235\139\164.")
  end
  local check = false
  if checkOnOff == 0 then
    check = true
  elseif checkOnOff == 1 then
    check = false
  else
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "0,1\236\157\132 \236\158\133\235\160\165\237\149\152\236\132\184\236\154\148.")
  end
  pUnit:SetInvincible_Cheat(check)

end