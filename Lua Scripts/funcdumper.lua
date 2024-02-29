local funcname = "BENDERS_NORMAL_DYING_FRAME_FUNC"

local f = io.open("_" .. funcname .. ".txt", "wb")

if not getmetatable(_G) then
  FUNC_REPLACE_TABLE = {}
  
  local mt = {
    __index = FUNC_REPLACE_TABLE,
    __newindex = function(tbl, key, value)
      if FUNC_REPLACE_TABLE[key] then return end
      rawset(tbl, key, value)
    end
  }
  setmetatable(_G, mt)
end


function writeArgs(a, ...)
  if a == nil then return end
  f:write(tostring(a))
  
  if type(a) == "userdata" then
    local mt = getmetatable(a)
    if mt then
      f:write("[" .. tostring(mt.__name) .. "]")
    end
  end
  f:write(", ")

  writeArgs(...)
end


_G[funcname] = nil
FUNC_REPLACE_TABLE[funcname] = function(...)
  f:write(funcname .. "(")
  writeArgs(...)
  f:write(")\r\n")
  f:flush()
end