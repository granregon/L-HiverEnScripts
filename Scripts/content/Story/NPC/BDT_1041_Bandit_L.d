
instance BDT_1041_Bandit_L(Npc_Default)
{
	name[0] = NAME_Bandit;
	guild = GIL_BDT;
	id = 1041;
	voice = 1;
	flags = 0;
	npcType = NPCTYPE_AMBIENT;
	aivar[AIV_EnemyOverride] = TRUE;
	aivar[91] = TRUE;
	B_SetAttributesToChapter(self,1);
	fight_tactic = FAI_HUMAN_COWARD;
	EquipItem(self,ItMw_1h_MISC_Sword);
	EquipItem(self,itsh_g3_broken);
	B_CreateAmbientInv(self);
	B_SetNpcVisual(self,MALE,"Hum_Head_Fatbald",Face_L_NormalBart02,BodyTex_L,ItAr_BDT_M);
	Mdl_SetModelFatness(self,-1);
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,30);
	daily_routine = Rtn_Start_1041;
};


func void Rtn_Start_1041()
{
	TA_Repair_Hut(0,0,12,0,"NW_CASTLEMINE_TOWER_REP_HUT");
	TA_Repair_Hut(12,0,0,0,"NW_CASTLEMINE_TOWER_REP_HUT");
};

