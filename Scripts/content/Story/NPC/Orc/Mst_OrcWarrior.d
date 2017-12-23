
prototype Mst_Default_OrcWarrior(C_Npc)
{
	name[0] = "Orc warrior";
	guild = GIL_ORC;
	aivar[AIV_MM_REAL_ID] = ID_ORCWARRIOR;
	voice = 18;
	level = 30;
	attribute[ATR_STRENGTH] = 100;
	attribute[ATR_DEXTERITY] = 150;
	attribute[ATR_HITPOINTS_MAX] = 410;
	attribute[ATR_HITPOINTS] = 410;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 150;
	protection[PROT_EDGE] = 150;
	protection[PROT_POINT] = 150;
	protection[PROT_FIRE] = 150;
	protection[PROT_FLY] = 40;
	protection[PROT_MAGIC] = 40;
	HitChance[NPC_TALENT_1H] = 60;
	HitChance[NPC_TALENT_2H] = 60;
	HitChance[NPC_TALENT_BOW] = 60;
	HitChance[NPC_TALENT_CROSSBOW] = 60;
	damagetype = DAM_EDGE;
	fight_tactic = FAI_ORC;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_ORC_ACTIVE_MAX;
	aivar[AIV_MM_FollowTime] = FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
};

func void B_SetVisuals_OrcWarrior()
{
	Mdl_SetVisual(self,"Orc.mds");
	Mdl_SetVisualBody(self,"Orc_BodyWarrior",DEFAULT,DEFAULT,"Orc_HeadWarrior",DEFAULT,DEFAULT,-1);
};


instance OrcWarrior_Roam(Mst_Default_OrcWarrior)
{
	B_SetVisuals_OrcWarrior();
	EquipItem(self,ItMw_2H_OrcAxe_03);
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart] = OnlyRoutine;
};

instance OrcWarrior_Rest(Mst_Default_OrcWarrior)
{
	B_SetVisuals_OrcWarrior();
	EquipItem(self,ItMw_2H_OrcAxe_02);
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] = OnlyRoutine;
};

instance OrcWarrior_Sit(Mst_Default_OrcWarrior)
{
	B_SetVisuals_OrcWarrior();
	EquipItem(self,ItMw_2H_OrcAxe_03);
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_OrcSitStart] = OnlyRoutine;
};

instance OrcWarrior_Harad(Mst_Default_OrcWarrior)
{
	name[0] = "Orc scout";
	level = 15;
	attribute[ATR_STRENGTH] = 75;
	attribute[ATR_DEXTERITY] = 75;
	attribute[ATR_HITPOINTS_MAX] = 180;
	attribute[ATR_HITPOINTS] = 180;
	protection[PROT_BLUNT] = 75;
	protection[PROT_EDGE] = 75;
	protection[PROT_POINT] = 75;
	protection[PROT_FIRE] = 75;
	protection[PROT_FLY] = 75;
	B_SetVisuals_OrcWarrior();
	EquipItem(self,ItMw_2H_OrcAxe_01);
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] = OnlyRoutine;
};

instance ORCWARRIOR_SCOUT(Mst_Default_OrcWarrior)
{
	name[0] = "Orc scout";
	level = 15;
	attribute[ATR_STRENGTH] = 75;
	attribute[ATR_DEXTERITY] = 75;
	attribute[ATR_HITPOINTS_MAX] = 220;
	attribute[ATR_HITPOINTS] = 220;
	protection[PROT_BLUNT] = 125;
	protection[PROT_EDGE] = 125;
	protection[PROT_POINT] = 75;
	protection[PROT_FIRE] = 75;
	protection[PROT_FLY] = 75;
	B_SetVisuals_OrcWarrior();
	EquipItem(self,ItMw_2H_OrcAxe_01);
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] = OnlyRoutine;
};

instance OrcWarrior_Lobart1(Mst_Default_OrcWarrior)
{
	B_SetVisuals_OrcWarrior();
	EquipItem(self,ItMw_2H_OrcAxe_03);
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] = OnlyRoutine;
};

instance OrcWarrior_Lobart2(Mst_Default_OrcWarrior)
{
	B_SetVisuals_OrcWarrior();
	EquipItem(self,ItMw_2H_OrcAxe_03);
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] = OnlyRoutine;
};

instance OrcWarrior_Lobart3(Mst_Default_OrcWarrior)
{
	B_SetVisuals_OrcWarrior();
	EquipItem(self,ItMw_2H_OrcAxe_03);
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] = OnlyRoutine;
};

instance OrcWarrior_Lobart4(Mst_Default_OrcWarrior)
{
	B_SetVisuals_OrcWarrior();
	EquipItem(self,ItMw_2H_OrcAxe_03);
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] = OnlyRoutine;
};

instance OrcWarrior_Lobart5(Mst_Default_OrcWarrior)
{
	B_SetVisuals_OrcWarrior();
	EquipItem(self,ItMw_2H_OrcAxe_03);
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] = OnlyRoutine;
};

instance OrcWarrior_Lobart6(Mst_Default_OrcWarrior)
{
	B_SetVisuals_OrcWarrior();
	EquipItem(self,ItMw_2H_OrcAxe_03);
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] = OnlyRoutine;
};

