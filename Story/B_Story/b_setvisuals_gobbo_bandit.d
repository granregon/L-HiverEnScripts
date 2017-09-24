
prototype MST_DEFAULT_GOBBO_BANDIT(C_Npc)
{
	name[0] = "Goblin-bandit";
	guild = GIL_GOBBO;
	aivar[AIV_MM_REAL_ID] = ID_GOBBO_GREEN;
	level = 17;
	attribute[ATR_STRENGTH] = 110;
	attribute[ATR_DEXTERITY] = 110;
	attribute[ATR_HITPOINTS_MAX] = 220;
	attribute[ATR_HITPOINTS] = 220;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 20;
	protection[PROT_EDGE] = 20;
	protection[PROT_POINT] = 20;
	protection[PROT_FIRE] = 20;
	protection[PROT_FLY] = 0;
	protection[PROT_MAGIC] = 0;
	damagetype = DAM_EDGE;
	fight_tactic = FAI_GOBBO_BANDIT;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_MONSTER_ACTIVE_MAX;
	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_FollowTime] = FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	aivar[AIV_MM_Packhunter] = TRUE;
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] = OnlyRoutine;
};

func void b_setvisuals_gobbo_bandit()
{
	Mdl_SetVisual(self,"Gobbo_Bandit.mds");
	Mdl_SetVisualBody(self,"GOBBDT_BODY",0,DEFAULT,"",DEFAULT,DEFAULT,-1);
};


instance GOBBO_BANDIT(MST_DEFAULT_GOBBO_BANDIT)
{
	b_setvisuals_gobbo_bandit();
	Npc_SetToFistMode(self);
};

