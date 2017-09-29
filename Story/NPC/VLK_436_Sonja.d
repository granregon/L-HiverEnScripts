
instance VLK_436_Sonja(Npc_Default)
{
	name[0] = "Sonja";
	guild = GIL_VLK;
	id = 436;
	voice = 16;
	flags = NPC_FLAG_IMMORTAL;
	npcType = npctype_main;
	aivar[AIV_ToughGuy] = TRUE;
	B_SetAttributesToChapter(self,2);
	fight_tactic = FAI_HUMAN_COWARD;
	EquipItem(self,ItMw_1h_Vlk_Dagger);
	EquipItem(self,itmi_sonjawig);
	B_CreateAmbientInv(self);
	B_SetNpcVisual(self,FEMALE,"Hum_Head_Babe",FaceBabe_L_Charlotte2,BodyTexBabe_L,itar_baron_babe_addon);
	Mdl_SetModelFatness(self,0);
	Mdl_ApplyOverlayMds(self,"Humans_Babe.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,50);
	daily_routine = Rtn_Start_436;
};


func void Rtn_Start_436()
{
	TA_Sit_Throne(11,0,14,0,"NW_CITY_PUFF_THRONE");
	TA_Dance(14,0,17,0,"NW_PUFF_DANCE");
	TA_Stand_WP(17,0,17,10,"NW_CITY_HABOUR_PUFF_SONJA");
	ta_bathtub(17,10,18,0,"NW_CITY_HABOUR_PUFF_SONJA");
	TA_Sit_Throne(18,0,20,0,"NW_CITY_PUFF_THRONE");
	TA_Dance(20,0,23,0,"NW_CITY_PUFF_THRONE");
	TA_Stand_WP(23,0,23,10,"NW_CITY_HABOUR_PUFF_SONJA");
	ta_bathtub(23,10,0,10,"NW_CITY_HABOUR_PUFF_SONJA");
	TA_Sit_Throne(0,10,3,0,"NW_CITY_PUFF_THRONE");
	TA_Sleep(3,0,11,0,"NW_CITY_SONJA_BED");
};


instance ITMI_SONJAWIG(C_Item)
{
	name = "Sonja's wig";
	mainflag = ITEM_KAT_NF;
	flags = 0;
	value = 0;
	wear = WEAR_HEAD;
	visual = "ITMI_SONJAWIG_01.3DS";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
};

