
instance VLK_4172_SELIVAN(Npc_Default)
{
	name[0] = "Selivan";
	guild = GIL_VLK;
	id = 4172;
	voice = 6;
	flags = 0;
	npcType = npctype_main;
	B_SetAttributesToChapter(self,4);
	fight_tactic = FAI_HUMAN_STRONG;
	EquipItem(self,ItMw_1h_Bau_Axe);
	B_SetNpcVisual(self,MALE,"Hum_Head_Bald",Face_N_Bartholo,BodyTex_N,ITAR_Vlk_M);
	Mdl_SetModelFatness(self,0);
	Mdl_ApplyOverlayMds(self,"Humans_Mage.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,45);
	daily_routine = rtn_start_4172;
};


func void rtn_start_4172()
{
	TA_Stand_ArmsCrossed(8,0,23,0,"NW_CITY_HABOUR_ENCHANT_IN_STAND");
	TA_Sleep(23,0,8,0,"NW_CITY_HABOUR_ENCHANT_IN_05");
};

