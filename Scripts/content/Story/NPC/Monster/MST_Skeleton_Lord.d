
prototype Mst_Skeleton_Lord(C_Npc)
{
	name[0] = "Shadow warrior";
	guild = GIL_SKELETON;
	aivar[AIV_MM_REAL_ID] = ID_SKELETON;
	aivar[90] = TRUE;
	level = 50;
	attribute[ATR_STRENGTH] = 175;
	attribute[ATR_DEXTERITY] = 100;
	attribute[ATR_HITPOINTS_MAX] = 700;
	attribute[ATR_HITPOINTS] = 700;
	attribute[ATR_MANA_MAX] = 200;
	attribute[ATR_MANA] = 200;
	protection[PROT_BLUNT] = 90;
	protection[PROT_EDGE] = 180;
	protection[PROT_POINT] = 500;
	protection[PROT_FIRE] = 100;
	protection[PROT_FLY] = 0;
	protection[PROT_MAGIC] = 50;
	damagetype = DAM_EDGE;
	fight_tactic = FAI_HUMAN_MASTER;
	EquipItem(self,ItMw_Zweihaender2);
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_ORC_ACTIVE_MAX;
	aivar[AIV_MM_FollowTime] = FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	aivar[AIV_MM_Packhunter] = TRUE;
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] = OnlyRoutine;
};

func void B_SetVisuals_Skeleton_Lord()
{
	Mdl_SetVisual(self,"HumanS.mds");
	Mdl_ApplyOverlayMds(self,"humans_1hST1.mds");
	Mdl_ApplyOverlayMds(self,"humans_2hST3.mds");
	Mdl_ApplyOverlayMds(self,"humans_BowT1.mds");
	Mdl_ApplyOverlayMds(self,"humans_CBowT1.mds");
	B_SetNpcVisual(self,MALE,"Ske_Head",0,0,itar_pal_skel);
};


instance Skeleton_Lord(Mst_Skeleton_Lord)
{
	B_SetVisuals_Skeleton_Lord();
};

instance Crypt_Skeleton_Lord(Mst_Skeleton_Lord)
{
	name[0] = "Shadow lord Inubis";
	B_SetVisuals_Skeleton_Lord();
	CreateInvItems(self,ItMi_Gold,500);
	CreateInvItems(self,ItPo_Mana_03,2);
	CreateInvItems(self,ItPo_Health_03,2);
};

instance Skeleton_Lord_Archol(Mst_Skeleton_Lord)
{
	name[0] = "Shadow lord Archol";
	level = 60;
	attribute[ATR_HITPOINTS_MAX] = 880;
	attribute[ATR_HITPOINTS] = 880;
	B_SetVisuals_Skeleton_Lord();
	CreateInvItems(self,ItMi_Gold,650);
	CreateInvItems(self,ItKe_EVT_UNDEAD_01,1);
};

