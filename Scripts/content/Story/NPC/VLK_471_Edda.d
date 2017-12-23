
instance VLK_471_Edda(Npc_Default)
{
	name[0] = "Edda";
	guild = GIL_VLK;
	id = 471;
	voice = 17;
	flags = 0;
	npcType = npctype_main;
	aivar[AIV_ToughGuy] = TRUE;
	B_SetAttributesToChapter(self,1);
	fight_tactic = FAI_HUMAN_COWARD;
	B_CreateAmbientInv(self);
	EquipItem(self,ItMw_1h_Vlk_Dagger);
	B_SetNpcVisual(self,FEMALE,"Hum_Head_Babe.",FaceBabe_B_RedLocks,BodyTex_B,ITAR_BauBabe_L);
	Mdl_SetModelFatness(self,0);
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,30);
	daily_routine = Rtn_Start_471;
};


func void Rtn_Start_471()
{
	TA_Sleep(1,15,6,25,"NW_CITY_HABOUR_POOR_AREA_HUT_06_BED_01");
	TA_Sit_Bench(6,25,7,25,"NW_CITY_HABOUR_POOR_AREA_CAULDRONADD2");
	TA_Cook_Cauldron(7,25,12,15,"NW_CITY_HABOUR_POOR_AREA_CAULDRON");
	TA_Sit_Bench(12,15,13,35,"NW_CITY_HABOUR_POOR_AREA_CAULDRONADD2");
	TA_Cook_Cauldron(13,35,15,0,"NW_CITY_HABOUR_POOR_AREA_CAULDRON");
	TA_Stand_Sweeping(15,0,17,0,"NW_CITY_HABOUR_POOR_AREA_HUT_06_IN");
	TA_Cook_Cauldron(17,0,19,0,"NW_CITY_HABOUR_POOR_AREA_CAULDRON");
	TA_Sit_Bench(19,0,20,35,"NW_CITY_HABOUR_POOR_AREA_CAULDRONADD2");
	TA_Cook_Cauldron(20,35,1,15,"NW_CITY_HABOUR_POOR_AREA_CAULDRON");
};

