KL�#    ?   . GetFlag_LUA+    ?   ,G  SetFlag_LUAX    ?  , ? , ?  ,G  GetNowHPSetShowSetShowGage+    ?   ,G  SetFlag_LUA�#  ] �;   < ?B =  ;  ; B :  B ;	 B
 ; B =  ;  =  ;  =  ;  < B < ?B < B < B =  ;   ; C ; C ; C ; C ; C = ! ; " < B# = $ ; % <& ?'B( < B) < B* < B+ < B, : : <- ?.CCB/ ;0 B1 : ;2 <3 ?4CC;5 <3 ?4CCB6 : ;9 <7 ?8CCB: = ; ; < <& ?=B( < B) < B* < B+ < B, : : <- ?.CCB/ < B, : ;? <7 ?>CCB: = @ 9 A = B ; C <& ?'B( < B) < B* < B+ < B, : : <- ?.CCB/ ;D B1 : ;E <7 ?>CC;F <7 ?8CCB: = G ; H <& ?'B( < B) < BI ;J BK < B* < B+ < B, < BL < BM ;N B1 : ;O <3 ?4CCB6 : ;P <7 ?8CCB: = Q 9 R = S 9 T = U ; V <& ?'B( < B) < BI ;W BK < B* < B+ < B, < BL < BM ;X B1 : ;Y <3 ?4CCB6 = Z 9 [ = \ G  *ELYSION_S_SKILL_BOSS_DYING_START_FUNC ELYSION_S_SKILL_BOSS_DYING  "EffectSet_COMMAND_OBJECT_DIE1   ��������#Elysion_S_Skill_Boss_Dying.ogg   d ANIM_NAMEDying2-ELYSION_S_SKILL_BOSS_PICK_ME_UP_END_FUNC /ELYSION_S_SKILL_BOSS_PICK_ME_UP_START_FUNC $ELYSION_S_SKILL_BOSS_PICK_ME_UP   ELYSION_S_SKILL_BOSS_DYING  9EffectSet_Elysion_Soless_Atttack_C_Knife_Die_Abosorb   ��������#Elysion_S_Skill_Boss_Dying.oggIMMADIATE_PACKET_SENDDYING_ENDINVINCIBLE   dLAND_CONNECT ANIM_NAMEDying1 ELYSION_S_SKILL_BOSS_DAMAGE   ELYSION_S_SKILL_BOSS_WAIT   $ELYSION_S_SKILL_BOSS_PICK_ME_UP'CF_ELYSION_S_SKILL_BOSS_PICK_ME_UP  ��������$Elysion_S_Skill_Boss_Damage.ogg PASSIVE_SPEED_X ANIM_NAMEDamagePASSIVE_SPEED_Y 'CF_ELYSION_S_SKILL_BOSS_PICK_ME_UP ELYSION_S_SKILL_BOSS_WAIT   $ELYSION_S_SKILL_BOSS_PICK_ME_UP'CF_ELYSION_S_SKILL_BOSS_PICK_ME_UPSCT_CONDITION_FUNCTIONXAP_LOOP PASSIVE_SPEED_X ANIM_NAME	WaitPASSIVE_SPEED_Y ELYSION_S_SKILL_BOSS_STARTEVENT_PROCESS   ELYSION_S_SKILL_BOSS_WAITSCT_MOTION_ENDSTATE_CHANGE_TYPEEFFECT_SET_LIST_EX  'EffectSet_COMMAND_OBJECT_WAIT_BOSS DCES_DIE DELETE_CONDITION_EFFECT_SET  #EffectSet_COMMAND_OBJECT_START SOUND_PLAY0  ��������#Elysion_S_Skill_Boss_Start.oggINVINCIBLE_ATTACK_TYPEAT_COMMANDATTACK_TYPENEVER_MOVECAN_PASS_UNITCAN_PUSH_UNITTRANSITIONPLAY_TYPEXAP_ONE_WAITXSKIN_ANIM_PLAYTYPE PASSIVE_SPEED_X ANIM_NAME
StartPASSIVE_SPEED_Y INIT_AINO_BRAIN  INIT_STATE DYING_SKYELYSION_S_SKILL_BOSS_DYINGBIG_DAMAGE_LAND_BACK ELYSION_S_SKILL_BOSS_DAMAGESMALL_DAMAGE_AIR ELYSION_S_SKILL_BOSS_DAMAGEFLY_DAMAGE_BACK ELYSION_S_SKILL_BOSS_DAMAGEDAMAGE_REVENGE ELYSION_S_SKILL_BOSS_DAMAGEDOWN_DAMAGE_LAND_FRONT ELYSION_S_SKILL_BOSS_DAMAGEDOWN_DAMAGE_AIR ELYSION_S_SKILL_BOSS_DAMAGESTART_STATEELYSION_S_SKILL_BOSS_STARTDOWN_DAMAGE_LAND_BACK ELYSION_S_SKILL_BOSS_DAMAGESMALL_DAMAGE_LAND_FRONT ELYSION_S_SKILL_BOSS_DAMAGEFLY_DAMAGE_FRONT ELYSION_S_SKILL_BOSS_DAMAGEREVENGE_ATTACKWAIT_STATEELYSION_S_SKILL_BOSS_WAITBIG_DAMAGE_LAND_FRONT ELYSION_S_SKILL_BOSS_DAMAGESMALL_DAMAGE_LAND_BACK ELYSION_S_SKILL_BOSS_DAMAGEBIG_DAMAGE_AIR ELYSION_S_SKILL_BOSS_DAMAGEDYING_LAND_BACKELYSION_S_SKILL_BOSS_DYINGUP_DAMAGE ELYSION_S_SKILL_BOSS_DAMAGEDYING_LAND_FRONTELYSION_S_SKILL_BOSS_DYING STATE_NAMEELYSION_S_SKILL_BOSS_DYINGLUA_STATE_START_FUNC*ELYSION_S_SKILL_BOSS_DYING_START_FUNC STATE_NAME$ELYSION_S_SKILL_BOSS_PICK_ME_UPLUA_STATE_START_FUNC/ELYSION_S_SKILL_BOSS_PICK_ME_UP_START_FUNCLUA_STATE_END_FUNC-ELYSION_S_SKILL_BOSS_PICK_ME_UP_END_FUNC STATE_NAME ELYSION_S_SKILL_BOSS_DAMAGE STATE_NAMEELYSION_S_SKILL_BOSS_WAIT STATE_NAMEELYSION_S_SKILL_BOSS_STARTINIT_COMPONENTALPHA_BLEND_ALWAYSNOT_EXTRA_DAMAGE	TRUEHTD_WOODHITTED_TYPEUSE_SLASH_TRACE
FALSE SHADOW_FILE_NAMEshadow.ddsMAX_HP�MP_CHANGE_RATE MP_CHARGE_RATE SMALL_HP_BAR_REDSmall_HP_bar_Red.TGAMAX_HYPER_MODE_TIMESMALL_HP_BAR_BLUESmall_HP_bar_Blue.TGAHEAD_BONE_NAME
Bip01HYPER_MODE_COUNT EXCLAMATION_MARK_SEQSHADOW_SIZE QUESTION_MARK_SEQINIT_PHYSIC RUN_SPEED RELOAD_ACCEL�DASH_JUMP_SPEED WALK_SPEED G_ACCEL MAX_G_SPEED JUMP_SPEED INIT_MOTION MOTION_FILE_NAMEMotion_S_SKILL_OBJECT.xINIT_DEVICEREADY_SOUND  #Elysion_S_Skill_Boss_Dying.ogg$Elysion_S_Skill_Boss_Damage.ogg#Elysion_S_Skill_Boss_Start.oggREADY_XMESH  Up_Light01_Mesh.YREADY_XSKIN_MESHREADY_TEXTURE    Gate_Light01_Gray.ddsGate_Light2_R.ddsParticle_Blur.ddsHELLPUTT_GuideArrow02.ddsINIT_SYSTEMUNIT_LAYERXL_UNIT_0X2_LAYER UNIT_HEIGHT�UNIT_SCALE�������UNIT_WIDTH� 