
prototype MST_SKELETON_LORD_M(C_Npc)
{
	name[0] = "Ghost mage";
	guild = GIL_SKELETON;
	aivar[AIV_MM_REAL_ID] = ID_MAG_LORD;
	level = 50;
	attribute[ATR_STRENGTH] = 80;
	attribute[ATR_DEXTERITY] = 80;
	attribute[ATR_HITPOINTS_MAX] = 500;
	attribute[ATR_HITPOINTS] = 500;
	attribute[ATR_MANA_MAX] = 200;
	attribute[ATR_MANA] = 200;
	protection[PROT_BLUNT] = 70;
	protection[PROT_EDGE] = 70;
	protection[PROT_POINT] = 140;
	protection[PROT_FIRE] = 80;
	protection[PROT_FLY] = 40;
	protection[PROT_MAGIC] = 40;
	damagetype = DAM_MAGIC;
	fight_tactic = FAI_HUMAN_MASTER;
	EquipItem(self,ItMw_1h_Nov_Mace);
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_ORC_ACTIVE_MAX;
	aivar[AIV_MM_FollowTime] = 5;
	aivar[AIV_MM_FollowInWater] = FALSE;
	aivar[AIV_MM_Packhunter] = TRUE;
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] = OnlyRoutine;
};

func void b_setvisuals_skeleton_lord_m()
{
	Mdl_SetVisual(self,"HumanS.mds");
	Mdl_ApplyOverlayMds(self,"humans_1hST1.mds");
	Mdl_ApplyOverlayMds(self,"humans_2hST3.mds");
	Mdl_ApplyOverlayMds(self,"humans_BowT1.mds");
	Mdl_ApplyOverlayMds(self,"humans_CBowT1.mds");
	B_SetNpcVisual(self,MALE,"Ske_Head",0,0,itar_kdf_skel);
};


instance SKELETON_LORD_M(MST_SKELETON_LORD_M)
{
	b_setvisuals_skeleton_lord_m();
};

