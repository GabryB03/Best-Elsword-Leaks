
--Execute before Elsword is fully loaded.
local originalfunc = CX2DungeonManager.AddDungeonData

CX2DungeonManager.AddDungeonData = function(self, data)
	data.requireDungeonID = 0 --Set required dungeon ("0" for requirements)
	data.m_MinLevel = 0 --Set minimum level for dungeons
	data.m_MaxLevel = 99 --Set maximum level for dungeons
	data.m_RequireItemLevel = 0 --Set required item level ("0" for no requirements)
	data.m_HardRequireItemLevel = 0 --" for hard dungeons
	data.requireSpirit = 0 --
	data.m_NPCLevel = 1 --Set NPC level
	data.EXTRA_REQUIRE_DUNGEON_ID = nil --Set extra required dungeon ("nil" for removing)
	data.IS_HELL_MODE = nil --Is hell mode ("nil" for removing)
	data.m_bArcadeMode = nil --Is arcarde mode ("nil" for removing)
	data.m_bSwitchingWithEventInfo = nil -- Is switching with event info ("nil" for removing)
	data.m_bLevelEqualized = nil --Is level equalized ("nil" for removing)
	data.m_bDamageEqualized = nil --Is damage equalized ("nil" for removing)
	data.m_bEventDungeon = nil --Is event dungeon ("nil" for removing)
	data.m_usFixedMembers = nil --Fixen members ("nil" for removing)
	data.m_iLimitedPlayTimes = nil --Limited play times ("nil" for removing)
	data.requireItemID = nil --Require a specific item ("nil" for removing)
	data.BOSS_DROP_ITEM = {
        
COMMON = {

	85002860,
	85002860

}
	
	}

	return originalfunc(self, data)
end