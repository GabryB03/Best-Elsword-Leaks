--Spawnscript without dropping, for LunaLoader.
--Example dropping UNITs:
--NUI_FOX_BOX_TREASURE_EVENT
--NUI_PPORU_WILLIAM_SANTA
--NUI_ELSION_CHEST
--NUI_GOLDEN_CHEST_FD
--NUI_STONE_TREASURE_BOX
--NUI_SPLENDID_TREASURE_BOX
--NUI_SHINING_TREASURE_BOX
local eNPCID = NPC_UNIT_ID.NUI_SHINING_TREASURE_BOX --UNIT
local iNPCLevel = 99 --LVL
local iNPCCount = 10

function CF_STAGE0_SUB0_TRIGGER1(pKTDXApp, pX2DungeonGame, pX2DungeonSubStage)
 return true
end

function RF_STAGE0_SUB0_TRIGGER1(pKTDXApp, pX2DungeonGame, pX2DungeonSubStage)
 local existingNPCs = pX2DungeonGame:LiveNPCNumType_LUA(eNPCID)

 if existingNPCs > 0 then
  pX2DungeonGame:KillNPC(eNPCID, existingNPCs)
 else
  local spawnPos = pX2DungeonGame:GetEmptyStartPos()
  for i = 1, iNPCCount do
   pX2DungeonGame:PushCreateNPCReq_Lua(eNPCID, iNPCLevel, false, spawnPos, false, 0, false, 0)
  end
  pX2DungeonGame:FlushCreateNPCReq()
 end
end