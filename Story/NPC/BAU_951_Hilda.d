
instance BAU_951_Hilda(Npc_Default)
{
	name[0] = "Hilda";
	guild = GIL_OUT;
	id = 951;
	voice = 17;
	flags = 0;
	npcType = npctype_main;
	B_SetAttributesToChapter(self,1);
	fight_tactic = FAI_HUMAN_COWARD;
	EquipItem(self,ItMw_1h_Bau_Mace);
	B_CreateAmbientInv(self);
	B_SetNpcVisual(self,FEMALE,"Hum_Head_Babe8",FaceBabe_N_WhiteCloth,BodyTexBabe_N,ITAR_BauBabe_L);
	Mdl_SetModelFatness(self,0);
	Mdl_ApplyOverlayMds(self,"Humans_Babe.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,10);
	daily_routine = Rtn_Start_951;
};


func void Rtn_Start_951()
{
	TA_Cook_Stove(8,0,12,0,"NW_FARM1_INHOUSE_02");
	TA_Pick_FP(12,0,14,0,"NW_FARM1_OUT_ADD_14");
	TA_Sit_Bench(14,0,15,0,"NW_FARM1_OUT_ADD_08");
	TA_Pick_FP(15,0,17,0,"NW_FARM1_OUT_ADD_15");
	TA_Stand_Sweeping(17,0,18,0,"NW_FARM1_ENTRANCE_01");
	TA_Cook_Stove(18,0,22,0,"NW_FARM1_INHOUSE_02");
	TA_Sleep(22,0,8,0,"NW_FARM1_INHOUSE_BED_02");
};

func void Rtn_Krank_951()
{
	TA_Sleep(8,0,22,0,"NW_FARM1_INHOUSE_BED_02");
	TA_Sleep(22,0,8,0,"NW_FARM1_INHOUSE_BED_02");
};

