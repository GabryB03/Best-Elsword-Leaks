--{ "Name":"SolaceBot", "Type":"Solace Dungeon", "Version": "1.0.0.0b" }
-- Coded by Ferrums
local f = io.open("_botdebug.txt", "wb")

-- Functions
local stage = "ELYSION_DIA_COMMON_FRAMEMOVE"
local stage_special = "ELYSION_S_2STAGE_HERBAON_COMMON_FRAME_MOVE_FUNC"
local boss_1 = "CF_ELYSION_S_CIRCLE_OBJECT_FIRE_KEYCODE_21"
local boss_2 = "ELYSION_S_MAYA_COMMON_FRAME_FUNC"
local solace = "CF_ELYSION_SOLESS_WAIT"

-- Kill
local killall = function(pKTDXApp, pX2DungeonGame, pX2GUNPC)
local nUnitListSize = pX2DungeonGame:GetNPCUnitListSize()
        for i = 0, nUnitListSize - 1 do
            local pUnit = pX2DungeonGame:GetNPCUnit(i)
                if pUnit then
                    pUnit:SetNowHP(0)
                end
        end
end

local killsolace = function(pKTDXApp, pX2DungeonGame, pX2GUNPC)
local pSolace = pX2DungeonGame:GetNPCUnitByType(NPC_UNIT_ID.NUI_ELYSION_SOLESS)
    if pSolace then
        solaceSlowKill = true
        pSolace:SetNowHP(pSolace:GetNowHP() - pSolace:GetMaxHP() / 50)
        f:write("Solace found!\r\n")
        f:flush()
    end
end

-- Replaceing
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

-- Override
_G[stage] = nil
FUNC_REPLACE_TABLE[stage] = killall
_G[stage_special] = nil
FUNC_REPLACE_TABLE[stage_special] = killall
_G[boss_1] = nil
FUNC_REPLACE_TABLE[boss_1] = killall
_G[boss_2] = nil
FUNC_REPLACE_TABLE[boss_2] = killall
_G[solace] = nil
FUNC_REPLACE_TABLE[solace] = killsolace
