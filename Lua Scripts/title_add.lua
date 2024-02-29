local TITLE_ID_TO_MODIFY = 10
local ADDITIONAL_EFFECTS = {
	31804,
	31805,
	31806,
}


local function addToTable(dst, src)
	local i = 0
	for k, v in ipairs(dst) do
		i = k
	end
	for k, v in ipairs(src) do
		dst[k + i] = v
	end
end




local originalfunc = CX2TitleManager.AddTitleInfo_LUA
CX2TitleManager.AddTitleInfo_LUA = function(self, data)
	if data then
		if data.m_iTitleID == TITLE_ID_TO_MODIFY then
			addToTable(data.SOCKET_OPTION, ADDITIONAL_EFFECTS)
		end
	end

	return originalfunc(self, data)
end

