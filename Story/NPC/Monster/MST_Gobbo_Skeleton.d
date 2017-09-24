
prototype Mst_Default_Gobbo_Skeleton(C_Npc)
{
	name[0] = "Goblin skeleton";
	guild = GIL_GOBBO_SKELETON;
	aivar[AIV_MM_REAL_ID] = ID_GOBBO_SKELETON;
	level = 16;
	attribute[ATR_STRENGTH] = 80;
	attribute[ATR_DEXTERITY] = 80;
	attribute[ATR_HITPOINTS_MAX] = 175;
	attribute[ATR_HITPOINTS] = 175;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 45;
	protection[PROT_EDGE] = 90;
	protection[PROT_POINT] = 500;
	protection[PROT_FIRE] = 75;
	protection[PROT_FLY] = 0;
	protection[PROT_MAGIC] = 25;
	damagetype = DAM_BLUNT;
	fight_tactic = FAI_GOBBO;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_MONSTER_ACTIVE_MAX;
	aivar[AIV_MM_FollowTime] = FOLLOWTIME_LONG;
	aivar[AIV_MM_FollowInWater] = FALSE;
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] = OnlyRoutine;
};

func void B_SetVisuals_Gobbo_Skeleton()
{
	Mdl_SetVisual(self,"Gobbo.mds");
	Mdl_SetVisualBody(self,"Gobbo_Skeleton_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
};


instance Gobbo_Skeleton(Mst_Default_Gobbo_Skeleton)
{
	B_SetVisuals_Gobbo_Skeleton();
	Npc_SetToFightMode(self,ItMw_1h_Bau_Mace);
};

instance Summoned_Gobbo_Skeleton(Mst_Default_Gobbo_Skeleton)
{
	name[0] = "Summoned goblin skeleton";
	guild = gil_summoned_gobbo_skeleton;
	aivar[AIV_MM_REAL_ID] = id_summoned_gobbo_skeleton;
	level = 0;
	aivar[AIV_PARTYMEMBER] = TRUE;
	B_SetAttitude(self,ATT_FRIENDLY);
	start_aistate = ZS_MM_Rtn_Summoned;
	B_SetVisuals_Gobbo_Skeleton();
	Npc_SetToFightMode(self,ItMw_1h_Bau_Mace);
};

instance Gobbo_SkeletonOWDemonTower(Mst_Default_Gobbo_Skeleton)
{
	B_SetVisuals_Gobbo_Skeleton();
	Npc_SetToFightMode(self,ItMw_1h_Bau_Mace);
};

