KL�� 	   ? , ?  ,  T� ?, ?  ,  ?   ,G  SetEffectSet_LUA!EffectSet_Spriggan_Big_StartPlayEffectSet_LUAGetEffectSetGetEffectSet_LUASetUnCloaking�    ? , ?, ?  ,
  T� ? , ?  ,G  ClearEffectSet_LUAStopEffectSet_LUAGetEffectSet_LUAGetEffectSetSetCloaking%    ? ,G  SetUnCloaking�   ? , ?, ? ?,    , ?  	  ?
,
 +G  GetRotateDegree$EffectSet_SPRIGGAN_BIG_ATTACK_D#PlayEffectSetWithCustomPos_LUAGetPosGetFarthestUserUnitPos_LUAGetEffectSetSetUnCloaking��z� 	 % ? , ?,  	  T� ? , T�	 T� ? , T� ?< ?, 
  T� ?  ,G  "SPRIGGAN_SMALL_SPECIAL_ATTACKStateChange_LUANUI_SPRIGGAN_SMALLNPC_UNIT_IDGetConsultNpcGetKeyCodeNPCGetKeyCodeSetUnCloaking    G      G  M   ?  ? &$B  ? ?&$B ? ?&$B H  zyx�5  � �;   < ?B =  ;  :  B ; B :  B	 :  B
 =  ;  =  ;  =  ;  < ?B < B < B < B ; < BB =  ; ' ; C ; C ; C ; C ;  C ;! C ;" C ;# C ;$ C	 ;% C
 ;& C = ( ; , ;+ <) ?*B)B- ;. B/ = 0 ; 1 <2 ?3B4 < B5 < B6 < B7 < B8 ;9 B: < B; < B< < B= : ;@ <> ??CC;A <> ??CC;B <> ??CCBC ;D BE ;F BG ;H BI = J 9 K = L ; M <2 ?3B4 < B5 < B6 < B7 < B8 ;N B: < B= = O 9 P = Q ; R <2 ?SB4 < B5 < B7 < B8 ;T B: ;U < BV<W BX< BY<Z ?[BZB\ < B< < B= : ;^ <> ?]CCBC = _ ; ` <2 ?SB4 < B5 < B6 < B7 < B8 ;a Bb ;c B: < B= ;d Be : ;f <> ?]CCBC = g 9 h = i ; j <2 ?SB4 < B5 < B7 < B8 ;k B: < B< < B= : ;l <> ?]CCBC = m ; n <2 ?SB4 < B5 < B6 < B7 < B8 ;o B: < B; < B< < B= ;p Bb : ;q <> ?]CCBC = r 9 s = t ; u <2 ?SB4 < B5 < B6 < B7 ;v B: < B< < B= ;w < BV<x BX< BY<Z ?[BZB\ ;y Bb : ;z <> ?]CCBC = { 9 | = } ; ~ <2 ?SB4 < B5 < B6 < B7 ; B: < B= ;� Be ;� Bb : ;� <> ?]CCBC = � ; � <2 ?SB4 < B5 < B6 ;� B: < B7 < B8 : ;� <> ?]CCBC = � ; � <2 ?SB4 < B5 < B6 ;� B: < B7 < B8 < B� < B= = � ; � <2 ?SB4 < B5 < B6 ;� B: < B7 < B8 < B� < B= = � ; � <2 ?SB4 < B5 < B6 ;� B: < B7 < B8 < B� < B= = � 9 � = � 9 � = � 9 � = � G  MovePos (SPRIGGAN_BIG_DYING_LAND_STATE_START #SPRIGGAN_BIG_COMMON_FRAME_MOVE SPRIGGAN_BIG_DYING_SKY   d ANIM_NAME	Wait!SPRIGGAN_BIG_DYING_LAND_BACK   d ANIM_NAME	Wait"SPRIGGAN_BIG_DYING_LAND_FRONTDYING_END   d ANIM_NAME	WaitSPRIGGAN_BIG_DAMAGE   SPRIGGAN_BIG_WAIT   d PASSIVE_SPEED_X ANIM_NAME	WaitPASSIVE_SPEED_Y  SPRIGGAN_BIG_SPECIAL_ATTACK   SPRIGGAN_BIG_WAIT  ����	����&Spriggan_Big_SpecialAttackAll.ogg  /EffectSet_SPRIGGAN_BIG_SPECIAL_ATTACK_FIRE    d ANIM_NAMESpecialAttackA_Fire,SPRIGGAN_BIG_SPECIAL_ATTACK_STATE_START &SPRIGGAN_BIG_SPECIAL_ATTACK_READY    SPRIGGAN_BIG_SPECIAL_ATTACK  ����	����&Spriggan_Big_SpecialAttackAll.oggSTR_ID_15147 
DELAY DISAPPEAR_TIME   d ANIM_SPEED����	����ANIM_NAMESpecialAttackA_Ready&SPRIGGAN_BIG_ATTACK_D_STATE_START SPRIGGAN_BIG_ATTACK_D   SPRIGGAN_BIG_WAIT  ��̙����"Spriggan_Big_MagicAttackB.ogg   d ANIM_NAMEAttackD_Fire SPRIGGAN_BIG_ATTACK_D_READY   SPRIGGAN_BIG_ATTACK_D   d ANIM_NAMEAttackD_Ready&SPRIGGAN_BIG_ATTACK_C_STATE_START SPRIGGAN_BIG_ATTACK_C   SPRIGGAN_BIG_WAITEFFECT_SET_LIST  $EffectSet_SPRIGGAN_BIG_ATTACK_C    dSOUND_PLAY0  ��̙����"Spriggan_Big_MagicAttackB.ogg ANIM_NAMEAttackD_Fire SPRIGGAN_BIG_ATTACK_C_READY   SPRIGGAN_BIG_ATTACK_CSCT_MOTION_END
ALARMACT_ORANGEALARM_COLOR_TYPEREPEATALARM_MESSAGESTR_ID_32139DANGER 
DELAY DISAPPEAR_TIME   dXAP_ONE_WAIT ANIM_NAMEAttackD_Ready"SPRIGGAN_BIG_HIDE_STATE_START SPRIGGAN_BIG_HIDE   d ANIM_NAME	Wait"SPRIGGAN_BIG_WAIT_STATE_START SPRIGGAN_BIG_WAIT)CT_SPRIGGAN_BIG_SPECIAL_ATTACK_READY 	RATEDISTANCE_TO_TARGET_NEAR��EVENT_INTERVAL_ID #CT_SPRIGGAN_BIG_ATTACK_C_READY 	RATEDISTANCE_TO_TARGET_NEAR��EVENT_INTERVAL_ID #CT_SPRIGGAN_BIG_ATTACK_D_READY 	RATE2DISTANCE_TO_TARGET_NEAR��EVENT_INTERVAL_ID EVENT_PROCESS   &SPRIGGAN_BIG_SPECIAL_ATTACK_READY)CT_SPRIGGAN_BIG_SPECIAL_ATTACK_READY    SPRIGGAN_BIG_ATTACK_C_READY#CT_SPRIGGAN_BIG_ATTACK_C_READY    SPRIGGAN_BIG_ATTACK_D_READY#CT_SPRIGGAN_BIG_ATTACK_D_READYSCT_CONDITION_TABLESTATE_CHANGE_TYPEIMMADIATE_PACKET_SENDVIEW_TARGETALLOW_DIR_CHANGEINVINCIBLE   dCAN_PASS_UNITCAN_PUSH_UNITLAND_CONNECTTRANSITIONPLAY_TYPEXAP_LOOPXSKIN_ANIM_PLAYTYPE EVENT_INTERVAL_TIME0��������ANIM_NAME	WaitINIT_AICHASE_MOVE UP_JUMP_RATEdDOWN_DOWN_RATE(WALK_INTERVALJUMP_INTERVALUP_DOWN_RATEMOVE_GAP�DOWN_JUMP_RATEdDEST_GAP�DIR_CHANGE_INTERVAL�̙��̙�LINE_END_RANGEPFAR_WALK_RATEdMOVE_SPLIT_RANGE�NEAR_WALK_RATEdTARGET   TARGET_NEAR_RANGE�>TARGET_LOST_RANGE�TTARGET_SUCCESS_RATEdPRESERVE_LAST_TARGET_RATEdTARGET_INTERVALTARGET_RANGE�RATTACK_TARGET_RATEdTP_LOW_HP_FIRSTTARGET_PRIORITYINIT_STATE DYING_SKYSPRIGGAN_BIG_DYING_SKYBIG_DAMAGE_LAND_BACKSPRIGGAN_BIG_WAITSMALL_DAMAGE_AIRSPRIGGAN_BIG_WAITFLY_DAMAGE_BACKSPRIGGAN_BIG_WAITDAMAGE_REVENGESPRIGGAN_BIG_WAITDOWN_DAMAGE_LAND_FRONTSPRIGGAN_BIG_WAITDOWN_DAMAGE_AIRSPRIGGAN_BIG_WAITSTART_STATESPRIGGAN_BIG_WAITDOWN_DAMAGE_LAND_BACKSPRIGGAN_BIG_WAITSMALL_DAMAGE_LAND_FRONTSPRIGGAN_BIG_WAITFLY_DAMAGE_FRONTSPRIGGAN_BIG_WAITREVENGE_ATTACKWAIT_STATESPRIGGAN_BIG_WAITBIG_DAMAGE_LAND_FRONTSPRIGGAN_BIG_WAITSMALL_DAMAGE_LAND_BACKSPRIGGAN_BIG_WAITBIG_DAMAGE_AIRSPRIGGAN_BIG_WAITDYING_LAND_BACK!SPRIGGAN_BIG_DYING_LAND_BACKUP_DAMAGESPRIGGAN_BIG_WAITCOMMON_FRAME_FUNC#SPRIGGAN_BIG_COMMON_FRAME_MOVEDYING_LAND_FRONT"SPRIGGAN_BIG_DYING_LAND_FRONT STATE_NAMESPRIGGAN_BIG_DYING_SKYLUA_STATE_START_FUNC(SPRIGGAN_BIG_DYING_LAND_STATE_START STATE_NAME!SPRIGGAN_BIG_DYING_LAND_BACKLUA_STATE_START_FUNC(SPRIGGAN_BIG_DYING_LAND_STATE_START STATE_NAME"SPRIGGAN_BIG_DYING_LAND_FRONTLUA_STATE_START_FUNC(SPRIGGAN_BIG_DYING_LAND_STATE_START STATE_NAME SPRIGGAN_BIG_SPECIAL_ATTACK STATE_NAME&SPRIGGAN_BIG_SPECIAL_ATTACK_READYLUA_STATE_START_FUNC,SPRIGGAN_BIG_SPECIAL_ATTACK_STATE_STARTSTATE_COOL_TIME2 STATE_NAMESPRIGGAN_BIG_ATTACK_DLUA_STATE_START_FUNC&SPRIGGAN_BIG_ATTACK_D_STATE_START STATE_NAME SPRIGGAN_BIG_ATTACK_D_READYSTATE_COOL_TIME STATE_NAMESPRIGGAN_BIG_ATTACK_CLUA_STATE_START_FUNC&SPRIGGAN_BIG_ATTACK_C_STATE_START STATE_NAME SPRIGGAN_BIG_ATTACK_C_READYSTATE_COOL_TIME
 STATE_NAMESPRIGGAN_BIG_HIDELUA_STATE_START_FUNC"SPRIGGAN_BIG_HIDE_STATE_START STATE_NAMESPRIGGAN_BIG_WAITLUA_STATE_START_FUNC"SPRIGGAN_BIG_WAIT_STATE_STARTINIT_COMPONENTINVISIBLECLOAKING_UNIT MIN_ALPHA 
SPEEDALPHA_LOWER_BOUND����	����MAX_ALPHAATTRIBUTE_EMOTION_FLAGIMMUNITY_TIME_STOP	TRUEFALL_DOWN
FALSEHTD_MEATHITTED_TYPE MP_CHARGE_RATE�	MP_CHANGE_RATEHEAD_BONE_NAMEBip01_HeadDIE_FLY EXCLAMATION_MARK_SEQExclamationMarkNPCQUESTION_MARK_SEQQuestionMarkNPCINIT_PHYSIC RUN_SPEED�RELOAD_ACCEL�DASH_JUMP_SPEED�WALK_SPEED�G_ACCEL�MAX_G_SPEED����JUMP_SPEED�INIT_MOTION MOTION_FILE_NAME!Motion_VELDER_Spriggan_Big.xINIT_DEVICEREADY_XSKIN_MESHREADY_XMESHREADY_SOUND  Spriggan_Big_AttackB.ogg"Spriggan_Big_AttackCombo1.ogg"Spriggan_Big_MagicAttackB.oggREADY_TEXTURE  INIT_SYSTEMUNIT_LAYERXL_UNIT_0X2_LAYER UNIT_HEIGHT UNIT_SCALE�̙�����UNIT_WIDTH  