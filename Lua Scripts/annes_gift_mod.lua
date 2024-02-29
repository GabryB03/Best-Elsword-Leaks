
--Erstmal die originale Funktion merken.
local originalfunc = CX2TitleManager.AddTitleInfo_LUA

--Und dann �berschreiben und trolle Dinge tun.
CX2TitleManager.AddTitleInfo_LUA = function(self, data)

	--Daten �ndern, sofern �berhaupt Daten vorhanden sind.
	if data then

		data.m_iTitleID = 5770
		
	end

	--Wenn wir mit den Daten fertig sind, �bergeben wir sie an den
	--originalen Loader, als ob nichts geschehen w�re.
	return originalfunc(self, data)
end

