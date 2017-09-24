
prototype Mst_Default_Gobbo_Black(C_Npc)
{
	name[0] = "Black goblin";
	guild = GIL_GOBBO;
	aivar[AIV_MM_REAL_ID] = ID_GOBBO_BLACK;
	level = 12;
	attribute[ATR_STRENGTH] = 80;
	attribute[ATR_DEXTERITY] = 80;
	attribute[ATR_HITPOINTS_MAX] = 200;
	attribute[ATR_HITPOINTS] = 200;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 30;
	protection[PROT_EDGE] = 50;
	protection[PROT_POINT] = 40;
	protection[PROT_FIRE] = 20;
	protection[PROT_FLY] = 0;
	protection[PROT_MAGIC] = 0;
	damagetype = DAM_EDGE;
	fight_tactic = FAI_GOBBO;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_MONSTER_ACTIVE_MAX;
	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime] = FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	aivar[AIV_MM_Packhunter] = TRUE;
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] = OnlyRoutine;
};

func void B_SetVisuals_Gobbo_Black()
{
	Mdl_SetVisual(self,"Gobbo.mds");
	Mdl_SetVisualBody(self,"Gob_Body",1,DEFAULT,"",DEFAULT,DEFAULT,-1);
};


instance Gobbo_Black(Mst_Default_Gobbo_Black)
{
	B_SetVisuals_Gobbo_Black();
	Npc_SetToFightMode(self,ItMw_1h_MISC_Sword);
};

instance Gobbo_DaronsStatuenKlauer(Mst_Default_Gobbo_Black)
{
	B_SetVisuals_Gobbo_Black();
	CreateInvItems(self,ItMi_LostInnosStatue_Daron,1);
	Npc_SetToFightMode(self,ItMw_1h_MISC_Sword);
};

