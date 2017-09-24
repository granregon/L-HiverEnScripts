
instance VLK_4901_BUERGER(Npc_Default)
{
	name[0] = NAME_Buerger;
	guild = GIL_VLK;
	id = 4901;
	voice = 8;
	flags = 0;
	npcType = NPCTYPE_AMBIENT;
	aivar[AIV_ToughGuy] = TRUE;
	aivar[AIV_ToughGuyNewsOverride] = TRUE;
	B_SetAttributesToChapter(self,2);
	fight_tactic = FAI_HUMAN_STRONG;
	EquipItem(self,ItMw_1h_Vlk_Sword);
	B_CreateAmbientInv(self);
	B_SetNpcVisual(self,MALE,"Hum_Head_Bald",Face_N_Normal14,BodyTex_N,ITAR_Vlk_L);
	Mdl_SetModelFatness(self,0);
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,45);
	daily_routine = rtn_prestart_4901;
};


func void rtn_prestart_4901()
{
	TA_Sit_Chair(8,0,19,10,"NW_CITY_HABOUR_NHDUSE_01");
	TA_Sit_Bench(19,10,21,45,"NW_CITY_MERCHANT_PATH_25");
	TA_Sleep(21,45,8,0,"NW_CITY_HABOUR_NHDUSE_SLEEP2");
};

func void rtn_start_4901()
{
	TA_Sit_Chair(8,0,12,35,"NW_CITY_HABOUR_NHDUSE_01");
	TA_Smalltalk(12,35,16,5,"NW_CITY_HABOUR_HUT_08");
	TA_Sit_Chair(16,5,19,10,"NW_CITY_HABOUR_NHDUSE_01");
	TA_Sit_Bench(19,10,21,45,"NW_CITY_MERCHANT_PATH_25");
	TA_Sleep(21,45,8,0,"NW_CITY_HABOUR_NHDUSE_SLEEP2");
};

