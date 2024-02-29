--TEH ULTIMATE DUNGEON BOT!!1!
local f = io.open("_botdebug.txt", "wb")



--Maps world file names (without extension) to World IDs.
local BOT_WORLD_ID_MAP = {}

local originalAddWorldData = CX2WorldManager.AddWorldData
CX2WorldManager.AddWorldData = function(self, data)
	local name = tostring(data.dataFileName):lower():gsub("%.lua", "")
	BOT_WORLD_ID_MAP[name] = data.worldID
	return originalAddWorldData(self, data)
end



--The currently active stage, or nil.
local BOT_CURRENT_STAGE_DATA = nil

--Searches the current stage data for the given world ID
--(and populates the BOT_CURRENT_STAGE_DATA variable with the corresponding stage data)
local function loadStageData(worldID)
	if STAGE_LIST == nil then
		BOT_CURRENT_STAGE_DATA = nil
		return
	end

	for k, v in pairs(STAGE_LIST) do
		if type(v) == "table" then
			if v.WORLD_ID == worldID then
				BOT_CURRENT_STAGE_DATA = v
				f:write("Loaded stage data for " .. tostring(worldID) .. "\r\n")
				f:flush()
			end
		end
	end

	local endLineSets = {}
	local startToEndMap = {}
	for k, v in pairs(BOT_CURRENT_STAGE_DATA) do
		if type(v) == "table" then
			if v.MAIN_LINE_SET then
				endLineSets[v.END_LINE_SET] = v.GO_TYPE or GO_TYPE.GT_RIGHT
				startToEndMap[v.MAIN_LINE_SET] = v.END_LINE_SET
			end
		end
	end

	BOT_CURRENT_STAGE_DATA.endLineSets = endLineSets
	BOT_CURRENT_STAGE_DATA.startToEndMap = startToEndMap

	f:write("End line sets:\r\n")
	for k, v in pairs(endLineSets) do
		f:write("--> " .. tostring(k) .. "\r\n")
	end
	f:flush()
end


--Get the line data before actually loading lines
local function simulateLoadLineMap(filename)
	local original_g_pLineMap = g_pLineMap

	--Maps linesets to their lines
	local lineSetMap = {}

	g_pLineMap = {
		AddLine_LUA = function(self, data)
			if not lineSetMap[data.LINE_SET] then
				lineSetMap[data.LINE_SET] = {}
			end

			lineSetMap[data.LINE_SET][data.LINE_NUM] = data
		end
	}
	setmetatable(g_pLineMap, {
		__index = function(tbl, idx)
			return function() end
		end
	})

	IncludeLua(filename)
	g_pLineMap = original_g_pLineMap

	return lineSetMap
end


--Hook loading of world object data for getting the dungeon file name
local originalSetLineMap = CX2World.SetLineMap
CX2World.SetLineMap = function(self, name)
	local newname = name:lower():gsub("_linemap.lua", "")
	local worldID = BOT_WORLD_ID_MAP[newname]
	f:write("Loading linemap " .. newname .. "\r\n")
	f:write("World ID is: " .. tostring(worldID) .. "\r\n")
	f:flush()

	if worldID ~= nil then
		loadStageData(worldID)
		BOT_CURRENT_STAGE_DATA.lineSetMap = simulateLoadLineMap(name)

		for k, v in pairs(BOT_CURRENT_STAGE_DATA.lineSetMap) do
			f:write("Line set " .. tostring(k) .. " contains:\r\n")
			f:flush()
			for k2, line in pairs(v) do
				f:write("--> " .. tostring(line.LINE_NUM) .. "\r\n")
				f:flush()
			end
		end
		f:write("End line data.\r\n")
		f:flush()
	end

	return originalSetLineMap(self, name)
end


--Returns a line from a given line set, or nil if there is no line.
local function getAnyLineFromLineSet(set)
	local line = nil
	for k, v in pairs(set) do
		if (line == nil) or (line.LINE_NUM > v.LINE_NUM) then
			line = v
		end
	end
	return line
end


--Hook loading of world lines.
local originalAddLine = CKTDGLineMap.AddLine_LUA
CKTDGLineMap.AddLine_LUA = function(self, data)
	if BOT_CURRENT_STAGE_DATA == nil then
		return originalAddLine(self, data)
	end

	local endSet = BOT_CURRENT_STAGE_DATA.endLineSets[data.LINE_SET]
	if endSet then
		f:write(tostring(data.LINE_NUM) .. " is an end line set, setting glide\r\n")
		f:flush()
		if endSet == GO_TYPE.GT_RIGHT then
			data.SPEED = 100
		else
			data.SPEED = -100
		end
	else
		local targetLineSetNumber = BOT_CURRENT_STAGE_DATA.startToEndMap[data.LINE_SET]
		local targetLineSet = BOT_CURRENT_STAGE_DATA.lineSetMap[targetLineSetNumber]
		local targetLine = nil
		if targetLineSet ~= nil then
			targetLine = getAnyLineFromLineSet(targetLineSet)
		end

		if targetLine ~= nil then
			f:write(tostring(data.LINE_NUM) .. " teleport target line: " .. tostring(targetLine.LINE_NUM) .. "\r\n")
			f:flush()
			data.LINE_TYPE = LINE_TYPE.LT_BUNGEE
			data.TELEPORT_LINE = targetLine.LINE_NUM
		else
			f:write(tostring(data.LINE_NUM) .. " teleport target line: none found, defaulting to self\r\n")
			f:flush()
			data.LINE_TYPE = LINE_TYPE.LT_BUNGEE
			data.TELEPORT_LINE = data.LINE_NUM
		end
	end

	return originalAddLine(self, data)
end

