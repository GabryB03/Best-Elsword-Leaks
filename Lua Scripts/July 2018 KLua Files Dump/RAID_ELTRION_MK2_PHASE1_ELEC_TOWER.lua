KL�    G  a   
 ?  , ?<  ,G  FLAG_WAIT_TO_STARTSetFlag_LUASetShowHpSmallGage�    ? , ?,
  T� ?, ? , T� ?<  ,G  FLAG_WAIT_TO_STARTSetFlag_LUA$FIELD_BOSS_IRON_ELTRION_S1_WAITGetStateID_LUAGetNowStateIDGetRaidBossNPCGetNewBossRaid>    ? <  ,G  FLAG_ACTION_TO_ENDSetFlag_LUA� 	  ,  ?   , T� ?,
  T� ?  , ?  , ?, ?,
  T� ?, ?	 , T� ?
<  ,G  FLAG_ACTION_TO_ENDSetFlag_LUA*FIELD_BOSS_IRON_ELTRION_S1_MOVE_TO_S2GetStateID_LUAGetNowStateIDGetRaidBossNPCGetNewBossRaidSetTimerRestart(EffectSet_Eltrion_MK2_MagneticFieldPlayEffectSet_LUAGetEffectSetGetTimerElapsedTime    G  �"  n �   =     =  ;  < ?B < ?B = 	 ;  ;
 B :  B ; B ; B =  ;  =  ;  =  ;  < B < ?B < B < ?B < B < B  <! B" = # ; ) ;$ C ;% C ;& C ;' C ;( C = * ; . ;- <+ ?,B+B/ ;0 B1 ;2 B3 = 4 ; 5 <6 ?7B8 < B9 < B: <! B; <! B< ;= B> <! B? <! B@ <! BA <! BB :  BC : ;F <D ?ECCBG <! BH = I 9 J = K ; L <6 ?MB8 < B9 < B: < B; <! B< <! BB ;N B> <! BA : ;P <D ?OCCBG ;Q <  BRBS = T 9 U = V 9 W = X ; Y <6 ?MB8 < B9 < B: < B; <! B< <! BB ;Z B> <! BA : ;[ <D ?OCCBG ;\ < BRB] = ^ 9 _ = ` 9 a = b ; c <6 ?7B8 < B9 < B: < B; <! B< <! BB ;d B> <! BA : ;e <D ?ECCBG = f ; g <6 ?7B8 < B9 < Bh < B; <! B< <! BB ;i B> <! Bj <! BA < B: = k 9 l = m G  2RAID_ELTRION_MK2_ELEC_TOWER_COMMON_FRAME_MOVE &RAID_ELTRION_MK2_ELEC_TOWER_DYINGDYING_END   dLAND_CONNECT ANIM_NAMEEnd$RAID_ELTRION_MK2_ELEC_TOWER_END   %RAID_ELTRION_MK2_ELEC_TOWER_WAIT   d ANIM_NAMEEnd2RAID_ELTRION_MK2_ELEC_TOWER_ACTION_FRAME_MOVE 2RAID_ELTRION_MK2_ELEC_TOWER_ACTION_WAIT_START 'RAID_ELTRION_MK2_ELEC_TOWER_ACTION'CT_RAID_ELTRION_MK2_ELEC_TOWER_END 	RATEd   $RAID_ELTRION_MK2_ELEC_TOWER_END'CT_RAID_ELTRION_MK2_ELEC_TOWER_END   d ANIM_NAMEAction0RAID_ELTRION_MK2_ELEC_TOWER_WAIT_FRAME_MOVE +RAID_ELTRION_MK2_ELEC_TOWER_WAIT_START %RAID_ELTRION_MK2_ELEC_TOWER_WAIT)CT_RAID_ELTRION_MK2_ELEC_TOWER_STARTFLAG_TRUE 	RATEd   &RAID_ELTRION_MK2_ELEC_TOWER_START)CT_RAID_ELTRION_MK2_ELEC_TOWER_STARTSCT_CONDITION_TABLE   dXAP_LOOP ANIM_NAME	Wait,RAID_ELTRION_MK2_ELEC_TOWER_START_START &RAID_ELTRION_MK2_ELEC_TOWER_STARTDELETE_EFFECT_SET_ON_DIEEVENT_PROCESS   'RAID_ELTRION_MK2_ELEC_TOWER_ACTIONSCT_MOTION_ENDSTATE_CHANGE_TYPEEFFECT_SET_LISTNEVER_MOVEIMMADIATE_PACKET_SENDSUPER_ARMOR_NOT_REDSUPER_ARMORINVINCIBLE   dCAN_PASS_UNITCAN_PUSH_UNITSHOW_NAMETRANSITIONPLAY_TYPEXAP_ONE_WAITXSKIN_ANIM_PLAYTYPE ANIM_NAME
StartINIT_AIPATROL_MOVE PATROL_BEGIN_RATE CHASE_MOVE UP_JUMP_RATEdDOWN_DOWN_RATE(WALK_INTERVAL�NJUMP_INTERVALUP_DOWN_RATEMOVE_GAP�DOWN_JUMP_RATEdDEST_GAP�DIR_CHANGE_INTERVAL�NLINE_END_RANGEPFAR_WALK_RATEdMOVE_SPLIT_RANGE�NEAR_WALK_RATEdTARGET   TARGET_NEAR_RANGE TARGET_LOST_RANGE TARGET_SUCCESS_RATE PRESERVE_LAST_TARGET_RATE TARGET_INTERVAL�NTARGET_RANGE ATTACK_TARGET_RATE TP_LOW_HP_FIRSTTARGET_PRIORITYINIT_STATE WAIT_STATE'RAID_ELTRION_MK2_ELEC_TOWER_ACTIONDYING_SKY&RAID_ELTRION_MK2_ELEC_TOWER_DYINGDYING_LAND_BACK&RAID_ELTRION_MK2_ELEC_TOWER_DYINGCOMMON_FRAME_FUNC2RAID_ELTRION_MK2_ELEC_TOWER_COMMON_FRAME_MOVEDYING_LAND_FRONT&RAID_ELTRION_MK2_ELEC_TOWER_DYINGREVENGE_ATTACKSTART_STATE%RAID_ELTRION_MK2_ELEC_TOWER_WAIT STATE_NAME&RAID_ELTRION_MK2_ELEC_TOWER_DYINGLUA_STATE_START_FUNC,RAID_ELTRION_MK2_ELEC_TOWER_DYING_START STATE_NAME$RAID_ELTRION_MK2_ELEC_TOWER_END STATE_NAME'RAID_ELTRION_MK2_ELEC_TOWER_ACTIONLUA_FRAME_MOVE_FUNC2RAID_ELTRION_MK2_ELEC_TOWER_ACTION_FRAME_MOVELUA_STATE_START_FUNC2RAID_ELTRION_MK2_ELEC_TOWER_ACTION_WAIT_START STATE_NAME%RAID_ELTRION_MK2_ELEC_TOWER_WAITLUA_FRAME_MOVE_FUNC0RAID_ELTRION_MK2_ELEC_TOWER_WAIT_FRAME_MOVELUA_STATE_START_FUNC+RAID_ELTRION_MK2_ELEC_TOWER_WAIT_START STATE_NAME&RAID_ELTRION_MK2_ELEC_TOWER_STARTLUA_STATE_START_FUNC,RAID_ELTRION_MK2_ELEC_TOWER_START_STARTINIT_COMPONENTNOT_EXTRA_DAMAGE	TRUEDIE_FLYDAMAGE_DOWNBGI_FIELD_BOSSBUFF_GROUP_IDFALL_DOWNHTD_METALHITTED_TYPEUSE_SLASH_TRACE
FALSE SHADOW_FILE_NAMEshadow.ddsMP_CHANGE_RATEEXCLAMATION_MARK_SEQExclamationMarkNPCHP_CHANGE_RATE
MP_CHARGE_RATE�SHADOW_SIZE�QUESTION_MARK_SEQQuestionMarkNPCINIT_PHYSIC RUN_SPEED RELOAD_ACCEL�DASH_JUMP_SPEED WALK_SPEED G_ACCEL�MAX_G_SPEED����JUMP_SPEED INIT_MOTION MOTION_FILE_NAME)RAID_ELTRION_MK2_PHASE1_ELEC_TOWER.XINIT_DEVICEREADY_XSKIN_MESH  DummyAttackBox_300x50x50.XREADY_XMESH  AEM_M_lightning01.YUp_Light01_Mesh.YREADY_SOUNDREADY_TEXTURE    GuideArrow02.dds"PROTECT_GUARD_MAGIC_Map04.dds6secretVelder_alchemystBoss_magicAttackB_spark.dds FireBall02_Monster_Blue.tga%Lightning_Eve_Spit_Fire01_RE.tgaINIT_SYSTEMRENDER_PARAMRT_REAL_COLORRENDER_TYPEUNIT_LAYERXL_UNIT_0X2_LAYER UNIT_HEIGHTdUNIT_SCALEUNIT_WIDTHdFLAG_ACTION_TO_ENDFLAG_WAIT_TO_START 