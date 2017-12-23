
instance PC_Fighter_NW_vor_DJG(Npc_Default)
{
	name[0] = "Gorn";
	guild = GIL_SLD;
	id = 813;
	voice = 12;
	flags = 0;
	npcType = NPCTYPE_FRIEND;
	aivar[AIV_IgnoresArmor] = TRUE;
	aivar[90] = TRUE;
	B_SetAttributesToChapter(self,7);
	fight_tactic = FAI_HUMAN_MASTER;
	B_CreateAmbientInv(self);
	B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face_B_Gorn,BodyTex_B,ItAr_Sld_H);
	Mdl_SetModelFatness(self,0);
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,90);
	daily_routine = Rtn_Start_813;
};


func void Rtn_Start_813()
{
	TA_Stand_Guarding(9,0,17,21,"NW_BIGFARM_HOUSE_LEE_GUARDING");
	TA_Sit_Chair(17,21,23,0,"NW_BIGFARM_HOUSE_19_SLDSIT");
	TA_Sit_Chair(23,0,8,0,"NW_BIGFARM_HOUSE_14");
};

func void Rtn_Tot_813()
{
	TA_Sit_Campfire(8,0,23,0,"TOT");
	TA_Sit_Campfire(23,0,8,0,"TOT");
};

