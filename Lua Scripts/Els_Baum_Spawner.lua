local eNPCID = NPC_UNIT_ID.NUI_PVP_HERO_AMELIA
local iNPCLevel = 1
local iNPCCount = 3

local funcname = "BENDERS_NORMAL_DYING_FRAME_FUNC"
local newfunc = function(pKTDXApp, pX2Game, pX2GUNPC)
  iNPCCount = iNPCCount - 1
  if iNPCCount < 0 then return end
  local vPos = pX2GUNPC:GetPos()
  pX2Game:CreateNPCReq_LUA(eNPCID, iNPCLevel, false, vPos, false, 0, false)
end


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


_G[funcname] = nil
FUNC_REPLACE_TABLE[funcname] = newfunc