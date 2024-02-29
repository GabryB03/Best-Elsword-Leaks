--This modification will apply every stage.

function CalculateFinalCriticalPercent(fSumValue, iUserLevel)
	return 1 --Crit in percent (1 = 100%)
end
function CalculateFinalMoveSpeedPercent(fSumValue, iUserLevel)
	return 0.3 --Move speed in percent (0.3 = 30%)
end
function CalculateFinalJumpSpeedPercent(fSumValue, iUserLevel)
	return 0.3 --Jump high in percent (0.3 = 30%)
end
function CalculateFinalAnimationSpeedPercent(fSumValue, iUserLevel)
	return 0.3 --Animation speed in percent (0.3 = 30%)
end
function CalculateFinalAnitEvadePercent(fSumValue, iUserLevel)
	return 1 --AntiEvade in percent (1 = 100%)
end
function CalculateFinalHyperGageChargeSpeedPercent(fSumValue, iUserLevel)
	return 10 --HyperGageChrage speed in percent (10 = 1000%)
end
function CalculateFinalAdditionalDefencePercent(fSumValue, iUserLevel)
	return 1 --Additional defence in percent (1 = 100%)
end
function CalculateFinalAdditionalAttackValue(fSumValue, iUserLevel)
	return	50 --Additional attack value (multiplier)
end