local originalFunc = CX2TitleManager.AddTitleInfo_LUA
CX2TitleManager.AddTitleInfo_LUA = function(self, data)

    if data.data.m_iTitleID == 10 then
	
  data.m_eUnitType = 0
  data.m_Description = "The secret to gaining fast EXP is as follows:\nWear a Title.\nThat's simple, isn't it? -Father"
  data.m_bIsSecretTitle = 0
  data.m_eTitleType = 7
  data.SOCKET_OPTION = {
    60914,
	60914,
	60914,
	60914,
	60914,
	60914,
	60914,
	60914,
	60914,
	60914,
	60914,
	60914,
	60914,
	60914,
	60914,
	60914,
	60914,
	60914,
	60914,
	60914,
	60914
  }
  data.m_bVisible = 1
  data.m_ParticleName = "TITLE_5770"
  data.m_eUnitClass = 0
  data.m_iOpenLevel = 1
  data.m_iSortNum = 5770
  data.m_TitleName = "Secrets of Gaining Fast EXP (1 Day)"
  data.m_iTitleID = 5770
	
	end
	
	return originalFunc(self, data)
end