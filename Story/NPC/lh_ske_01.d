
instance LH_SKE_01(Npc_Default)
{
	name[0] = "Najwy¿szy Lord cienia Amort";
	guild = GIL_SKELETON;
	id = 3010;
	flags = 0;
	npcType = npctype_main;
	aivar[AIV_MM_REAL_ID] = ID_AMORT;
	level = 70;
	attribute[ATR_STRENGTH] = 200;
	attribute[ATR_DEXTERITY] = 200;
	attribute[ATR_MANA_MAX] = 100;
	attribute[ATR_MANA] = 100;
	attribute[ATR_HITPOINTS_MAX] = 1400;
	attribute[ATR_HITPOINTS] = 1400;
	protection[PROT_BLUNT] = 120;
	protection[PROT_EDGE] = 100;
	protection[PROT_POINT] = 220;
	protection[PROT_FIRE] = IMMUNE;
	protection[PROT_FLY] = 100;
	protection[PROT_MAGIC] = 0;
	aivar[AIV_IgnoresArmor] = TRUE;
	aivar[AIV_EnemyOverride] = TRUE;
	fight_tactic = FAI_HUMAN_MASTER;
	EquipItem(self,ItMw_Zweihaender3);
	CreateInvItems(self,ItMi_Gold,500);
	CreateInvItems(self,itke_lhske01_addon,1);
	B_SetNpcVisual(self,MALE,"Ske_Head",0,0,itar_bm_skel);
	Mdl_SetModelFatness(self,0);
	Mdl_ApplyOverlayMds(self,"Humans_Arrogance.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,100);
	daily_routine = rtn_start_amort;
};


func void rtn_start_amort()
{
	TA_Sit_Throne(9,0,21,0,"LOCATION_19_LH_SECOND_ETAGE3");
	TA_Sit_Throne(21,0,9,0,"LOCATION_19_LH_SECOND_ETAGE3");
};

