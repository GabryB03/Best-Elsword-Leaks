--{"Name": "SocketMod", "Type": "PVP", "Version": "1.0.0.3"}
function CalculateFinalCriticalPercent(fSumValue, iUserLevel)
    return 0
end
function CalculateFinalMoveSpeedPercent(fSumValue, iUserLevel)
    return 0.27
end
function CalculateFinalJumpSpeedPercent(fSumValue, iUserLevel)
    return 0.27
end
function CalculateFinalAnimationSpeedPercent(fSumValue, iUserLevel)
    return 0.24
end
function CalculateFinalHyperGageChargeSpeedPercent(fSumValue, iUserLevel)
    return 0.5
end
function CalculateFinalAdditionalDefencePercent(fSumValue, iUserLevel)
    return 0.45
end

local originalAdditionalAttack = CalculateFinalAdditionalAttackValue
function CalculateFinalAdditionalAttackValue(fSumValue, iUserLevel)
    return  originalAdditionalAttack(fSumValue, iUserLevel) * 0.7
end


--Zomg new stats
function CalculateFinalAddSpecializationAPercent(fSumValue, iUserLevel)
    return 0.5
end

function CalculateFinalAddSpecializationBPercent(fSumValue, iUserLevel)
    return 0.5
end

function CalculateFinalMpIncPercentByAttack(fSumValue, iUserLevel)
    return 0.7
end

function CalculateFinalMpIncPercentByAttacked(fSumValue, iUserLevel)
    return 0.7
end
