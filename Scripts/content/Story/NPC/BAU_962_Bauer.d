
instance BAU_962_Bauer(Npc_Default)
{
	name[0] = NAME_Bauer;
	guild = GIL_OUT;
	id = 962;
	voice = 7;
	flags = 0;
	npcType = NPCTYPE_AMBIENT;
	B_SetAttributesToChapter(self,1);
	fight_tactic = FAI_HUMAN_COWARD;
	EquipItem(self,ItMw_1h_Bau_Mace);
	B_CreateAmbientInv(self);
	B_SetNpcVisual(self,MALE,"Hum_Head_Pony",Face_N_Normal05,BodyTex_N,ITAR_Bau_L);
	Mdl_SetModelFatness(self,0);
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,15);
	daily_routine = Rtn_Start_962;
};


func void Rtn_Start_962()
{
	TA_Sit_Bench(7,0,8,0,"NW_FARM3_OUT_LH_14");
	TA_Smalltalk(8,0,13,0,"NW_FARM3_STABLE_OUT_03");
	TA_Sit_Bench(13,0,14,0,"NW_FARM3_OUT_LH_14");
	TA_Smalltalk(14,0,20,30,"NW_FARM3_OUT_LH_02");
	TA_Sit_Campfire(20,30,23,0,"NW_FARM3_STABLE_REST_02");
	TA_Sit_Bench(23,0,0,0,"NW_FARM3_OUT_LH_14");
	TA_Sleep(0,0,7,0,"NW_FARM3_ADDHOUSE_IN_02");
};

func void Rtn_FleeFromPass_962()
{
	TA_Stand_WP(8,0,22,0,"NW_BIGMILL_MALAKSVERSTECK_06");
	TA_Stand_WP(22,0,8,0,"NW_BIGMILL_MALAKSVERSTECK_06");
};

