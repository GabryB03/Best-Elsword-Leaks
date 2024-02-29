local oldfunc = CX2PremiumBuffManager.AddBuffInfo
CX2PremiumBuffManager.AddBuffInfo = function(self, data)
	if data then
		data.m_fBuffPeriodSecond = 99999
		data.BUFF_FACTOR = {
			99999
		}
		data.m_bEndBuffAtTheUserDied = 0
		data.NOT_USE_IN_PVE = 0
	end
	return oldfunc(self, data)
end