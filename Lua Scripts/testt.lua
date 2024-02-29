local curtainList = {}

local enableFallbackMode = true
local enableClearCondOverride = true
local dungeonTimeout = 350

local teleportOverride = {}

local behemothFix = {
	[1] = {[1] = 31}
}

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
end