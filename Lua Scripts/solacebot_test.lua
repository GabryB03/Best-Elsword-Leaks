-- Coded by Ferrums (UNFINISHED VERSION)
-- AI Functions
local s1 = "ELYSION_DIA_COMMON_FRAMEMOVE"
local s2 = "CF_ELYSION_S_CIRCLE_OBJECT_FIRE_KEYCODE_21"
local s3 = "ELYSION_S_DISION_OBJECT_START_START_FUNC"

-- Kill NPCs
local killall = function(pKTDXApp, pX2DungeonGame, pX2GUNPC)
local giveUpDungeon = false
local givenUpYet = false
local dungeonTimeoutCtr = 0

local maxStage = 0
local jumpStages = {}
local giveUpDungeon = false
local givenUpYet = false
local dungeonTimeoutCtr = 0

local maxStage = 0
local jumpStages = {}
local curtainList = {}

local enableFallbackMode = true
local enableClearCondOverride = true
local dungeonTimeout = 350

	local userUnit = pX2DungeonGame:GetMyUnit()
	userUnit:TransformScale_LUA(0.1, 9999)
	userUnit:SetForceCanPass(9999)

	dungeonTimeoutCtr = dungeonTimeoutCtr + 1
	if dungeonTimeoutCtr > dungeonTimeout then
		giveUpDungeon = true
	end

	--Suicide
	if giveUpDungeon and not givenUpYet then
		userUnit:SetNowHP(0)
		givenUpYet = true
		return
	else
		userUnit:SetNowHP(userUnit:GetMaxHP())
	end

	if givenUpYet then
		return
	end

	--State info
	local pos = userUnit:GetLandPosition_LUA()
	local stageIdx = pX2DungeonGame:GetNowStageIndex()
	local subStageIdx = pX2DungeonGame:GetNowSubStageIndex()
	
	--Kill NPCs
	local pSolace = pX2DungeonGame:GetNPCUnitByType(NPC_UNIT_ID.NUI_ELYSION_SOLESS)
	if pSolace then
		print("Solace found!")
		solaceSlowKill = true
		pSolace:SetNowHP(pSolace:GetNowHP() - pSolace:GetMaxHP() / 50)
	end

	if not solaceSlowKill then
		local nUnitListSize = pX2DungeonGame:GetNPCUnitListSize()
		for i = 0, nUnitListSize - 1 do
			local pUnit = pX2DungeonGame:GetNPCUnit(i)
			if pUnit then
				pUnit:SetNowHP(0)
			end
		end
	end
	
	--Teleport
	local teleportLine = curtainList[stageIdx][subStageIdx]
	local standOnLine = userUnit:GetLastTouchLineIndex()
	
	if teleportLine and (teleportLine ~= standOnLine) then
		local lineMap = pX2DungeonGame:GetLineMap()
		local newPos = lineMap:GetCenterPositionLineIndex(teleportLine)
		userUnit:SetPositionOnLine(newPos, teleportLine)
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
