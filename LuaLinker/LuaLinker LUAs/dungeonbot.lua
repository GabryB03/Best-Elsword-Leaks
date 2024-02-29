local ffi = require "ffi"

--Load macro DLL functions
if MACRO_DLL == nil then
	ffi.cdef([[
	void __cdecl setMacroKeypress(int keypressIndex, int startFrame, int endFrame, int keyIndex);
	void __cdecl setMacroKeytype(int keypressIndex, int startFrame, int endFrame, int keyIndex);
	void __cdecl clearMacroKeypresses();
	void __cdecl watchdogReset();
	void __cdecl console_print(const char* string);
	]])

	MACRO_DLL = ffi.load("dinput8.dll")
	if MACRO_DLL then
		local concat
		concat = function(arg1, arg2, ...)
			arg1 = tostring(arg1)
			if arg2 == nil then return arg1 end
			return arg1 .. " " .. concat(arg2, ...)
		end
		print = function(...)
			MACRO_DLL.console_print(concat(...))
		end
		
		print("Loaded keyboard macro DLL into Lua state")
	else
		print("Could not load keyboard macro DLL")
		MACRO_DLL = false
	end
end


local function bot(bytecode, bytecodefn)
	
	local teleportOverride = {}
	
	local function tpOverride(wi, data)
		teleportOverride[wi or false] = data
	end
	
	local dungeonsToGiveUp = {}
	
	local function giveUpIn(wi)
		if wi then dungeonsToGiveUp[wi] = true end
	end
	
	
	--BEGIN BOT CONFIGURATION
	
	local enableFallbackMode = true
	local enableClearCondOverride = true
	local dungeonTimeout = 350
	
	local suicideInsteadOfDungeonFinish = true
	local dryRun = false
	local shortenLines = true
	
	local hammerOnXCount = 200
	local hammerOnXInterval = 50
	
	tpOverride(WORLD_ID.WI_ALTERA_SECRET_STAGE1, {
		[2] = {[0] = 30, [2] = 18}
	})

	tpOverride(WORLD_ID.WI_SANDER_BEHIMOSS_HEART_STAGE0, {
		[1] = {[1] = 31}
	})

	tpOverride(WORLD_ID.WI_BESMA_HELL_STAGE1, {
		[1] = {[2] = 14}
	})
	
	--Suicide in the following dungeons:
	giveUpIn(WORLD_ID.WI_HAMEL_FROZEN_WATER_TEMPLE_STAGE1)
	giveUpIn(WORLD_ID.WI_VELDER_BRIDGE_HOPE_STAGE1)
	giveUpIn(WORLD_ID.WI_HAMEL_WATERWAY_STAGE1)
	giveUpIn(WORLD_ID.WI_SANDER_KARUSO_VILLAGE_STAGE0)
	giveUpIn(WORLD_ID.WI_SANDER_SANTILUS_SHIP_STAGE0)
	giveUpIn(WORLD_ID.WI_SANDER_DRY_SANDER_STAGE0)
	
	--END BOT CONFIGURATION
	
	
	local worldId = false
	local curtainList = {}
	
	--local restartTimer = 0
	local solaceSlowKill = false
	
	local giveUpDungeon = false
	local givenUpYet = false
	local dungeonTimeoutCtr = 0

	local maxStage = 0
	--local jumpStages = {}
	
	local suicideStages = {}

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
		if clearCond then
			local nextStage0 = clearCond.NEXT_STAGE0
			local suicideInThisStage = false
			if nextStage0 then
				if nextStage0[1] == CLEAR_TYPE.CT_GAME then
					--Never finish dungeons, suicide just after the last stage
					suicideInThisStage = true
				end
			end
			if enableClearCondOverride then
				clearCond[1] = CLEAR_CONDITION.CC_KILL_ALL_ACTIVE_NPC
				print("Override clear condition")
			end
			if suicideInThisStage and suicideInsteadOfDungeonFinish then
				sub_stage.CLEAR_COND0 = nil
				suicideStages[stageIdx] = true
				print("Will die in this stage in order to not finish the dungeon")
			end
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
	
	
	local function hammerOnX()
		if MACRO_DLL then
			MACRO_DLL.clearMacroKeypresses()
			if hammerOnXCount == 0 then return end
			for i = 1, hammerOnXCount do
				local startTime = hammerOnXInterval * 2 * i
				MACRO_DLL.setMacroKeypress(i, startTime, startTime + hammerOnXInterval, 0x2D) --x
			end
		end
	end
	
	local function rfBot(pKTDXApp, pX2DungeonGame, pX2DungeonSubStage)
		local userUnit = pX2DungeonGame:GetMyUnit()
		userUnit:TransformScale_LUA(0.01, 9999)
		userUnit:SetForceCanPass(9999)
		userUnit:SetForceInvincible(100)
		--userUnit:SetUnitWidth(1000)
		
		--State info
		local pos = userUnit:GetLandPosition_LUA()
		local stageIdx = pX2DungeonGame:GetNowStageIndex()
		local subStageIdx = pX2DungeonGame:GetNowSubStageIndex()

		--print(stageIdx, subStageIdx, userUnit:GetLastTouchLineIndex())
		
		
		--Dungeon timeout
		dungeonTimeoutCtr = dungeonTimeoutCtr + 1
		if dungeonTimeoutCtr > dungeonTimeout then
			giveUpDungeon = true
		end
		
		
		--Suicide
		if not givenUpYet then
			if giveUpDungeon or suicideStages[stageIdx] then
				userUnit:SetNowHP(0)
				givenUpYet = true
				hammerOnX()
				print("Suicide")
				return
			end
		else
			return
		end
		
		userUnit:SetNowHP(userUnit:GetMaxHP())
		
		if dryRun then return end
		
		
		--Teleport
		local teleportLine = curtainList[stageIdx][subStageIdx]
		local standOnLine = userUnit:GetLastTouchLineIndex()

		local tpOverrideTbl = teleportOverride[worldId]
		if tpOverrideTbl then
			local tpOverrideStageTbl = tpOverrideTbl[stageIdx]
			if tpOverrideStageTbl then
				local teleportOverrideLine = tpOverrideStageTbl[subStageIdx]
				if teleportOverrideLine then
					teleportLine = teleportOverrideLine
					--print("Manual teleport override: " .. tostring(teleportLine))
				end
			end
		end

		if teleportLine and (teleportLine ~= standOnLine) and not itemPos then
			print("Need to teleport to line " .. tostring(teleportLine) .. " (" .. tostring(stageIdx) .. " " .. tostring(subStageIdx) .. ")")
			local lineMap = pX2DungeonGame:GetLineMap()
			local newPos = lineMap:GetCenterPositionLineIndex(teleportLine)
			userUnit:SetPositionOnLine(newPos, teleportLine)
			pos = newPos
		end

		--print("On line: " .. tostring(standOnLine))
		
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
					pUnit:SetPosition(pos)
					pUnit:TransformScale_LUA(0.01, 9999)
					pUnit:SetNowHP(0)
				end
			end
		end
		



	end
	
	
	local function selectDungeonCompatibilityModes(wi)
		if dungeonsToGiveUp[wi] then
			giveUpDungeon = true
			print("Dungeon is known buggy, giving up.")
		end
		
		if (wi == WORLD_ID.WI_SOLESS_STAGE0) or (wi == WORLD_ID.WI_VELDER_SECRET_STAGE1) then
			enableClearCondOverride = false
			print("Disable clear condition override")
		end
	end


	local function bot_apply_lua(func, fenv, bytecode)
		print("Apply bot function")
		func()

		if type(fenv.STAGE_LIST) ~= "table" then
			print("STAGE_LIST not a table")
			return
		end

		for stage_name, stage in pairs(fenv.STAGE_LIST) do
			if (type(stage_name) == "string") and stage_name:find("^STAGE%d+$") then
				if stage_name == "STAGE0" then
					worldId = stage.WORLD_ID or false
					print("World id: " .. tostring(worldId))
					selectDungeonCompatibilityModes(worldId)
				end
				
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
		fenv.RF_BOT_TRIGGER0 = rfBot

		if MACRO_DLL then
			MACRO_DLL.watchdogReset()
		end
	end
	
	local function syncGlobals(newenv)
		for k, v in pairs(newenv) do
			if k ~= "_G" then
				print("Sync global: " .. tostring(k))
				_G[k] = v
			end
		end
	end
	
	if bytecode:find("STAGE_LIST") and bytecode:find("SUB_STAGE0") then
		print("Stage load!")
		local newenv = {}
		newenv._G = newenv
		setmetatable(newenv, {__index = _G})
		setfenv(bytecodefn, newenv)
		bot_apply_lua(bytecodefn, newenv, bytecode)
		syncGlobals(newenv)
		return true
	end
	
	if bytecode:find("g_pStatic_Party_Member_Result_State") then
		--print("Ending screen!")
		if MACRO_DLL then
			--MACRO_DLL.clearMacroKeypresses()
			--MACRO_DLL.setMacroKeypress(0, 50, 100, 0x42)
			--MACRO_DLL.setMacroKeypress(1, 150, 200, 0x1C)
			--print("Executing restart macro")
		end
	end
	
	if bytecode:find("g_pLineMap") and bytecode:find("AddLine_LUA") and bytecode:find("AddStartPos") and shortenLines then
		print("Linemap load!")
		local newLineMap = {
			AddLine_LUA = function(self, line)
				local sp = line.START_POS
				local ep = line.END_POS
				if sp and ep then
					ep.x = sp.x + 10
					ep.y = sp.y
					ep.z = sp.z
				end
				line.BEFORE_LINE = -1
				line.NEXT_LINE = -1
				return g_pLineMap:AddLine_LUA(line)
			end
		}
		local meta = {
			__index = function(tbl, key)
				return function(self, ...)
					return g_pLineMap[key](g_pLineMap, ...)
				end
			end
		}
		setmetatable(newLineMap, meta)
		local newenv = {
			g_pLineMap = newLineMap
		}
		newenv._G = newenv
		setmetatable(newenv, {__index = _G})
		setfenv(bytecodefn, newenv)
		bytecodefn()
		newenv.g_pLineMap = nil
		syncGlobals(newenv)
		return true
	end
end

if not luacode then return end

local ld = loadstring or load --Lua5.1 / Lua5.2
local f = ld("\000" .. luacode) --Prepend zero so executor won't intercept again
if not f then
	f = ld(luacode) --For LuaTinker, might cause hang
end
if not f then
	return
end

if bot(luacode, f) then
	return
end

return f(...)




