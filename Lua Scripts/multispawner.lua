local NPCIDList = {
	NPC_UNIT_ID.NUI_PVP_HERO_AMELIA,
	NPC_UNIT_ID.NUI_PVP_HERO_BALAK
}
local iNPCLevel = 1

local funcname = "BENDERS_NORMAL_DYING_FRAME_FUNC"
local newfunc = function(pKTDXApp, pX2Game, pX2GUNPC)
	if not SPAWNER_TRIGGER then return end
	SPAWNER_TRIGGER = false

	if not SPAWN_POS then
		SPAWN_POS = pX2GUNPC:GetPos()
	end
	for k, v in ipairs(NPCIDList) do
		pX2Game:CreateNPCReq_LUA(v, iNPCLevel, false, SPAWN_POS, false, 0, false)
	end
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


SPAWN_POS = nil
SPAWNER_TRIGGER = true
_G[funcname] = nil
FUNC_REPLACE_TABLE[funcname] = newfunc
