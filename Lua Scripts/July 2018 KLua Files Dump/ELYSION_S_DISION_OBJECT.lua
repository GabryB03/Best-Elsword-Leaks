KL�Q  
 ? ,	  T� ?  ,G  SetTimerRestartGetNowStageIndexR   ? ,  T� ? , T� T� H GetNowStageIndex
=  	 ? ,  T� T� H GetNowStageIndex=  	 ? ,  T� T� H GetNowStageIndex#    ?   . GetFlag_LUA�   ?   ,
  T� ?,	  T� ?, ? ,<  T�<  , H  H Dision Invincible End!
print*g_fDisionObjectChangeCondition_Stage3GetDistanceFromGetNearestUserPosGetNowStageIndexGetTimerElapsedTime;   
 ?   ,
 T� T� H GetFlag_LUA� 
 N ? ,  T� ? ,	 T!� ?< ?,
  T� ?  ,<   ��< ?<		 ?	
	, ?< ?, 
  T� ?  , ? ,	 T� ?< ?,
  T� ?  , ? ,	 T� ?< ?,
  T� ?  ,G  ELYSION_S_3STAGE_END_STARTNUI_ELYSION_S_3STAGE_ENDELYSION_S_2STAGE_END_STARTNUI_ELYSION_S_2STAGE_ENDSetNowHPNUI_ELYSION_S_MAYA"BTI_INVINCIBLE_BY_BOSS_SHIELDBUFF_TEMPLET_ID"BFI_INVINCIBLE_BY_BOSS_SHIELDBUFF_FACTOR_ID,SetAndEraseBuffByDistance_DisiionCustom%ELYSION_S_1STAGE_END_START_READYStateChange_LUANUI_ELYSION_S_1STAGE_ENDNPC_UNIT_IDGetNPCUnitByTypeGetNowStageIndex
� 	  ? ,  T� ? ,	 T� ?, T	�<   < < ?< ?,G  "BTI_INVINCIBLE_BY_BOSS_SHIELDBUFF_TEMPLET_ID"BFI_INVINCIBLE_BY_BOSS_SHIELDBUFF_FACTOR_IDg_fDisionBuffDist,SetAndEraseBuffByDistance_DisiionCustomGetDyingStartGetNowStageIndex
�  B  ?  ,    I:�  ?
 	 ,


  T3�
 ?
< ?, T,�
 ?
, ? , T�
 ?
 , ?   ,<	 
 ,T�
 ?
 , T�
 ?
 , ? ,<	  , ?   ,K�G  erase buff%EraseBuffTempletFromGameUnit_LUAHaveThisBuffset buff
printSetFlag_LUA.SetBuffFactorToGameUnitByBuffFactorID_LUAGetDistanceFromGetPosNUI_ELYSION_S_MAYANPC_UNIT_IDIsUnitIDGetNPCUnitGetNPCUnitListSize�  #  ?  ,    I�
  ?	  ,	
	  T
�	 ?
	< ?,

 T
�	 ?
	,
 ?
 , T�	 ?	 ,K�G  .SetBuffFactorToGameUnitByBuffFactorID_LUAGetDistanceFromGetPos NUI_ELYSION_S_DISION_OBJECTNPC_UNIT_IDIsUnitIDGetNPCUnitGetNPCUnitListSize�2  � � �=    �=  ;  =  ;  ; B ; B ;	 B
 ; B =  ;  =  ;  =  ;  < B =  ;  ; C ; C ; C ; C ; C ; C ; C ; C =  ;   <! B" = # ; $ <% ?&B' < B( <! B) <! B* ;+ B, : ;- <. ?/CCB0 : ;3 <1 ?2CC;4 <1 ?2CC;5 <1 ?2CCB6 = 7 9 8 = 9 9 : = ; 9 < = = 9 > = ? ; @ <% ?&B' < B( < B) <! B* <! BA ;B BC : ;E <1 ?DCCB6 ;F BG ;H <! BI<J BK<! BL<M ?NBMBO = P ; Q <% ?&B' < B( < B) <! B* <! BA ;R BC : ;S <1 ?2CCB6 ;T <! BU< BV: <W ?XCBYBZ = [ 9 \ = ] ; ^ <% ?&B' < B( < B) ;_ B, <! B* : ;` <1 ?2CCB6 : ;a <. ?bCCB0 ;c <! BU< BV: <W ?XCBYBZ = d 9 e = f ; g <% ?&B' < B( < B) ;h B, <! B* : ;i <1 ?2CCB6 : ;j <. ?kCCB0 ;l <! BU< BV: <W ?XCBYBZ = m 9 n = o ; p <% ?qB' < B( < B) <! B* ;r B, <! B* : ;t <1 ?sCCB6 ;u Bv = w ; x <% ?qB' < By < Bz <! B( < B) <! B* : ;{ <1 ?sCCB6 ;| Bv = } ; ~ <% ?qB' < By < Bz < B( < B) ; B, <! B� <! B* <! B� : ;� <. ?kCCB0 ;� <! BU< BV: <W ?XCBYBZ = � 9 � = � 9 � = � 9 � = � 9 � = � G  SetBuffByDistance ,SetAndEraseBuffByDistance_DisiionCustom 3ELYSION_S_DISION_OBJECT_COMMON_FRAME_MOVE_FUNC +ELYSION_S_DISION_OBJECT_DYING_END_FUNC "ELYSION_S_DISION_OBJECT_DYING SOUND_NAME&Elysion_S_Dision_Object_Dying.oggPLAY_TIME��Ɨ����  ,EffectSet_Elysion_S_DISION_OBJECT_DYING IMMADIATE_PACKET_SENDDYING_END   d ANIM_NAME
Dying#ELYSION_S_DISION_OBJECT_DAMAGE  ��������'Elysion_S_Dision_Object_Damage.ogg   !ELYSION_S_DISION_OBJECT_WAITLAND_CONNECTTRANSITION ANIM_NAMEDamage#ELYSION_S_DISION_OBJECT_CHANGESOUND_PLAY0  ��������'Elysion_S_Dision_Object_Change.ogg   !ELYSION_S_DISION_OBJECT_WAITSCT_MOTION_END   dXAP_ONE_WAIT ANIM_NAMEChange$CF_ELYSION_S_DISION_OBJECT_WAIT ,ELYSION_S_DISION_OBJECT_MAYA_INVINCIBLE SOUND_NAME0Elysion_S_Dision_Object_Wait_Invincible.oggPLAY_TIME��Ɨ����DCES_STATE_END  #EffectSet_Elysion_Maya_Red_Big    !ELYSION_S_DISION_OBJECT_WAIT$CF_ELYSION_S_DISION_OBJECT_WAIT   d ANIM_NAME
Wait2&CF_ELYSION_S_DISION_OBJECT_CHANGE ,ELYSION_S_DISION_OBJECT_WAIT_INVINCIBLE SOUND_NAME0Elysion_S_Dision_Object_Wait_Invincible.oggPLAY_TIME��Ɨ����DCES_CUSTOM_STATE  ,EffectSet_Elysion_S_DISION_OBJECT_WAIT2    #ELYSION_S_DISION_OBJECT_CHANGE&CF_ELYSION_S_DISION_OBJECT_CHANGE   d ANIM_NAME
Wait2/CF_ELYSION_S_DISION_OBJECT_MAYA_INVINCIBLE !ELYSION_S_DISION_OBJECT_WAITSOUND_PLAY_ALL_OPTION0DELETE_CONDITIONDCS_STATE_ENDDELETE_CONDITION_SOUNDONLY_IF_MY_UNIT	LOOP SOUND_NAME%Elysion_S_Dision_Object_Wait.oggPLAY_TIME��Ɨ����   ,ELYSION_S_DISION_OBJECT_MAYA_INVINCIBLE/CF_ELYSION_S_DISION_OBJECT_MAYA_INVINCIBLE   d2 ANIM_NAME	Wait'ELYSION_S_DISION_OBJECT_WAIT_START
ALARMACT_REDALARM_COLOR_TYPEREPEATALARM_MESSAGESTR_ID_42945DANGER 
DELAY DISAPPEAR_TIME$CT_ELYSION_S_DISION_OBJECT_WAIT STATE_TIME_OVER   !ELYSION_S_DISION_OBJECT_WAIT$CT_ELYSION_S_DISION_OBJECT_WAITSCT_CONDITION_TABLEDEFENCE   d2#CUSTOM_STATE_DELETE_EFFECT_SET ANIM_NAME	Wait-CF_ELYSION_S_DISION_OBJECT_ACTION_STATE3 -CF_ELYSION_S_DISION_OBJECT_ACTION_STATE2 -CF_ELYSION_S_DISION_OBJECT_ACTION_STATE1 -ELYSION_S_DISION_OBJECT_START_START_FUNC "ELYSION_S_DISION_OBJECT_STARTEVENT_PROCESS   !ELYSION_S_DISION_OBJECT_WAIT-CF_ELYSION_S_DISION_OBJECT_ACTION_STATE3   ,ELYSION_S_DISION_OBJECT_WAIT_INVINCIBLE-CF_ELYSION_S_DISION_OBJECT_ACTION_STATE2   'ELYSION_S_DISION_OBJECT_WAIT_START-CF_ELYSION_S_DISION_OBJECT_ACTION_STATE1SCT_CONDITION_FUNCTIONSTATE_CHANGE_TYPEEFFECT_SET_LIST_EXDCES_DIE DELETE_CONDITION_EFFECT_SET  &EffectSet_Elysion_S_DISION_OBJECT INVINCIBLE   dNEVER_MOVECAN_PASS_UNITCAN_PUSH_UNITPLAY_TYPEXAP_LOOPXSKIN_ANIM_PLAYTYPE ANIM_NAME	WaitINIT_AINO_BRAIN	TRUE  INIT_STATE DYING_SKY"ELYSION_S_DISION_OBJECT_DYINGBIG_DAMAGE_LAND_BACK#ELYSION_S_DISION_OBJECT_DAMAGESMALL_DAMAGE_AIR#ELYSION_S_DISION_OBJECT_DAMAGEDOWN_DAMAGE_LAND_FRONT#ELYSION_S_DISION_OBJECT_DAMAGEDOWN_DAMAGE_AIR#ELYSION_S_DISION_OBJECT_DAMAGEDOWN_DAMAGE_AIR_LANDING#ELYSION_S_DISION_OBJECT_DAMAGESMALL_DAMAGE_LAND_FRONT#ELYSION_S_DISION_OBJECT_DAMAGESTART_STATE"ELYSION_S_DISION_OBJECT_STARTDOWN_DAMAGE_LAND_BACK#ELYSION_S_DISION_OBJECT_DAMAGEFLY_DAMAGE_BACK#ELYSION_S_DISION_OBJECT_DAMAGEFLY_DAMAGE_FRONT#ELYSION_S_DISION_OBJECT_DAMAGEREVENGE_ATTACKWAIT_STATE!ELYSION_S_DISION_OBJECT_WAITBIG_DAMAGE_LAND_FRONT#ELYSION_S_DISION_OBJECT_DAMAGESMALL_DAMAGE_LAND_BACK#ELYSION_S_DISION_OBJECT_DAMAGEBIG_DAMAGE_AIR#ELYSION_S_DISION_OBJECT_DAMAGEDYING_LAND_BACK"ELYSION_S_DISION_OBJECT_DYINGUP_DAMAGE#ELYSION_S_DISION_OBJECT_DAMAGECOMMON_FRAME_FUNC3ELYSION_S_DISION_OBJECT_COMMON_FRAME_MOVE_FUNCDYING_LAND_FRONT"ELYSION_S_DISION_OBJECT_DYING STATE_NAME"ELYSION_S_DISION_OBJECT_DYINGLUA_STATE_END_FUNC+ELYSION_S_DISION_OBJECT_DYING_END_FUNC STATE_NAME#ELYSION_S_DISION_OBJECT_DAMAGE STATE_NAME#ELYSION_S_DISION_OBJECT_CHANGE STATE_NAME'ELYSION_S_DISION_OBJECT_WAIT_START STATE_NAME,ELYSION_S_DISION_OBJECT_MAYA_INVINCIBLE STATE_NAME,ELYSION_S_DISION_OBJECT_WAIT_INVINCIBLELUA_STATE_START_FUNC,ELYSION_S_DISION_OBJECT_WAIT_START_FUNC STATE_NAME!ELYSION_S_DISION_OBJECT_WAITLUA_STATE_START_FUNC,ELYSION_S_DISION_OBJECT_WAIT_START_FUNC STATE_NAME"ELYSION_S_DISION_OBJECT_STARTLUA_STATE_START_FUNC-ELYSION_S_DISION_OBJECT_START_START_FUNCINIT_COMPONENTUSE_SLASH_TRACE
FALSE HYPER_MODE_COUNT MAX_HYPER_MODE_TIMEHEAD_BONE_NAME
Bip01INIT_PHYSIC RUN_SPEED RELOAD_ACCEL�DASH_JUMP_SPEED WALK_SPEED G_ACCEL�MAX_G_SPEED����JUMP_SPEED INIT_MOTION MOTION_FILE_NAMEMotion_S_DISION_OBJECT.xINIT_DEVICEREADY_SOUND  .ELYSION_S_DISION_OBJECT_ACTION_STATE1.ogg%ELYSION_S_DISION_OBJECT_Wait.ogg&ELYSION_S_DISION_OBJECT_Dying.ogg SOLES_Voice_Dialogue001.oggREADY_XMESH  Lightning_Liner01.YUp_Light01_Mesh.YREADY_XSKIN_MESH  "Motion_S_CIRCLE_CTRL_MESH_1.XREADY_TEXTURE    SpreadLight03_Gray.ddsSpreadLightNoAlpha01.ddsGuideArrow02_white.ddsArme_Ring2.ddsADD_Cube_Map01.tgaINIT_SYSTEM UNIT_HEIGHT�UNIT_SCALE��̙����UNIT_WIDTH�*g_fDisionObjectChangeCondition_Stage3g_fDisionBuffDist 