
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

-- Solace Bypass
-- AI Functions
local s1 = "ELYSION_DIA_COMMON_FRAMEMOVE"
local s2 = "CF_ELYSION_S_CIRCLE_OBJECT_FIRE_KEYCODE_21"
local s3 = "ELYSION_S_DISION_OBJECT_START_START_FUNC"

-- Kill NPCs
local killall = function(pKTDXApp, pX2DungeonGame, pX2GUNPC)
local nUnitListSize = pX2DungeonGame:GetNPCUnitListSize()
		for i = 0, nUnitListSize - 1 do
			local pUnit = pX2DungeonGame:GetNPCUnit(i)
			if pUnit then
				pUnit:SetNowHP(0)
			end
		end
end

-- Replace
if not getmetatable(_G) then
  FUNC_REPLACE_TABLE = {}

  local mt = {
    __index = FUNC_REPLACE_TABLE,
    __newindex = function(tbl, key, value)
      if FUNC_REPLACE_TABLE[key] then return end
      rawset(tbl, key, value)
    end
  }
  setmetatable(_G, mt)
end

-- Override AI functions
_G[s1] = nil
FUNC_REPLACE_TABLE[s1] = killall
_G[s2] = nil
FUNC_REPLACE_TABLE[s2] = killall
_G[s3] = nil
FUNC_REPLACE_TABLE[s2] = killall

-- Autokill
function CalculateExtraStatValue(fSumValue, iUserLevel)
    return -99999999
end

-- Skip Danger
CX2Game.ShowDangerAlarm_LUA = nil
CX2DungeonGame.ShowBossName_LUA = nil

-- Skip Start

-- Skip Clear

-- Skip Result

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

-- Dungeon Bypass
local originalfunc = CX2DungeonManager.AddDungeonData

CX2DungeonManager.AddDungeonData = function(self, data)

	data.requireDungeonID = 0
	data.m_MinLevel = 0
	data.m_MaxLevel = 99
	data.m_RequireItemLevel = 0
	data.requireSpirit = 0
	data.m_NPCLevel = 1000000
	data.EXTRA_REQUIRE_DUNGEON_ID = nil
	data.IS_HELL_MODE = nil
	data.m_bArcadeMode = nil
	data.m_bSwitchingWithEventInfo = nil
	data.m_bLevelEqualized = nil
	data.m_bDamageEqualized = nil
	data.m_bEventDungeon = nil
	data.m_usFixedMembers = nil
	data.m_iLimitedPlayTimes = nil
	data.requireItemID = nil
	data.requireItemCount = nil
	data.MinAdequateMemberCount = 1
	data.MaxAdequateMemberCount = 30
    data.m_bForbidEnterDungeon = nil
	data.FixMaximumDifficulty = nil
	data.m_bSwitchingWithEventInfo = nil
	data.m_fTimeLimit = nil
	data.difficulty = 0

	return originalfunc(self, data)

end

-- Quests Modifier
local funcquest = CX2QuestManager.AddQuestTemplet_LUA

CX2QuestManager.AddQuestTemplet_LUA = function(self, data)

  data.m_vecSubQuest = {
    10000083
  },
  data.m_iFairLevel = 15,
  data.m_bIsPcBang = 0,
  data.m_wstrStartScene = "10000000_01",
  data.m_eEndNPCID = 10050,
  data.m_bIsTimeEvent = 0,
  data.Reward = {
    data.m_bEnable = 1,
    data.m_iSP = 0,
    data.m_vecItem = {
      {
        data.m_sSocketOption = 0,
        data.m_iPeriod = 0,
        data.m_iItemID = 100283800,
        data.m_iQuantity = 580
      }
    }
    data.m_eChangeUnitClass = 0,
    data.m_iBuff = 0,
    data.m_iEXP = 120000000,
    data.m_iED = 1000000000
  }
  SelectReward = {
    data.m_iSelectionCount = 0
  }
  data.m_iFairDungeonID = 0,
  data.m_vecSubQuest_Group = {
    {
      10000083
    }
  },
  data.m_eStartNPCID = 10050,
  data.m_bRepeat = 9999,
  data.m_wstrMainText = "Complete 1 dungeon around your level.",
  data.m_iAfterQuestID = {
    0
  },
  data.m_eRepeatType = 2,
  data.m_iRandomGroupID = 0,
  data.m_eQuestType = 1,
  data.m_wstrDissClearText = "",
  data.m_wstrEndScene = "8960_02",
  QuestCondition = {
    data.m_eUnitType = 0,
    data.m_iLevel = 15,
    data.m_iEnableDungeon = {

    }
    data.m_iEnableVillage = {
      0
    }
    data.m_vecBeforeQuestID = {

    }
    data.m_eUnitClass = {
      0
    }
    data.m_iLimitLevel = 25,
    data.m_iConditionItemID = 0,
    data.m_iEnableField = {

    }
    data.m_iConditionItemNum = 0
  },
  data.m_wstrThanksText = "",
  data.m_fRandomRate = 0
    return funcquest(self, data)

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