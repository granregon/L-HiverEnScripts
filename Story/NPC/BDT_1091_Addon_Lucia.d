
instance BDT_1091_Addon_Lucia(Npc_Default)
{
	name[0] = "Lucia";
	guild = GIL_BDT;
	id = 1091;
	voice = 16;
	flags = 0;
	npcType = NPCTYPE_BL_MAIN;
	B_SetAttributesToChapter(self,6);
	fight_tactic = FAI_HUMAN_NORMAL;
	EquipItem(self,ItMw_Rapier);
	B_CreateAmbientInv(self);
	B_SetNpcVisual(self,FEMALE,"Hum_Head_Babe8",FaceBabe_N_GreyCloth,BodyTexBabe_F,itar_lucia_addon);
	Mdl_SetModelFatness(self,0);
	Mdl_ApplyOverlayMds(self,"Humans_Babe.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,65);
	daily_routine = Rtn_Start_1091;
};


func void Rtn_Start_1091()
{
	TA_Stand_WP(7,0,12,0,"BL_INN_05_D");
	TA_Stand_Sweeping(12,0,14,0,"BL_INN_05_B");
	TA_Stand_WP(14,0,14,50,"BL_INN_05_D");
	TA_Sit_Chair(14,50,15,10,"BL_INN_UPSIDE_SLEEP_02");
	ta_bathtub(15,10,16,0,"BL_INN_UPSIDE_BATH_01");
	TA_Stand_WP(16,0,17,0,"BL_INN_05_D");
	TA_Stand_Sweeping(17,0,17,50,"BL_INN_05_B");
	TA_Sit_Chair(17,50,18,0,"BL_INN_UPSIDE_SLEEP_02");
	ta_bathtub(18,0,19,0,"BL_INN_UPSIDE_BATH_01");
	TA_Stand_WP(19,0,21,0,"BL_INN_05_D");
	TA_Potion_Alchemy(21,0,1,0,"BL_INN_UP_LABOR");
	TA_Sleep(1,0,7,0,"BL_INN_UPSIDE_SLEEP_01");
};

