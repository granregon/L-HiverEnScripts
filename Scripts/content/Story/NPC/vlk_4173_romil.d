
instance VLK_4173_ROMIL(Npc_Default)
{
	name[0] = "Romil";
	guild = GIL_VLK;
	id = 4173;
	voice = 7;
	flags = 0;
	npcType = npctype_main;
	B_SetAttributesToChapter(self,4);
	fight_tactic = FAI_HUMAN_STRONG;
	EquipItem(self,ItMw_1h_Bau_Axe);
	B_SetNpcVisual(self,MALE,"Hum_Head_Bald",Face_N_Homer,BodyTex_N,ITAR_Smith);
	Mdl_SetModelFatness(self,2);
	Mdl_ApplyOverlayMds(self,"Humans_Arrogance.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,55);
	daily_routine = rtn_start_4173;
};


func void rtn_start_4173()
{
	TA_Stand_ArmsCrossed(8,0,10,0,"NW_CITY_HABOUR_NTHLH_02");
	TA_Stand_Sweeping(10,0,10,30,"NW_CITY_HABOUR_NTHLH_01");
	TA_Stand_ArmsCrossed(10,30,15,0,"NW_CITY_HABOUR_NTHLH_02");
	TA_Stand_Sweeping(15,0,15,30,"NW_CITY_HABOUR_NTHLH_01");
	TA_Stand_ArmsCrossed(15,30,23,0,"NW_CITY_HABOUR_NTHLH_02");
	TA_Sleep(23,0,8,0,"NW_CITY_HABOUR_NTHLH_05");
};

