
--Erstmal die originale Funktion merken.
local originalfunc = CX2TitleManager.AddTitleInfo_LUA

--Und dann �berschreiben und trolle Dinge tun.
CX2TitleManager.AddTitleInfo_LUA = function(self, data)

	--Daten �ndern, sofern �berhaupt Daten vorhanden sind.
	if data then

		--Wenn zuf�lligerweise der Reaper-Titel geladen wird, �ndern wir ihn.
		if data.m_iTitleID == 690 then --690 = ID f�r Reaper

			--Wir �ndern seine Effekte.
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

	--Wenn wir mit den Daten fertig sind, �bergeben wir sie an den
	--originalen Loader, als ob nichts geschehen w�re.
	return originalfunc(self, data)
end

