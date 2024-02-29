-- Monster VAC
local originalAddStartPos = CKTDGLineMap.AddStartPos
CKTDGLineMap.AddStartPos = function(self, num, pos, unkbool, unkint)
    if (self) then
	    return originalAddStartPos(self, num, CKTDGLineMap.GetStartPosition(), unkbool, unkint)
    end
end