
instance BDT_10316_ADDON_RANGERBANDIT_M(Npc_Default)
{
	name[0] = NAME_Bandit;
	guild = GIL_BDT;
	id = 10316;
	voice = 13;
	flags = 0;
	npcType = NPCTYPE_AMBIENT;
	B_SetAttributesToChapter(self,3);
	fight_tactic = FAI_HUMAN_STRONG;
	EquipItem(self,ItMw_1h_Sld_Axe);
	EquipItem(self,ItRw_Mil_Crossbow);
	B_CreateAmbientInv(self);
	B_SetNpcVisual(self,MALE,"Hum_Head_FatBald",Face_L_Tough_Santino,BodyTex_L,ItAr_BDT_H);
	Mdl_SetModelFatness(self,2);
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,50);
	daily_routine = rtn_start_10316;
};


func void rtn_start_10316()
{
	TA_Stand_Guarding(8,0,22,0,"NW_ONARFOREST_BDTCAVE_09");
	TA_Stand_Guarding(22,0,8,0,"NW_ONARFOREST_BDTCAVE_09");
};

