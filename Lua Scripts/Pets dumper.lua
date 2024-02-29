local f = io.open("_pet.txt", "wb")

local originalfunc = CX2PetManager.AddPetTemplet
CX2PetManager.AddPetTemplet = function(self, data)
	if not data then return end

	f:write(tostring(data.SCRIPTNAME) .. " = " .. tostring(data.RIDING_PET_ID) .. "\r\n")
	f:flush()

	return originalfunc(self, data)
end

f:write("Dumper loaded\r\n")
f:flush()