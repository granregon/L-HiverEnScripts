
instance BDT_1203_ADDON_BANDIT(Npc_Default)
{
	name[0] = NAME_Bandit;
	guild = GIL_BDT;
	id = 1203;
	voice = 1;
	flags = 0;
	npcType = NPCTYPE_AMBIENT;
	B_SetAttributesToChapter(self,2);
	fight_tactic = FAI_HUMAN_NORMAL;
	EquipItem(self,ItMw_1h_Bau_Mace);
	EquipItem(self,ItRw_Sld_Bow);
	B_CreateAmbientInv(self);
	B_SetNpcVisual(self,MALE,"Hum_Head_FatBald",Face_N_Normal02,BodyTex_N,ItAr_BDT_M);
	Mdl_SetModelFatness(self,1);
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,40);
	start_aistate = ZS_Bandit;
	daily_routine = rtn_bdt_1203;
};


func void rtn_bdt_1203()
{
	TA_Stand_ArmsCrossed(8,0,19,0,"OW_PATH_NL_BNDTCAVE_03");
	TA_Stand_ArmsCrossed(19,0,8,0,"OW_PATH_NL_BNDTCAVE_03");
};

