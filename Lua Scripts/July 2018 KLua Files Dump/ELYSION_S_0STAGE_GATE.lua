KL��   +<   ?  , T�<  , ?< ?,
  T� ?  ,<  ,T�< 	 , ?< ?
,
  T� ?  ,<  ,G  =히든 스테이지 진입용 몬스터 죽었습니다~NUI_ELYSION_HIDE_STAGE_B:히든 스테이지 진입용 몬스터 죽입니다~=일반 스테이지 진입용 몬스터 죽었습니다~SetNowHPNUI_ELYSION_HIDE_STAGE_ANPC_UNIT_IDGetNPCUnitByType:일반 스테이지 진입용 몬스터 죽입니다~
printGetInt_LUAg_iHiddenStageCondition0    ?  ,G  SetActiveTrigger_LUAE   ? ,	  T� H T� H G  LiveActiveNPCNum U    ? ,= <  ?  ,G  SetUseTexpXSkinAnimGetXSkinAnim�  N �   =   ;  < ?B < ?B =  ; 	 :  B
 :  B =  ;  ; B =  ;  =  ;  < B < ?B < B < B =  ;   ; C ; C ; C ; C = ! ; % ;$ <" ?#B"B& = ' ; ( <) ?*B+ < B, < B- < B. ;/ B0 < B1 : ;4 <2 ?3CCB5 = 6 ; 7 <) ?*B+ < B, < B- < B. < B1 :  B5 = 8 ; 9 <) ?*B+ < B, < B- < B. < B1 ;: B; : ;= <2 ?<CCB5 = > ; ? <) ?*B+ < B, < B@ ;A B0 < B- < B. < B1 < BB < BC ;D B; = E 9 F = G 9 H = I 9 J = K 9 L = M G  +ELYSION_S_0STAGE_GATE_WAIT_START_STATE "CF_ELYSION_S_0STAGE_GATE_WAIT 5ELYSION_S_0STAGE_GATE_WAIT_INVINCIBLE_START_FUNC +ELYSION_S_0STAGE_GATE_DYING_START_FUNC  ELYSION_S_0STAGE_GATE_DYING  ��Ɨ����Open_Wood.oggIMMADIATE_PACKET_SENDDYING_END   dLAND_CONNECT ANIM_NAMEBrokenDYING_SPEED ����!ELYSION_S_0STAGE_GATE_DAMAGE   ELYSION_S_0STAGE_GATE_WAITSCT_MOTION_ENDSOUND_PLAY0  ��Ɨ����Hit_Wood01.ogg PASSIVE_SPEED_X ANIM_NAMEDamagePASSIVE_SPEED_Y ELYSION_S_0STAGE_GATE_WAIT PASSIVE_SPEED_X ANIM_NAME	WaitPASSIVE_SPEED_Y *ELYSION_S_0STAGE_GATE_WAIT_INVINCIBLEEVENT_PROCESS   ELYSION_S_0STAGE_GATE_WAIT"CF_ELYSION_S_0STAGE_GATE_WAITSCT_CONDITION_FUNCTIONSTATE_CHANGE_TYPENEVER_MOVEINVINCIBLE   �NCAN_PASS_UNITCAN_PUSH_UNITTRANSITIONPLAY_TYPEXAP_ONE_WAITXSKIN_ANIM_PLAYTYPE PASSIVE_SPEED_X ANIM_NAME	WaitPASSIVE_SPEED_Y INIT_AITARGET   TARGET_NEAR_RANGE TARGET_LOST_RANGE TARGET_SUCCESS_RATE PRESERVE_LAST_TARGET_RATE TARGET_INTERVAL��TARGET_RANGE ATTACK_TARGET_RATE TP_LOW_HP_FIRSTTARGET_PRIORITYINIT_STATE DYING_SKY ELYSION_S_0STAGE_GATE_DYINGBIG_DAMAGE_LAND_BACK!ELYSION_S_0STAGE_GATE_DAMAGESMALL_DAMAGE_AIR!ELYSION_S_0STAGE_GATE_DAMAGEFLY_DAMAGE_BACK!ELYSION_S_0STAGE_GATE_DAMAGEDAMAGE_REVENGE!ELYSION_S_0STAGE_GATE_DAMAGEDOWN_DAMAGE_LAND_FRONT!ELYSION_S_0STAGE_GATE_DAMAGEDOWN_DAMAGE_AIR!ELYSION_S_0STAGE_GATE_DAMAGESTART_STATE*ELYSION_S_0STAGE_GATE_WAIT_INVINCIBLEDOWN_DAMAGE_LAND_BACK!ELYSION_S_0STAGE_GATE_DAMAGESMALL_DAMAGE_LAND_FRONT!ELYSION_S_0STAGE_GATE_DAMAGEFLY_DAMAGE_FRONT!ELYSION_S_0STAGE_GATE_DAMAGEREVENGE_ATTACKWAIT_STATEELYSION_S_0STAGE_GATE_WAITBIG_DAMAGE_LAND_FRONT!ELYSION_S_0STAGE_GATE_DAMAGESMALL_DAMAGE_LAND_BACK!ELYSION_S_0STAGE_GATE_DAMAGEBIG_DAMAGE_AIR!ELYSION_S_0STAGE_GATE_DAMAGEDYING_LAND_BACK ELYSION_S_0STAGE_GATE_DYINGUP_DAMAGE!ELYSION_S_0STAGE_GATE_DAMAGEDYING_LAND_FRONT ELYSION_S_0STAGE_GATE_DYING STATE_NAME ELYSION_S_0STAGE_GATE_DYINGLUA_STATE_START_FUNC+ELYSION_S_0STAGE_GATE_DYING_START_FUNC STATE_NAME!ELYSION_S_0STAGE_GATE_DAMAGE STATE_NAMEELYSION_S_0STAGE_GATE_WAITLUA_STATE_START_FUNC+ELYSION_S_0STAGE_GATE_WAIT_START_STATE STATE_NAME*ELYSION_S_0STAGE_GATE_WAIT_INVINCIBLELUA_STATE_START_FUNC5ELYSION_S_0STAGE_GATE_WAIT_INVINCIBLE_START_FUNCINIT_COMPONENTDIE_FLYNOT_EXTRA_DAMAGE	TRUEHTD_STONEHITTED_TYPEUSE_SLASH_TRACE
FALSE SHADOW_FILE_NAMEshadow.ddsMAX_HP�MP_CHANGE_RATE MP_CHARGE_RATE SMALL_HP_BAR_REDSmall_HP_bar_Red.TGAMAX_HYPER_MODE_TIMESMALL_HP_BAR_BLUESmall_HP_bar_Blue.TGAHEAD_BONE_NAMEBip01_HeadHYPER_MODE_COUNT EXCLAMATION_MARK_SEQSHADOW_SIZE QUESTION_MARK_SEQINIT_PHYSIC RUN_SPEED RELOAD_ACCEL�DASH_JUMP_SPEED WALK_SPEED G_ACCEL MAX_G_SPEED JUMP_SPEED INIT_MOTIONMULTI_TEX_SPEED    ���� MOTION_MULTI_TEX_XET Motion_Chain_Gate_Green.xetMOTION_FILE_NAMEMotion_S_0STAGE_GATE.xADD_ROTATE_Y����INIT_DEVICEREADY_SOUNDREADY_TEXTURE  INIT_SYSTEMRENDER_PARAMRT_CARTOONRENDER_TYPEUNIT_LAYERXL_UNIT_0X2_LAYER UNIT_HEIGHT�UNIT_SCALEUNIT_WIDTH2g_iHiddenStageCondition 