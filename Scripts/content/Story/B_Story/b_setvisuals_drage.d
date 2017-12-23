
prototype MST_DEFAULT_DRAGE(C_Npc)
{
	name[0] = "Demon";
	guild = GIL_DEMON;
	aivar[AIV_MM_REAL_ID] = ID_D_RAGE;
	level = 30;
	bodyStateInterruptableOverride = TRUE;
	attribute[ATR_STRENGTH] = 135;
	attribute[ATR_DEXTERITY] = 135;
	attribute[ATR_HITPOINTS_MAX] = 440;
	attribute[ATR_HITPOINTS] = 440;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 125;
	protection[PROT_EDGE] = 125;
	protection[PROT_POINT] = 125;
	protection[PROT_FIRE] = 100;
	protection[PROT_FLY] = 100;
	protection[PROT_MAGIC] = 100;
	damagetype = DAM_EDGE;
	fight_tactic = FAI_HUMAN_MASTER;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_MONSTER_ACTIVE_MAX;
	aivar[AIV_MM_ThreatenBeforeAttack] = TRUE;
	aivar[AIV_MM_Packhunter] = TRUE;
	aivar[AIV_MM_FollowTime] = FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] = OnlyRoutine;
	aivar[AIV_MM_SleepStart] = 11;
};

func void b_setvisuals_drage()
{
	Mdl_SetVisual(self,"Rage.mds");
	Mdl_SetVisualBody(self,"Rage_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
};


instance DRAGE(MST_DEFAULT_DRAGE)
{
	b_setvisuals_drage();
	Npc_SetToFistMode(self);
};

