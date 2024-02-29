
--Erstmal die originale Funktion merken.
local originalfunc = CX2TitleManager.AddTitleInfo_LUA

--Und dann überschreiben und trolle Dinge tun.
CX2TitleManager.AddTitleInfo_LUA = function(self, data)

	--Daten ändern, sofern überhaupt Daten vorhanden sind.
	if data then

		data.m_iTitleID = 5770
		
	end

	--Wenn wir mit den Daten fertig sind, übergeben wir sie an den
	--originalen Loader, als ob nichts geschehen wäre.
	return originalfunc(self, data)
end

