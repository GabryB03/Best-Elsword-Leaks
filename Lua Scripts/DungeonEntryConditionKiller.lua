local originalfunc = CX2DungeonManager.AddDungeonData

CX2DungeonManager.AddDungeonData = function(self, data)
	data.requireDungeonID = 0
	data.m_MinLevel = 0
	data.m_MaxLevel = 99
	data.m_RequireItemLevel = 0
	data.requireSpirit = 0
	data.m_NPCLevel = 1
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

	return originalfunc(self, data)
end
