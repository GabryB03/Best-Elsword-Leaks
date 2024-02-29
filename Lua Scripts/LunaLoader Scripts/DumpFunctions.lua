local f = io.open("_functions.txt", "wb")

for k, v in pairs(_G) do
	if type(v) == "table" then
		for k2, v2 in pairs(v) do
			if type(v2) == "function" then
				f:write(tostring(k) .. "." .. tostring(k2) .. "\r\n")
			end
		end
	end
end
f:close()

local f = io.open("_functions.txt", "wb")

for k, v in pairs(_G) do
	for k2, v2 in pairs(v) do
		f:write(tostring(k) .. "." .. tostring(k2) .. "\r\n")
	end
end
f:close()

local f = io.open("_1.txt", "wb")
for k, v in pairs(_G) do
	for k2, v2 in pairs(v) do
		f:write("K1: '" .. tostring(k) .. "' |===| V1: '" .. tostring(v) .. "' |===| K2: '" .. tostring(k2) .. "' |===| V2: '" .. tostring(v2) .. "'")
	end
end
f:close()

local f1 = io.open("_2.txt", "wb")
for k, v in ipairs(_G) do
	for k2, v2 in ipairs(v) do
		f1:write("K1: '" .. tostring(k) .. "' |===| V1: '" .. tostring(v) .. "' |===| K2: '" .. tostring(k2) .. "' |===| V2: '" .. tostring(v2) .. "'")
	end
end
f1:close()

local f2 = io.open("_3.txt", "wb")
for k, v in _G do
	f2:write("K1: '" .. tostring(k) .. "' |===| V1: '" .. tostring(v) .. "'")
end
f2:close()

local f = io.open("_FRAMES_FUNC.txt", "wb")
for k, v in _G do
	f:write(tostring(k) .. " " .. tostring(v) .. "\r\n")
end
f:close()