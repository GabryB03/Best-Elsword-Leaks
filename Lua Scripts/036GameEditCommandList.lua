g_pGameEdit:AddCommandChange("\227\133\156", "n")
g_pGameEdit:AddCommandChange("\227\133\156\227\133\129", "na")
g_pGameEdit:AddCommandChange("\236\184\160", "cm")
g_pGameEdit:AddCommandChange("\227\133\161\227\133\151\227\133\148", "mhp")
g_pGameEdit:AddCommandChange("\227\133\151", "h")
g_pGameEdit:AddCommandChange("\227\133\160", "b")
g_pGameEdit:AddCommandChange("\235\167\136", "ak")
g_pGameEdit:AddCommandChange("\235\168\128", "ai")
g_pGameEdit:AddCommandChange("\227\132\185\227\133\138", "fc")
g_pGameEdit:AddCommandChange("\227\132\183", "e")
g_pGameEdit:AddCommandChange("\227\133\160\235\148\148", "bel")
g_pGameEdit:AddCommandChange("\227\133\163", "l")
g_pGameEdit:AddCommandChange("\227\132\180\227\133\133\227\133\129\227\133\142\227\132\183", "stage")
g_pGameEdit:AddCommandChange("\227\133\129\227\133\135", "ad")
g_pGameEdit:AddCommandChange("\227\133\163\227\133\148", "lp")
g_pGameEdit:AddCommandChange("\235\139\157", "sld")
g_pGameEdit:AddCommandChange("\227\133\149\227\133\149\227\133\149", "uuu")
g_pGameEdit:AddCommandChange("\227\133\138\227\132\177\227\133\129\235\133\184", "crash")
g_pGameEdit:AddCommandChange("\227\132\180\227\132\185", "sf")
g_pGameEdit:AddCommandChange("\227\133\143", "k")
g_pGameEdit:AddCommandChange("\227\133\138\227\132\180", "cs")
g_pGameEdit:AddCommandChange("\235\132\187", "spc")
g_pGameEdit:AddCommandChange("\237\142\152", "vp")
g_pGameEdit:AddCommandChange("\227\133\149\227\133\138", "uc")
g_pGameEdit:AddCommandChange("\236\184\160\227\133\148", "cmp")
g_pGameEdit:AddCommandChange("\227\133\133", "t")
g_pGameEdit:AddCommandChange("\227\133\142\235\132\164", "gsp")
g_pGameEdit:AddCommandChange("\227\133\129\227\132\180\227\133\138", "msc")
g_pGameEdit:AddCommandChange("\227\133\148\227\132\183\227\133\133", "pet")
g_pGameEdit:AddCommandChange("\227\133\148\227\133\129", "pa")
g_pGameEdit:AddCommandChange("\227\133\149\227\132\180\227\132\183\227\132\177\227\132\183\227\133\135", "usered")
g_pGameEdit:AddCommandChange("\235\134\176\227\133\148", "shop")
g_pGameEdit:AddCommandChange("\236\180\136\235\172\180\227\133\156\235\148\148", "channel")
g_pGameEdit:AddCommandChange("\227\133\151\235\145\144\227\133\145\227\132\177", "henir")
g_pGameEdit:AddCommandChange("\227\133\160\227\133\149\227\132\185\227\132\185", "buff")
g_pGameEdit:AddCommandChange("\235\147\156", "em")
g_pGameEdit:AddCommandChange("\227\133\136\235\132\164", "wsp")
g_pGameEdit:AddCommandChange("\227\133\138\227\132\180\227\133\135", "csd")
g_pGameEdit:AddCommandChange("\227\132\185\235\130\152", "fsk")
g_pGameEdit:AddCommandChange("\227\132\185\227\133\136\227\133\129\234\178\140", "fwarp")
g_pGameEdit:AddCommandChange("\227\133\135\235\173\143\227\132\183\227\132\177", "danger")
g_pGameEdit:AddCommandChange("\227\133\144\227\133\160\227\132\180", "obs")
g_pGameEdit:AddCommandChange("\227\133\144\227\133\160\227\132\181", "obsw")
g_pGameEdit:AddCommandChange("\227\133\144\227\133\160\227\132\180\227\133\135\235\148\148", "obsdel")
g_pGameEdit:AddCommandChange("\227\133\144\227\133\160\235\138\144\227\133\144\227\133\135\227\132\183", "obsmode")
g_pGameEdit:AddCommandChange("\236\160\132\236\167\129", "uc2")
g_pGameEdit:AddCommandChange("\236\138\164\237\130\172", "fsk")
g_pGameEdit:AddCommandChange("\236\138\164\237\130\172\236\180\136\234\184\176\237\153\148", "isk")
g_pGameEdit:AddCommandChange("\236\138\164\237\130\172\237\143\172\236\157\184\237\138\184", "sp")
g_pGameEdit:AddCommandChange("\236\178\180\235\160\165", "mhp")
g_pGameEdit:AddCommandChange("\234\179\181\236\167\128", "n")
g_pGameEdit:AddCommandChange("\235\143\136", "e")
g_pGameEdit:AddCommandChange("\235\157\188\236\157\184\235\167\181", "linemap")
g_pGameEdit:AddCommandChange("\227\133\129\227\132\185\227\133\135", "afd")
g_pGameEdit:AddCommandChange("\227\132\177\227\133\148\227\132\180", "rps")
g_pGameEdit:AddCommandChange("\235\157\188\236\157\180\235\148\169\236\138\164\237\133\140\235\175\184\235\132\136", "rps")
g_pGameEdit:AddCommandChange("\236\177\132\227\133\149\227\133\148\227\133\163\227\132\183", "couple")
g_pGameEdit:AddCommandChange("\236\157\180\237\142\153\237\138\184\235\161\156\234\183\184", "EffectLog")
g_pGameEdit:AddCommandChange("EFFECTLOG", "EffectLog")
g_pGameEdit:AddCommandChange("effectlog", "EffectLog")
function OKMsgBox(posX, posY, msg)
  g_pMain:KTDGUIOKMsgBox(D3DXVECTOR2(posX, posY), msg, g_pStage)
end
function Slash_ms(npcName, fScale, fTime)
  if g_pX2Game == nil then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
    return nil
  end
  npcName = string.upper(npcName)
  npcEnumID = string.format("NUI_%s", npcName)
  if NPC_UNIT_ID[npcEnumID] == nil then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\236\158\152\235\170\187\235\144\156 \235\170\172\236\138\164\237\132\176 \236\157\180\235\166\132\236\158\133\235\139\136\235\139\164.")
    return nil
  end
  pUnit = g_pX2Game:GetMyUnit()
  if pUnit == nil then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\235\130\152\236\157\152 \236\156\160\235\139\155\236\157\132 \236\176\190\236\157\132 \236\136\152 \236\151\134\236\138\181\235\139\136\235\139\164.")
    return nil
  end
  UnitPos = pUnit:GetPos()
  NpcUID = g_pX2Game:GetNearNPCUnitUID_LUA(UnitPos, NPC_UNIT_ID[npcEnumID], 99999)
  pNpc = g_pX2Game:GetNPCUnitByUID(NpcUID)
  if pNpc == nil then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "NPC\235\165\188 \236\176\190\236\157\132 \236\136\152 \236\151\134\236\138\181\235\139\136\235\139\164.")
  end
  pNpc:TransformScale_LUA(fScale, fTime)
end
function Slash_n(msg)
  iCount = 1
  g_pState:Handler_EGS_NOTIFY_MSG_REQ(iCount, msg, false)
end
function Slash_na(msg)
  iCount = 1
  g_pState:Handler_EGS_NOTIFY_MSG_REQ(iCount, msg, true)
end
function Slash_l(nickName, changeLevel, changeExp)
  g_pState:Handler_EGS_ADMIN_MODIFY_UNIT_LEVEL_REQ(nickName, changeLevel, changeExp)
end
function Slash_cm(npcName, iAttrib1, iAttrib2, iSA1, iSA2)
  if g_pX2Game == nil then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
    return nil
  end
  if 3 == g_pX2Game:GetGameType() then
    Slash_CM(npcName, iAttrib1)
    return nil
  end
  npcName = string.upper(npcName)
  npcEnumID = string.format("NUI_%s", npcName)
  if NPC_UNIT_ID[npcEnumID] == nil then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\236\158\152\235\170\187\235\144\156 \235\170\172\236\138\164\237\132\176 \236\157\180\235\166\132\236\158\133\235\139\136\235\139\164.")
    return nil
  end
  if iElite == nil then
    iElite = 0
  end
  myUnit = g_pX2Game:GetMyUnit()
  if myUnit == nil then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\235\130\152\236\157\152 \236\156\160\235\139\155\236\157\132 \236\176\190\236\157\132 \236\136\152 \236\151\134\236\138\181\235\139\136\235\139\164.")
    return nil
  end
  pos = myUnit:GetPos()
  bRight = myUnit:GetIsRight()
  g_pX2Game:Send_EGS_ADMIN_NPC_UNIT_CREATE_REQ_LUA(NPC_UNIT_ID[npcEnumID], 1, pos, bRight, iAttrib1, iAttrib2, iSA1, iSA2)
  --pX2DungeonGame:PushCreateNPCReq_Lua(eNPCID, iNPCLevel, false, spawnPos, false, 0, false, 0)
  g_pGameEdit:AddString(CHAT_TYPE.CT_NORMAL, npcEnumID)
  g_pGameEdit:SetLastCreatedMonster(NPC_UNIT_ID[npcEnumID])
end
function Slash_cmt(npcName, iLevel, iTeam)
  if g_pX2Game == nil then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
    return nil
  end
  npcName = string.upper(npcName)
  npcEnumID = string.format("NUI_%s", npcName)
  if NPC_UNIT_ID[npcEnumID] == nil then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\236\158\152\235\170\187\235\144\156 \235\170\172\236\138\164\237\132\176 \236\157\180\235\166\132\236\158\133\235\139\136\235\139\164.")
    return nil
  end
  myUnit = g_pX2Game:GetMyUnit()
  if myUnit == nil then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\235\130\152\236\157\152 \236\156\160\235\139\155\236\157\132 \236\176\190\236\157\132 \236\136\152 \236\151\134\236\138\181\235\139\136\235\139\164.")
    return nil
  end
  pos = myUnit:GetPos()
  bRight = myUnit:GetIsRight()
  g_pX2Game:CreateNPCReqAlly(NPC_UNIT_ID[npcEnumID], iLevel, true, pos, bRight, D3DXVECTOR3(0, 0, 0), false, iTeam)
  g_pGameEdit:AddString(CHAT_TYPE.CT_NORMAL, npcEnumID)
  g_pGameEdit:SetLastCreatedMonster(NPC_UNIT_ID[npcEnumID])
end
function Slash_cmp(npcName, posX, posY, posZ)
  if g_pX2Game == nil then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
    return nil
  end
  npcName = string.upper(npcName)
  npcEnumID = string.format("NUI_%s", npcName)
  if NPC_UNIT_ID[npcEnumID] == nil then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\236\158\152\235\170\187\235\144\156 \235\170\172\236\138\164\237\132\176 \236\157\180\235\166\132\236\158\133\235\139\136\235\139\164.")
    return nil
  end
  myUnit = g_pX2Game:GetMyUnit()
  if myUnit == nil then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\235\130\152\236\157\152 \236\156\160\235\139\155\236\157\132 \236\176\190\236\157\132 \236\136\152 \236\151\134\236\138\181\235\139\136\235\139\164.")
    return nil
  end
  pos = g_pKTDXApp:GetVec3(posX, posY, posZ)
  if pos.x ~= 0 then
    g_pX2Game:CreateNPCReq_LUA(NPC_UNIT_ID[npcEnumID], 1, true, pos, bRight, 0, false)
  else
    g_pX2Game:CreateNPCReq_LUA(NPC_UNIT_ID[npcEnumID], 1, true, myUnit:GetPos(), bRight, 0, false)
  end
  g_pGameEdit:AddString(CHAT_TYPE.CT_NORMAL, npcEnumID)
end
function Slash_mhp(myHP)
  if g_pX2Game == nil then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
    return nil
  end
  myUnit = g_pX2Game:GetMyUnit()
  if myUnit == nil then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\235\130\152\236\157\152 \236\156\160\235\139\155\236\157\132 \236\176\190\236\157\132 \236\136\152 \236\151\134\236\138\181\235\139\136\235\139\164.")
    return nil
  end
  myUnit:SetNowHP(myHP)
end
function Slash_h()
end
function Slash_b(itemID, quantity, period)
  g_pMain:BuyItemSuper_LUA(itemID, quantity, period)
end
function Slash_ak()
  if g_pX2Game == nil then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
    return nil
  end
  g_pX2Game:KillAllNPC_LUA(false)
end
function Slash_ai(bEnable)
  if g_pX2Game == nil then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
    return nil
  end
  g_pX2Game:EnableAllNPCAI(bEnable)
end
function Slash_fc(bEnable)
  g_pMain:SetFreeCamera(bEnable)
  if bEnable == false then
    g_pMain:EndWorldCamera()
  end
end
function Slash_kfc(bEnable)
  g_pMain:SetFreeCamera(bEnable)
  g_pMain:SetWorldCameraEdit(bEnable)
end
function Slash_mc(bEnable)
  if g_pX2Game == nil then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
    return nil
  end
  g_pX2Game:EnableManualCameraPosition(bEnable)
end
function Slash_a(userID, authLevel)
  g_pMain:SetAuthLevel_LUA(userID, authLevel)
end
function Slash_al(authLevel)
  g_pMain:GetAuthUserList_LUA(authLevel)
end
function Slash_e(nickName, changeED)
  g_pState:Handler_EGS_ADMIN_CHANGE_ED_REQ(nickName, changeED)
end
function Slash_stage(iStageIndex)
  if g_pX2Game == nil then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
    return nil
  end
  iSubStageIndex = 0
  if g_pX2Game:GoStage(iStageIndex, iSubStageIndex) then
    g_pGameEdit:AddString(CHAT_TYPE.CT_NORMAL, "stage \236\157\180\235\143\153\236\151\144 \236\132\177\234\179\181 \237\150\136\236\138\181\235\139\136\235\139\164")
  else
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "stage \236\157\180\235\143\153\236\151\144 \236\139\164\237\140\168 \237\150\136\236\138\181\235\139\136\235\139\164")
  end
end
function Slash_q(iQuestID, iWhichString)
end
function Slash_isk()
  g_pMain:InitMyUnitSkillTree()
end
function Slash_fsk()
  g_pMain:FullMyUnitSkillTree()
end
function Slash_fskl()
  g_pMain:FullMyUnitSkillTreeByLevel()
end
function Slash_skl(iSkillID, iSkillLevel)
  local bIsError = false
  if false == g_pSkillTree:IsMyClassSkillID_LUA(iSkillID) then
    g_pGameEdit:AddString(CHAT_TYPE.CT_NORMAL, "\236\158\152\235\170\187\235\144\156 \236\138\164\237\130\172 \236\149\132\236\157\180\235\148\148 \237\152\185\236\157\128 \237\149\180\235\139\185 \236\156\160\235\139\155\236\157\152 \236\138\164\237\130\172\236\157\180 \236\149\132\235\139\153\235\139\136\235\139\164.")
    bIsError = true
  end
  if iSkillLevel <= 0 or iSkillLevel > g_pSkillTree:GetMaxLimitedSkillLevel_LUA() then
    g_pGameEdit:AddString(CHAT_TYPE.CT_NORMAL, "\236\156\160\237\154\168 \236\138\164\237\130\172 \235\160\136\235\178\168\236\157\180 \236\149\132\235\139\153\235\139\136\235\139\164.")
    bIsError = true
  end
  if false == bIsError then
    g_pMain:SetMyUnitSkillLevel(iSkillID, iSkillLevel)
  else
    return nil
  end
end
function Slash_sp(iSP)
  g_pMain:SetMyUnitSP(iSP)
end
function Slash_stloc()
  g_pMain:SendStatisticsLocLog()
end
function Slash_stdb()
  g_pMain:SendStatisticsDBLog()
end
function Slash_bel(level)
  g_pMain:BuySuperEqipLevel_LUA(level)
end
function Slash_ad(fAddDamage)
  pMyUnit = g_pX2Game:GetMyUnit()
  if pMyUnit ~= nil then
    pMyUnit:SetDevAddDamage(fAddDamage)
  end
end
function Slash_lp()
  g_pData:LoadPicCharAll_LUA()
end
function Slash_sld()
  g_pGameEdit:SaveFileLoadedDevices()
end
function Slash_uuu()
  pUIUnitManager = g_pData:GetUIUnitManager()
  if pUIUnitManager ~= nil then
    pUIUnitManager:ClearAllUIUnit()
  end
end
function Slash_crash()
  g_pMain:IntentionalCrash()
end
function Slash_nmp()
  if g_pX2Game == nil then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
    return nil
  end
  g_pX2Game:SetAllNPCMPFull()
end
function Slash_sf(fSlowFactor, fSlowTime)
  g_pKTDXApp:SlowFrame_LUA(fSlowFactor, fSlowTime)
end
function Slash_k(userNickName)
  g_pState:Handler_EGS_ADMIN_KICK_USER_REQ(userNickName, false)
end
function Slash_kid(userID)
  g_pState:Handler_EGS_ADMIN_KICK_USER_REQ(userID, true)
end
function Slash_cs(changeSpirit)
  g_pMain:ChangeSpirit(changeSpirit)
end
function Slash_spc(bEnable, pcBangType)
  g_pState:Handler_EGS_ADMIN_SET_PC_BANG_REQ(bEnable, pcBangType)
end
function Slash_vp(changeRating, changeRPoint, changeAPoint)
  g_pMain:ChangeVSPoint(changeRating, changeRPoint, changeAPoint)
end
function Slash_sdm(bEnable)
  dialogManager = g_pKTDXApp:GetDialogManager()
  dialogManager:SetShow(bEnable)
end
function Slash_suv(bEnable)
  g_pMain:SetShowUnitViewerUI(bEnable)
end
function Slash_linemap()
  if g_pX2Game ~= nil and g_pX2Game:GetWorld() ~= nil then
    if g_pX2Game:GetWorld():GetRenderLineMap() == true then
      g_pX2Game:GetWorld():SetRenderLineMap(false)
    else
      g_pX2Game:GetWorld():SetRenderLineMap(true)
    end
  else
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
    return nil
  end
end
function Slash_uc(cUnitClass)
  g_pMain:ChangeUnitClass(cUnitClass)
end
function Slash_uc2(UnitClassName)
  g_pMain:ModifyChangeUnitClass(UnitClassName)
end
function Slash_csd(iYear, iMonth, iDay, iHour, iMinute)
  g_pMain:ChangeCashSkillPointDate(iYear, iMonth, iDay, iHour, iMinute)
end
function Slash_t(iTitleID, iPeriod)
  g_pMain:GetTitleCheat(iTitleID, iPeriod)
end
function Slash_dev(bDevModeOn)
  g_pMain:SetEnabledDeveloperCheatCode(bDevModeOn)
end
function Slash_pf(iCount)
  g_pMain:IncreasePartyFeverPoint(iCount)
end
function Slash_guest(bVal)
  g_pMain:SetGuestUserMode(bVal)
end
function Slash_gsp(count)
  g_pGameEdit:AdminGetGuildSPoint(count)
end
function Slash_afd(count)
  if g_pX2Game == nil then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
    return nil
  end
  g_pGameEdit:IncreaseFieldDangerousValue(count)
  g_pGameEdit:RequireGetDangerousValue()
end
function Slash_UnitScale(fScale, fTime)
  if g_pX2Game ~= nil and g_pX2Game:GetMyUnit() ~= nil then
    g_pX2Game:GetMyUnit():TransformScale_LUA(fScale, fTime)
  else
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "ERROR")
  end
end
function Slash_tf(npcName)
  if g_pX2Game == nil then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
    return nil
  end
  myUnit = g_pX2Game:GetMyUnit()
  if myUnit == nil then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\235\130\152\236\157\152 \236\156\160\235\139\155\236\157\132 \236\176\190\236\157\132 \236\136\152 \236\151\134\236\138\181\235\139\136\235\139\164.")
    return nil
  end
  npcName = string.upper(npcName)
  npcEnumID = string.format("NUI_%s", npcName)
  if NPC_UNIT_ID[npcEnumID] == nil then
    g_pX2Game:GetMyUnit():TransformIntoUser()
  else
    g_pX2Game:GetMyUnit():TransformIntoMonster(NPC_UNIT_ID[npcEnumID])
  end
end
function Slash_msc(stateName)
  g_pGameEdit:MonsterStateChange(stateName)
end
function Slash_warp(iPosition)
  if iPosition < 15 then
    g_pMain:WarpByCommand(iPosition)
  else
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\237\151\136\236\154\169\235\144\152\236\167\128 \236\149\138\236\157\128 \235\178\148\236\156\132\236\158\133\235\139\136\235\139\164")
  end
end
function Slash_fwarp(iPosition)
  if iPosition == 0 then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\235\163\168\235\178\164:1,  \236\151\152\235\141\148:2~3,  \235\178\160\236\138\164\235\167\136:4~6,  \236\149\140\237\133\140\235\157\188:7~9,  \237\142\152\236\157\180\237\131\128:10~12, \235\178\168\235\141\148:13~17, \237\149\152\235\169\156:18~22 \236\131\140\235\141\148:23~24")
    return nilh
  end
  if iPosition < 25 then
    g_pMain:FieldWarpByCommand(iPosition)
  else
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\237\151\136\236\154\169\235\144\152\236\167\128 \236\149\138\236\157\128 \235\178\148\236\156\132\236\158\133\235\139\136\235\139\164")
  end
end
function Slash_pet(iType, iValue)
  g_pGameEdit:PetCheat(iType, iValue)
end
function Slash_pa(motionName)
  g_pGameEdit:PetActionCheat(motionName)
end
function Slash_usered(nickName)
  g_pGameEdit:UserEdCheat(nickName)
end
function Slash_shop(period)
  g_pGameEdit:ShopCheat(period)
end
function Slash_fov(fFov)
  g_pMain:SetProjectionFov(fFov)
end
function Slash_channel(channelcode)
  g_pGameEdit:ChannelingCodeCheat(channelcode)
end
function Slash_henir(henirreward)
  g_pGameEdit:HenirRewardCountCheat(henirreward)
end
function Slash_buff(henirbuff)
  g_pGameEdit:HenirBuffCheat(henirbuff)
end
function Slash_quest()
  g_pGameEdit:RefreshDailyQuest()
end
function Slash_em(mode)
  g_pGameEdit:EDMonitoringModeCheat(mode)
end
function Slash_wsp(wsp)
  g_pGameEdit:ElswordWSPCheat(wsp)
end
function Slash_danger()  g_pMain:SetFreeCamera(bEnable)
  g_pMain:SetWorldCameraEdit(bEnable)
  g_pGameEdit:RequireGetDangerousValue()
end
function Slash_ping(averagePingTime)
  g_pGameEdit:AveragePingTime(averagePingTime)
end
function Slash_obs(msg)
  g_pState:Handler_EGS_ADMIN_NOTIFY_HERO_PVP_USER_REQ_LUA(msg, nil, -1)
end
function Slash_obsw(serverCode, nickName, msg)
  if nil == serverCode or nil == nickName then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\236\158\152\235\170\187 \236\158\133\235\160\165\237\149\152\236\152\128\236\138\181\235\139\136\235\139\164.")
  else
    g_pState:Handler_EGS_ADMIN_NOTIFY_HERO_PVP_USER_REQ_LUA(msg, nickName, serverCode)
  end
end
function Slash_obsdel(serverCode, nickName)
  if nil == serverCode or nil == nickName then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\236\158\152\235\170\187 \236\158\133\235\160\165\237\149\152\236\152\128\236\138\181\235\139\136\235\139\164.")
  else
    g_pState:Handler_EGS_ADMIN_REMOVE_HERO_PVP_USER_REQ(serverCode, nickName)
  end
end
function Slash_obsmode(mode)
  if nil == mode then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\236\158\152\235\170\187 \236\158\133\235\160\165\237\149\152\236\152\128\236\138\181\235\139\136\235\139\164.")
  else
    g_pState:Handler_EGS_ADMIN_OBSERVER_MODE_REQ(mode)
  end
end
function Slash_dg(iGuildUID)
  g_pGameEdit:DeleteGUildAdd(iGuildUID)
end
function Slash_dhr(iRankingType, iRank)
  g_pGameEdit:DeleteHenirRankingRank(iRankingType, iRank)
end
function Slash_dhn(iRankingType, nickName)
  g_pGameEdit:DeleteHenirRankingNickName(iRankingType, nickName)
end
function Slash_dhu(iRankingType, iUnitUID)
  g_pGameEdit:DeleteHenirRankingUnitUID(iRankingType, iUnitUID)
end
function Slash_i()
  g_pGameEdit:ToggleInvisible()
end
function Slash_randomcube(itemId, KeyId, count)
  g_pGameEdit:RandomCubeOpen(itemId, KeyId, count)
end
function Slash_wakeup()
  if g_pX2Game == nil then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
    return nil
  end
  g_pX2Game:AddHyperModeCount()
end
function Slash_energy()
  if g_pX2Game == nil then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
    return nil
  end
  g_pX2Game:AddAraGage()
end
function Slash_canon()
  if g_pX2Game == nil then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
    return nil
  end
  g_pX2Game:AddChungCannonBall()
end
function Slash_Scanon()
  if g_pX2Game == nil then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
    return nil
  end
  g_pX2Game:AddChungExtraCannonBall()
end
function Slash_monhp(setHpValue)
  if g_pX2Game == nil then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
    return nil
  end
  local iNumOfNpc = g_pX2Game:GetNPCUnitListSize()
  for i = 0, iNumOfNpc - 1 do
    local pNpc = g_pX2Game:GetNPCUnit(i)
    if nil ~= pNpc then
      local npcHp = pNpc:GetNowHP_LUA()
      if npcHp > 0 then
        pNpc:SetNowHP_LUA(setHpValue)
      end
    end
  end
end
function Slash_monhpR(SetHpPercent)
  if g_pX2Game == nil then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
    return nil
  end
  local iNumOfNpc = g_pX2Game:GetNPCUnitListSize()
  for i = 0, iNumOfNpc - 1 do
    local pNpc = g_pX2Game:GetNPCUnit(i)
    if nil ~= pNpc then
      local npcHp = pNpc:GetNowHP_LUA()
      if npcHp > 0 then
        local setHp = pNpc:GetMaxHP() * SetHpPercent * 0.01
        pNpc:SetNowHP_LUA(setHp)
      end
    end
  end
end
function Slash_CM(npcName, npcNum)
  if g_pX2Game == nil then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
    return nil
  end
  local iNpcNum = npcNum
  if iNpcNum == nil then
    iNpcNum = 1
  end
  npcName = string.upper(npcName)
  npcEnumID = string.format("NUI_%s", npcName)
  if NPC_UNIT_ID[npcEnumID] == nil then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\236\158\152\235\170\187\235\144\156 \235\170\172\236\138\164\237\132\176 \236\157\180\235\166\132\236\158\133\235\139\136\235\139\164.")
    return nil
  end
  myUnit = g_pX2Game:GetMyUnit()
  if myUnit == nil then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\235\130\152\236\157\152 \236\156\160\235\139\155\236\157\132 \236\176\190\236\157\132 \236\136\152 \236\151\134\236\138\181\235\139\136\235\139\164.")
    return nil
  end
  pos = myUnit:GetPos()
  bRight = myUnit:GetIsRight()
  if iNpcNum > 50 then
    iNpcNum = 50
  end
  for i = 0, iNpcNum do
    g_pX2Game:CreateNPCReq_LUA(NPC_UNIT_ID[npcEnumID], 1, true, pos, bRight, 0, false)
  end
  g_pGameEdit:AddString(CHAT_TYPE.CT_NORMAL, npcEnumID)
  g_pGameEdit:SetLastCreatedMonster(NPC_UNIT_ID[npcEnumID])
end
function Slash_invin(checkOnOff)
  if g_pX2Game == nil then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\178\140\236\158\132\236\164\145\236\151\144\235\167\140 \236\139\164\237\150\137 \234\176\128\235\138\165\237\149\169\235\139\136\235\139\164")
    return nil
  end
  local pUnit = g_pX2Game:GetMyUnit()
  if pUnit == nil then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\236\156\160\235\139\155\236\157\180 \236\151\134\236\138\181\235\139\136\235\139\164.")
    return nil
  end
  local check = false
  if checkOnOff == 0 then
    check = true
  elseif checkOnOff == 1 then
    check = false
  else
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "0,1\236\157\132 \236\158\133\235\160\165\237\149\152\236\132\184\236\154\148.")
    return nil
  end
  pUnit:SetInvincible_Cheat(check)
end
function Slash_nocooltime()
  g_pMain:SetNoCoolTime(true)
end
function Slash_destroy(iSelect)
  if iSelect < 1 or iSelect > 8 then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "1~8\234\185\140\236\167\128 \236\158\133\235\160\165\237\149\152\236\132\184\236\154\148.")
    return nil
  end
  g_pMain:InventoryClear(iSelect)
end
function Slash_lag(lagTime, lagType)
  if nil == lagTime or nil == lagType then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\236\158\152\235\170\187 \236\158\133\235\160\165\237\149\152\236\152\128\236\138\181\235\139\136\235\139\164.")
  else
    g_pMain:OccurLag_LUA(lagTime, lagType)
  end
end
function Slash_forcehost(bEnable)
  if bEnable == 0 then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\176\149\236\160\156 host \237\149\180\236\160\156")
    g_pMain:ForceHost_LUA(bEnable)
  elseif bEnable == 1 then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\176\149\236\160\156 host \236\132\164\236\160\149")
    g_pMain:ForceHost_LUA(bEnable)
  else
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\236\158\152\235\170\187 \236\158\133\235\160\165\237\149\152\236\152\128\236\138\181\235\139\136\235\139\164.")
  end
end
function Slash_switchconnect(mode)
  if mode == 0 then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\234\184\176\235\179\184\235\176\169\236\139\157 \236\151\176\234\178\176")
    g_pMain:SwitchConnect_LUA(mode)
  elseif mode == 1 then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "p2p\235\161\156 \234\176\149\236\160\156 \236\151\176\234\178\176")
    g_pMain:SwitchConnect_LUA(mode)
  elseif mode == 2 then
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "relay\235\161\156 \234\176\149\236\160\156 \236\151\176\234\178\176")
    g_pMain:SwitchConnect_LUA(mode)
  else
    g_pGameEdit:AddString(CHAT_TYPE.CT_KILL, "\236\158\152\235\170\187 \236\158\133\235\160\165\237\149\152\236\152\128\236\138\181\235\139\136\235\139\164.")
  end
end
function Slash_rps(iValue)
  g_pGameEdit:FullChargeRidingStamina(iValue)
end
function Slash_couple(count)
  g_pGameEdit:IncreaseLoverDate_LUA(count)
end
function Slash_EffectLog(iLevel)
  g_pGameEdit:SetEffectLogLevel(iLevel)
end