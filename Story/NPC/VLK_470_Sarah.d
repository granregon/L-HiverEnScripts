
instance VLK_470_Sarah(Npc_Default)
{
	name[0] = "Sarah";
	guild = GIL_KDW;
	id = 470;
	voice = 16;
	flags = NPC_FLAG_IMMORTAL;
	npcType = npctype_main;
	B_SetAttributesToChapter(self,7);
	fight_tactic = FAI_HUMAN_MASTER;
	EquipItem(self,itmw_katana);
	EquipItem(self,itmi_sarahwig);
	B_SetNpcVisual(self,FEMALE,"Hum_Head_Babe",FaceBabe_N_Blondie,BodyTexBabe_F,itar_w2_ves);
	Mdl_SetModelFatness(self,0);
	Mdl_ApplyOverlayMds(self,"Humans_Babe.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,90);
	daily_routine = Rtn_Start_470;
};


func void Rtn_Start_470()
{
	TA_Stand_ArmsCrossed(7,15,17,50,"NW_CITY_SARAH");
	TA_Smith_Fire(17,50,18,0,"NW_CITY_MERCHANT_SARAH_SMITH");
	TA_Smith_Anvil(18,0,18,10,"NW_CITY_MERCHANT_SARAH_SMITH");
	TA_Smith_Fire(18,10,18,20,"NW_CITY_MERCHANT_SARAH_SMITH");
	TA_Smith_Anvil(18,20,18,30,"NW_CITY_MERCHANT_SARAH_SMITH");
	TA_Smith_Cool(18,30,18,40,"NW_CITY_MERCHANT_SARAH_SMITH");
	TA_Smith_Sharp(18,40,18,50,"NW_CITY_MERCHANT_SARAH_SMITH");
	TA_Smith_Fire(18,50,19,0,"NW_CITY_MERCHANT_SARAH_SMITH");
	TA_Smith_Anvil(19,0,19,10,"NW_CITY_MERCHANT_SARAH_SMITH");
	TA_Smith_Fire(19,10,19,20,"NW_CITY_MERCHANT_SARAH_SMITH");
	TA_Smith_Anvil(19,20,19,30,"NW_CITY_MERCHANT_SARAH_SMITH");
	TA_Smith_Fire(19,30,19,40,"NW_CITY_MERCHANT_SARAH_SMITH");
	TA_Smith_Anvil(19,40,19,50,"NW_CITY_MERCHANT_SARAH_SMITH");
	TA_Smith_Cool(19,50,20,0,"NW_CITY_MERCHANT_SARAH_SMITH");
	ta_piano(20,0,0,15,"TAVERN02");
	TA_Sleep(0,15,7,15,"NW_CITY_MERCHANT_SARAH_SLEEP");
};

func void rtn_stiers_470()
{
	TA_Sit_Chair(10,15,11,0,"NW_NM_02_ADD_06");
	ta_bathtub(11,0,12,0,"NW_NM_02_ADD_07");
	ta_piano(12,0,2,15,"TAVERN02");
	TA_Sleep(2,15,10,15,"NW_NM_02_ADD_05");
};

func void Rtn_Knast_470()
{
	TA_Stand_ArmsCrossed(8,0,20,0,"NW_CITY_HABOUR_KASERN_RENGARU");
	TA_Stand_ArmsCrossed(20,0,8,0,"NW_CITY_HABOUR_KASERN_RENGARU");
};

func void Rtn_Tot_470()
{
	TA_Stand_ArmsCrossed(5,15,20,15,"TOT");
	TA_Sleep(20,15,5,15,"TOT");
};


instance ITMI_SARAHWIG(C_Item)
{
	name = "";
	mainflag = ITEM_KAT_NF;
	flags = 0;
	value = 0;
	wear = WEAR_HEAD;
	visual = "ITMI_SARAHWIG_01.3DS";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
};


func int b_usepiano()
{
	if(Npc_HasItems(self,itar_w2_ves) >= 1)
	{
		return TRUE;
	}
	else
	{
		AI_PlayAni(self,"T_DONTKNOW");
		return FALSE;
	};
};

