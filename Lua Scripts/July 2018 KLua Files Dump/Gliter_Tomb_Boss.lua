KL�� 	  ?    ?< ?, , ?< ?,   T� ?   ,G  SetFlag_LUA+NUI_GLITER_ALCHEMYST_SECRET_BOSS_EXTRANUI_GLITER_ZOMBIE_HELLNPC_UNIT_IDLiveNPCNumType_LUASetInt_LUA�    ? < ?,  ?  , T�  T� H T� H G  GetFlag_LUANUI_GLITER_ZOMBIE_HELLNPC_UNIT_IDLiveNPCNumType_LUA�  C ?   ,  T<� ?, ?,  T4� ?, ?  , T� ?, ?< ?	 ?,<		 
  ?
,   ,	T� ?< ?	 ?,<	 
  ?
,   ,	 ?, ?%,G  SetNowHPGetNowHP	TRUEGetIsRight
FALSEGetHardLevelNUI_GLITER_ZOMBIE_HELLNPC_UNIT_IDCreateNPCReq_LUAGetFlag_LUAGetMaxHPIsHostGetPosAnimEventTimer_LUA��̙��������������̙�����  Z �;   < ?B < ?B =  ; 	 ; B
 ; B =  ;  =  ;  =  ;  < B < B < ?B < B =  ;  ; C ; C ; C ; C ; C =   ; $ ;# <! ?"B!B% = & ; ' <( ?)B* < B+ < B, <- B. < B/ < B0 <- B1 ;2 B3 ;4 B5 ;6 B7 : ;: <8 ?9CCB; = < 9 = = > ; ? <( ?)B* < B+ < B, < B/ < B0 <- B1 <- B@ ;A B7 : ;C <8 ?BCCB; = D 9 E = F ; G <( ?)B* < B+ < B, <- B/ < B0 <- B1 <- BH ;I B3 ;J B7 : ;K <8 ?9CCB; = L 9 M = N ; O <( ?)B* <- B+ < B, <- B/ < B0 <- B1 : ;P <8 ?9CCB; = Q ; R <( ?)B* < B+ < B, ;S BT < B/ <- B0 <- BU <- BV ;W B3 ;X B7 = Y G  GLITER_TOMB_DYING   EffectSet_GILTER_TOMB_DYING   ��������!GLITER_TOMBSTONE_Dying01.oggIMMADIATE_PACKET_SENDDYING_ENDINVINCIBLE   d ANIM_NAME
DyingGLITER_TOMB_DAMAGE   GLITER_TOMB_WAIT PASSIVE_SPEED_X ANIM_NAMEDamagePASSIVE_SPEED_Y #GLITER_TOMB_RESPAWN_FRAME_MOVE GLITER_TOMB_RESPAWN   GLITER_TOMB_WAIT  !EffectSet_GILTER_TOMB_SUMMON   ��������#GLITER_TOMBSTONE_Respawn01.oggSUPER_ARMOR PASSIVE_SPEED_X ANIM_NAME	WaitCOOL_TIMEPASSIVE_SPEED_Y CF_GLITER_TOMB_RESPAWN GLITER_TOMB_WAIT   GLITER_TOMB_RESPAWNCF_GLITER_TOMB_RESPAWNSCT_CONDITION_FUNCTION  EffectSet_GILTER_TOMB_WAIT #DELETE_EFFECT_SET_ON_STATE_END PASSIVE_SPEED_X ANIM_NAME	WaitPASSIVE_SPEED_Y "GLITER_TOMB_START_STATE_START GLITER_TOMB_STARTEVENT_PROCESS   GLITER_TOMB_WAITSCT_MOTION_ENDSTATE_CHANGE_TYPEEFFECT_SET_LIST   EffectSet_GILTER_TOMB_START SOUND_PLAY1  �̙�����%GLITER_TOMBSTONE_StartWait02.oggSOUND_PLAY0  ��������%GLITER_TOMBSTONE_StartWait01.oggNEVER_MOVECAN_PASS_UNITCAN_PUSH_UNIT
RIGHT	TRUELAND_CONNECTTRANSITIONPLAY_TYPEXAP_ONE_WAITXSKIN_ANIM_PLAYTYPE PASSIVE_SPEED_X ANIM_NAMEStartWaitPASSIVE_SPEED_Y INIT_AITARGET   TARGET_NEAR_RANGE TARGET_LOST_RANGE TARGET_SUCCESS_RATE PRESERVE_LAST_TARGET_RATE TARGET_INTERVAL��TARGET_RANGE ATTACK_TARGET_RATE TP_LOW_HP_FIRSTTARGET_PRIORITYINIT_STATE DYING_SKYGLITER_TOMB_DYINGBIG_DAMAGE_LAND_BACKGLITER_TOMB_DAMAGESMALL_DAMAGE_AIRGLITER_TOMB_DAMAGEFLY_DAMAGE_BACKGLITER_TOMB_DAMAGEDAMAGE_REVENGEGLITER_TOMB_DAMAGEDOWN_DAMAGE_LAND_FRONTGLITER_TOMB_DAMAGEDOWN_DAMAGE_AIRGLITER_TOMB_DAMAGESTART_STATEGLITER_TOMB_STARTDOWN_DAMAGE_LAND_BACKGLITER_TOMB_DAMAGESMALL_DAMAGE_LAND_FRONTGLITER_TOMB_DAMAGEFLY_DAMAGE_FRONTGLITER_TOMB_DAMAGEREVENGE_ATTACKWAIT_STATEGLITER_TOMB_WAITBIG_DAMAGE_LAND_FRONTGLITER_TOMB_DAMAGESMALL_DAMAGE_LAND_BACKGLITER_TOMB_DAMAGEBIG_DAMAGE_AIRGLITER_TOMB_DAMAGEDYING_LAND_BACKGLITER_TOMB_DYINGUP_DAMAGEGLITER_TOMB_DAMAGEDYING_LAND_FRONTGLITER_TOMB_DYING STATE_NAMEGLITER_TOMB_DYING STATE_NAMEGLITER_TOMB_DAMAGE STATE_NAMEGLITER_TOMB_RESPAWNLUA_FRAME_MOVE_FUNC#GLITER_TOMB_RESPAWN_FRAME_MOVESTATE_COOL_TIME STATE_NAMEGLITER_TOMB_WAIT STATE_NAMEGLITER_TOMB_STARTLUA_STATE_START_FUNC"GLITER_TOMB_START_STATE_STARTINIT_COMPONENTDAMAGE_DOWNHTD_WOODHITTED_TYPEDIE_FLYUSE_SLASH_TRACE
FALSE SHADOW_FILE_NAMEshadow.ddsMP_CHANGE_RATE SMALL_HP_BAR_BLUESmall_HP_bar_Blue.TGAHYPER_MODE_COUNT SMALL_HP_BAR_REDSmall_HP_bar_Red.TGAHEAD_BONE_NAMEDummy01MAX_HP�	SHADOW_SIZE SMALL_HP_BAR_YELLOWSmall_HP_bar_Yellow.TGAMP_CHARGE_RATE MAX_HYPER_MODE_TIMEEXCLAMATION_MARK_SEQQUESTION_MARK_SEQINIT_PHYSIC RUN_SPEED RELOAD_ACCEL�DASH_JUMP_SPEED WALK_SPEED G_ACCEL�MAX_G_SPEED����JUMP_SPEED INIT_MOTION MOTION_FILE_NAMEMotion_GLITER_TOMBSTONE.xINIT_DEVICEREADY_SOUND  "GLITER_TOMBSTONE_Broken01.ogg%GLITER_TOMBSTONE_StartWait01.ogg%GLITER_TOMBSTONE_StartWait02.ogg#GLITER_TOMBSTONE_Respawn01.oggREADY_TEXTURE    NUI_GLITER_TOMBSTONE .tgaINIT_SYSTEMRENDER_PARAMRT_CARTOONRENDER_TYPEUNIT_LAYERXL_UNIT_0X2_LAYER UNIT_HEIGHT�UNIT_WIDTH2 