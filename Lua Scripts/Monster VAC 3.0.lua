-- Monster VAC
local originalAddStartPos = CKTDGLineMap.AddStartPos
local positionP = nil
CKTDGLineMap.AddStartPos = function(self, num, pos, unkbool, unkint)
    if (self) then
	                  if g_pX2Game == nil then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
    return nil
  end
	      myUnit = g_pX2Game:GetMyUnit()
  if myUnit == nil then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\235\130\152\236\157\152 \236\156\160\235\139\155\236\157\132 \236\176\190\236\157\132 \236\136\152 \236\151\134\236\138\181\235\139\136\235\139\164.")
    return nil
  end
  positionP = myUnit:GetPos()
        
		return originalAddStartPos(self, num, positionP, unkbool, unkint)
    end
end