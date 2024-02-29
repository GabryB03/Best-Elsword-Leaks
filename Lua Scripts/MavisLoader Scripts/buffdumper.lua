--{"Name": "Buff Dumper", "Type": "Login/Loading Screen", "Version": "1.0.0.0"}
--The dumped file will be in your x2.exe directory
local f = io.open("_BUFF.txt", "wb")
for k, v in pairs(BUFF_TEMPLET_ID) do
    f:write(k .. "=" .. tostring(v) .. "\r\n")
end
f:close()