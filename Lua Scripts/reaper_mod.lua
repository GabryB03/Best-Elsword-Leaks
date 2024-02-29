
--Erstmal die originale Funktion merken.
local originalfunc = CX2TitleManager.AddTitleInfo_LUA

--Und dann überschreiben und trolle Dinge tun.
CX2TitleManager.AddTitleInfo_LUA = function(self, data)

	--Daten ändern, sofern überhaupt Daten vorhanden sind.
	if data then

		--Wenn zufälligerweise der Reaper-Titel geladen wird, ändern wir ihn.
		if data.m_iTitleID == 690 then --690 = ID für Reaper

			--Wir ändern seine Effekte.
			data.SOCKET_OPTION = {
				31804,
				31805,
				31806,
				31804,
				31805,
				31806,
				31804,
				31805,
				31806
			}
		end
	end

	--Wenn wir mit den Daten fertig sind, übergeben wir sie an den
	--originalen Loader, als ob nichts geschehen wäre.
	return originalfunc(self, data)
end

