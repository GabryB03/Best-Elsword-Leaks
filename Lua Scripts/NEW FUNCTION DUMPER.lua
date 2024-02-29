--{"Name":"Dump Functions", "Type":"Login/Loading Screen", "Version":"1.0.0.0"}

local fc = {
	_G.CalculateLinearAdditionalAttackValue
	CX2DungeonStage.StartGoEffect
}
function catch(what)
  return what[1]
end

function try(what)
  status, result = pcall(what[1])
  if not status then
    what[2](result)
  end
  return result
end

    function sourcedumper(a)
      local info = debug.getinfo(a, "S")
      if not info then return end
      local tablename = getTableName(a)
      local f = io.open("_G_" .. (tablename or "unknown") .. ".lua", "wb")
      f:write("-- Dumped At: " .. os.date("%d/%m/%Y %H:%I:%M"))
      f:write("\r\n-- Fuction:\r\n" .. tablename .. "()")
      f:write("\r\n-- Source[Debug]:\r\n"..info["source"])
      f:write("\r\n-- Arguments:\r\n")
      f:close()
    end
    function dump (a)
      local tablename = getTableName(a)
      local f = io.open("_G_" .. getTableName(a) .. ".txt", "wb")
      for i,v in pairs (a) do
        if type(v) == "table" then
          f:write(tablename .. "." .. i .. "\r\n")
        elseif type(v) == "function" then
          f:write(tablename .. "." .. i .. "()\r\n")
        else
          f:write(tablename .. "." .. i .. "?\r\n")
        end
      end
      f:close()
    end
    function getTableName(tbl)
      for k, v in pairs(_G) do
        if v == tbl then
          return k
        end
      end
      return nil
    end
try {
  function()
    for k,v in pairs(fc) do
      if type(v) == "table" then
        dump(v)
      elseif type(v) == "function" then
        sourcedumper(v)
      end
    end
    end,
    catch {
      function(error)
        local f = io.open("_G_error.log", "wb")
        f:write("-- Error\r\n" .. error)
        f:close()
      end
    }
  }