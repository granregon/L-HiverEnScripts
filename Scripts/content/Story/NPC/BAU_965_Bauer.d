
instance BAU_965_Bauer(Npc_Default)
{
	name[0] = NAME_Bauer;
	guild = GIL_OUT;
	id = 965;
	voice = 1;
	flags = 0;
	npcType = NPCTYPE_AMBIENT;
	B_SetAttributesToChapter(self,1);
	fight_tactic = FAI_HUMAN_COWARD;
	EquipItem(self,ItMw_1h_Bau_Mace);
	B_CreateAmbientInv(self);
	B_SetNpcVisual(self,MALE,"Hum_Head_FatBald",Face_L_NormalBart_Rufus,BodyTex_L,ITAR_Bau_L);
	Mdl_SetModelFatness(self,0);
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,10);
	daily_routine = Rtn_Start_965;
};


func void Rtn_Start_965()
{
	TA_Smalltalk(8,0,13,0,"NW_FARM3_STABLE_OUT_03");
	TA_Sit_Chair(13,0,14,0,"NW_FARM3_ADDHOUSE_IN_03");
	TA_Smalltalk(14,0,20,30,"NW_FARM3_OUT_LH_04");
	TA_Stand_ArmsCrossed(20,30,0,0,"NW_FARM3_STABLE_REST_02");
	TA_Sleep(0,0,8,0,"NW_FARM3_ADDHOUSE_IN_04");
};

func void Rtn_FleeFromPass_965()
{
	TA_Sit_Campfire(8,0,22,0,"NW_BIGMILL_MALAKSVERSTECK_05");
	TA_Sit_Campfire(22,0,8,0,"NW_BIGMILL_MALAKSVERSTECK_05");
};

