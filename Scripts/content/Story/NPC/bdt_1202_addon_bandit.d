
instance BDT_1202_ADDON_BANDIT(Npc_Default)
{
	name[0] = NAME_Bandit;
	guild = GIL_BDT;
	id = 1202;
	voice = 1;
	flags = 0;
	npcType = NPCTYPE_AMBIENT;
	aivar[91] = TRUE;
	B_SetAttributesToChapter(self,3);
	fight_tactic = FAI_HUMAN_STRONG;
	EquipItem(self,ItMw_1h_Sld_Sword);
	EquipItem(self,ItRw_Sld_Bow);
	EquipItem(self,itsh_g3_01_old);
	B_CreateAmbientInv(self);
	B_SetNpcVisual(self,MALE,"Hum_Head_FatBald",Face_B_Normal01,BodyTex_B,ItAr_BDT_H);
	Mdl_SetModelFatness(self,2);
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,50);
	start_aistate = ZS_Bandit;
	daily_routine = rtn_bdt_1202;
};


func void rtn_bdt_1202()
{
	TA_Sit_Bench(8,0,19,0,"OW_PATH_NL_BNDTCAVE_04");
	TA_Sit_Bench(19,0,8,0,"OW_PATH_NL_BNDTCAVE_04");
};

