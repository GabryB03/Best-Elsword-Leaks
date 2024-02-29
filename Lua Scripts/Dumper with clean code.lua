local dumpingClass, dumpingFunc = "TABLE", "FUNCTION"


local outputFile = "NAME.lua"

-------------------------------------------------------------------------------------------------------------

local finvoke_text = dumpingClass:gsub("CX2", "g_p") .. dumpingFunc .. "("

local dumpString, dumpTable

dumpString = function(s)
	return "\"" .. s:gsub("\\", "\\\\"):gsub("\r", "\\r"):gsub("\n", "\\n"):gsub("\"", "\\\"") .. "\""
end

dumpTable = function(tbl, recursionCount, onlyNum, openBracket, closeBracket)
	local iter = pairs
	if onlyNum then
		iter = ipairs
	end

	local makeDelimiter = false
	local outStr = openBracket .. "\n"
	for k, v in iter(tbl) do
		if makeDelimiter then
			outStr = outStr .. ",\n"
		end

		local kname = tostring(k) .. " = "
		if onlyNum or (type(k) == "number") then kname = "" end
		outStr = outStr .. string.rep("  ", recursionCount) .. kname
		if type(v) == "table" then
			outStr = outStr .. dumpTable(v, recursionCount + 1, false, "{", "}")
		elseif type(v) == "string" then
			outStr = outStr .. dumpString(v)
		elseif type(v) == "number" then
			outStr = outStr .. tostring(v)
		else
			outStr = outStr .. "nil"
		end
		makeDelimiter = true
	end
	outStr = outStr .. "\n" .. string.rep("  ", recursionCount - 1) .. closeBracket
	return outStr
end

local f

local originalfunc = _G[dumpingClass][dumpingFunc]

_G[dumpingClass][dumpingFunc] = function(self, data)
  if not data then return originalfunc(self, data) end

  f:write(finvoke_text)
  f:write(dumpTable(data, 1, false, "{", "}"))
  f:write(")\n")
  f:flush()

  originalfunc(self, data)
end

f = io.open(outputFile, "wb")