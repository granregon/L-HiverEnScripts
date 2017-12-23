
instance VLK_4100_Brutus(Npc_Default)
{
	name[0] = "Brutus";
	guild = GIL_MIL;
	id = 4100;
	voice = 6;
	flags = 0;
	npcType = NPCTYPE_OCMAIN;
	aivar[AIV_ToughGuy] = TRUE;
	aivar[AIV_ToughGuyNewsOverride] = TRUE;
	B_SetAttributesToChapter(self,2);
	fight_tactic = FAI_HUMAN_STRONG;
	EquipItem(self,ItMw_1h_Vlk_Dagger);
	B_CreateAmbientInv(self);
	B_SetNpcVisual(self,MALE,"Hum_Head_FatBald",Face_P_ToughBald,BodyTex_P,ITAR_Mil_L);
	Mdl_SetModelFatness(self,2);
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,50);
	daily_routine = Rtn_Start_4100;
};


func void Rtn_Start_4100()
{
	TA_Smith_Sharp(8,0,12,0,"OC_FOLTER_SHARP");
	ta_wash_self(12,0,12,10,"OC_FOLTER_IN");
	TA_Smith_Sharp(12,10,15,0,"OC_FOLTER_SHARP");
	ta_wash_self(15,0,15,10,"OC_FOLTER_IN");
	TA_Smith_Sharp(15,10,17,0,"OC_FOLTER_SHARP");
	ta_wash_self(17,0,17,10,"OC_FOLTER_IN");
	TA_Smith_Sharp(17,10,8,0,"OC_FOLTER_SHARP");
};

func void Rtn_Meatbugs_4100()
{
	TA_Guard_Passage(8,0,23,0,"OC_BRUTUS_MEATBUGS");
	TA_Guard_Passage(23,0,8,0,"OC_BRUTUS_MEATBUGS");
};

