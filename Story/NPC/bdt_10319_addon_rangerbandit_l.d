
instance BDT_10319_ADDON_RANGERBANDIT_L(Npc_Default)
{
	name[0] = NAME_Bandit;
	guild = GIL_BDT;
	id = 10319;
	voice = 13;
	flags = 0;
	npcType = NPCTYPE_AMBIENT;
	B_SetAttributesToChapter(self,2);
	fight_tactic = FAI_HUMAN_COWARD;
	EquipItem(self,ItMw_1h_Vlk_Axe);
	B_CreateAmbientInv(self);
	B_SetNpcVisual(self,MALE,"Hum_Head_Bald",Face_N_Homer,BodyTex_N,ItAr_BDT_M);
	Mdl_SetModelFatness(self,0);
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,30);
	daily_routine = rtn_start_10319;
};


func void rtn_start_10319()
{
	TA_Stand_Guarding(8,0,22,0,"NW_ONARFOREST_BDTCAVE_02");
	TA_Stand_Guarding(22,0,8,0,"NW_ONARFOREST_BDTCAVE_02");
};

