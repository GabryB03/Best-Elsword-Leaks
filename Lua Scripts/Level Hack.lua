--Execute before Elsword is fully laoded.
local oldfunc = CX2EXPTable.AddExpTable_LUA
local function nullThat(tbl)
	if type(tbl) ~= "table" then return end
	for k, v in ipairs(tbl) do
		tbl[k] = 0
	end
end

CX2SkillTree.CX2EXPTable.AddExpTable_LUA = function(self, data)
	if data then
	   
if data.LEVEL == 1 then
data.NEED_EXP = 0
data.TOTAL_EXP = 0
end

if data.LEVEL == 2 then
data.NEED_EXP = 0
data.TOTAL_EXP = 0
end

if data.LEVEL == 3 then
data.NEED_EXP = 0
data.TOTAL_EXP = 0
end

if data.LEVEL == 4 then
data.NEED_EXP = 0
data.TOTAL_EXP = 0
end

if data.LEVEL == 5 then
data.NEED_EXP = 0
data.TOTAL_EXP = 0
end

if data.LEVEL == 6 then
data.NEED_EXP = 0
data.TOTAL_EXP = 0
end

if data.LEVEL == 7 then
data.NEED_EXP = 0
data.TOTAL_EXP = 0
end

if data.LEVEL == 8 then
data.NEED_EXP = 0
data.TOTAL_EXP = 0
end

if data.LEVEL == 9 then
data.NEED_EXP = 0
data.TOTAL_EXP = 0
end

if data.LEVEL == 10 then
data.NEED_EXP = 0
data.TOTAL_EXP = 0
end

if data.LEVEL == 11 then
data.NEED_EXP = 0
data.TOTAL_EXP = 0
end

if data.LEVEL == 12 then
data.NEED_EXP = 0
data.TOTAL_EXP = 0
end

if data.LEVEL == 13 then
data.NEED_EXP = 0
data.TOTAL_EXP = 0
end

if data.LEVEL == 14 then
data.NEED_EXP = 0
data.TOTAL_EXP = 0
end

if data.LEVEL == 15 then
data.NEED_EXP = 0
data.TOTAL_EXP = 0
end

if data.LEVEL == 16 then
data.NEED_EXP = 0
data.TOTAL_EXP = 0
end

if data.LEVEL == 17 then
data.NEED_EXP = 0
data.TOTAL_EXP = 0
end

if data.LEVEL == 18 then
data.NEED_EXP = 0
data.TOTAL_EXP = 0
end

if data.LEVEL == 19 then
data.NEED_EXP = 0
data.TOTAL_EXP = 0
end

if data.LEVEL == 20 then
data.NEED_EXP = 0
data.TOTAL_EXP = 0
end
	   
	end
	return oldfunc(self, data)
end