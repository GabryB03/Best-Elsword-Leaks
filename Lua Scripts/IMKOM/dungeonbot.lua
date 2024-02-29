local filename = ...
local autoLeaveAfterSeconds = 15
local autoLeaveAfterSecondsOnLastStage = 5
local curtainList = {}
local enableFallbackMode = true
local enableClearCondOverride = true
local dungeonTimeout = 350
local teleportOverride = {}
teleportOverride[("data035.kom/Dungeon_Altera_Secret_Hell.lua"):lower()] = {
	[2] = {[0] = 30, [2] = 18}
}
local behemothFix = {
	[1] = {[1] = 31}
}
teleportOverride[("data035.kom/Dungeon_Sander_Behimoss_Heart_Expert.lua"):lower()] = behemothFix
teleportOverride[("data035.kom/Dungeon_Sander_Behimoss_Heart_Hard.lua"):lower()] = behemothFix
teleportOverride[("data035.kom/Dungeon_Sander_Behimoss_Heart_Normal.lua"):lower()] = behemothFix
teleportOverride[("data035.kom/Dungeon_Besma_Secret_Hell.lua"):lower()] = {
	[1] = {[2] = 14}
}
local giveUpDungeon = false
local givenUpYet = false
local dungeonTimeoutCtr = 0
local maxStage = 0
local jumpStages = {}
local function modifySubStage(sub_stage, stageIdx, subStageIdx, stageList)
	if not curtainList[stageIdx] then curtainList[stageIdx] = {} end
	if maxStage < stageIdx then
		maxStage = stageIdx
	end
	--Install trigger
	sub_stage.TRIGGER_LIST = {
        TRIGGER0 = {
			ONE_TIME = FALSE,
			INTERVAL = 1,
			CONDITION_FUNC = "CF_BOT_TRIGGER0",
			REACT_FUNG = "RF_BOT_TRIGGER0"
        }
	}
	--Override clear condition
	local clearCond = sub_stage.CLEAR_COND0
	if clearCond and enableClearCondOverride then
		clearCond[1] = CLEAR_CONDITION.CC_KILL_ALL_ACTIVE_NPC
		print("Override clear condition")
	end
	--Teleport magic
	local curtain = sub_stage.CURTAIN_GROUP
	if type(curtain) ~= "table" then
		print("Could not get curtain list")
		return
	end
	local atStartNeeded = FALSE
	if sub_stage.GO_TYPE == GO_TYPE.GT_LEFT then
		print("Stage goes left! Inverting curtain direction!")
		atStartNeeded = TRUE
	end
	local curtainIdx = nil
	for k, v in ipairs(curtain) do
		print("Check curtain " .. tostring(k) .. ": " .. tostring(v.AT_START))
		if v.AT_START == atStartNeeded then
			curtainIdx = v.LINE_INDEX
			print("Got curtain")
		end
	end
	if not curtainIdx and curtain[1] and enableFallbackMode then
		curtainIdx = curtain[1].LINE_INDEX
		print("Could not get curtain, using fallback: " .. tostring(curtainIdx))
	end
	curtainList[stageIdx][subStageIdx] = curtainIdx
end
local function cfBot(pKTDXApp, pX2DungeonGame, pX2DungeonSubStage)
	return true
end
local restartTimer = 0
local solaceSlowKill = false
local function rfBot(pKTDXApp, pX2DungeonGame, pX2DungeonSubStage)
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
		print("Suicide")
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
	--print(stageIdx, subStageIdx, userUnit:GetLastTouchLineIndex())
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
	local tpOverrideTbl = teleportOverride[filename:lower()]
	if tpOverrideTbl then
		local tpOverrideStageTbl = tpOverrideTbl[stageIdx]
		if tpOverrideStageTbl then
			local teleportOverrideLine = tpOverrideStageTbl[subStageIdx]
			if teleportOverrideLine then
				teleportLine = teleportOverrideLine
				print("Manual teleport override: " .. tostring(teleportLine))
			end
		end
	end
	if teleportLine and (teleportLine ~= standOnLine) then
		print("Need to teleport to line " .. tostring(teleportLine) .. " (" .. tostring(stageIdx) .. " " .. tostring(subStageIdx) .. ")")
		local lineMap = pX2DungeonGame:GetLineMap()
		local newPos = lineMap:GetCenterPositionLineIndex(teleportLine)
		userUnit:SetPositionOnLine(newPos, teleportLine)
	end
	--print("On line: " .. tostring(standOnLine))
end
local giveUpFilenames = {
	"Hamel_Frozen_Water_Temple",
	"Velder_Bridge_Hope",
	"Hamel_Waterway",
	"Sander_Karuso_Village",
	"Sander_Santilus_Ship",
	--"Sander_Behimoss_Heart",
	"Sander_Dry_Sander"
}
local function selectDungeonCompatibilityModes(filename)
	if filename:lower():find("elysion_soless") then
		print("Disable clear condition override for solace dungeon")
		enableClearCondOverride = false
	end
	if filename:lower():find("velder_secret") then
		print("Disable clear condition override for velder secret dungeon")
		enableClearCondOverride = false
	end
	for k, dungeon in pairs(giveUpFilenames) do
		if filename:find(dungeon:lower()) then
			giveUpDungeon = true
			print("Dungeon is known buggy, giving up.")
		end
	end
end
local function bot_apply_lua(filename, func, fenv, bytecode)
	print("Apply bot function to: " .. filename)
	selectDungeonCompatibilityModes(filename:lower())
	func()
	if type(fenv.STAGE_LIST) ~= "table" then
		print("STAGE_LIST not a table")
		return
	else
		print("Sync global: STAGE_LIST")
	end
	for stage_name, stage in pairs(fenv.STAGE_LIST) do
		if (type(stage_name) == "string") and stage_name:find("^STAGE%d+$") then
			for sub_stage_name, sub_stage in pairs(stage) do
				if (type(sub_stage_name) == "string") and sub_stage_name:find("^SUB_STAGE%d+$") then
					print("Modifying " .. sub_stage_name .. " of " .. stage_name)
					local st = stage_name:gsub("STAGE", "")
					local subst = sub_stage_name:gsub("SUB_STAGE", "")
					modifySubStage(sub_stage, tonumber(st), tonumber(subst), fenv.STAGE_LIST)
				end
			end
		end
	end
	fenv.CF_BOT_TRIGGER0 = cfBot
	print("Sync global: CF_BOT_TRIGGER0")
	fenv.RF_BOT_TRIGGER0 = rfBot
	print("Sync global: RF_BOT_TRIGGER0")
	if MACRO_DLL then
		MACRO_DLL.watchdogReset()
	end
end
if filename:lower():find("data035.kom/dungeon_", 1, true) then
	return bot_apply_lua
end