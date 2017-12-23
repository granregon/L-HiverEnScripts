
instance VLK_440_Bartok(Npc_Default)
{
	name[0] = "Bartok";
	guild = GIL_VLK;
	id = 440;
	voice = 4;
	flags = 0;
	npcType = npctype_main;
	level = 25;
	attribute[ATR_STRENGTH] = 155;
	attribute[ATR_DEXTERITY] = 155;
	attribute[ATR_MANA_MAX] = 1000;
	attribute[ATR_MANA] = 1000;
	attribute[ATR_HITPOINTS_MAX] = 700;
	attribute[ATR_HITPOINTS] = 700;
	fight_tactic = FAI_HUMAN_STRONG;
	EquipItem(self,ItRw_Bow_M_03);
	EquipItem(self,ItMW_Addon_Hacker_1h_01);
	B_CreateAmbientInv(self);
	CreateInvItems(self,ItRw_Arrow,20);
	CreateInvItems(self,ItPo_Health_Addon_04,2);
	B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face_N_Important_Arto,BodyTex_N,itar_leather_l_grd3);
	Mdl_SetModelFatness(self,0);
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,50);
	daily_routine = Rtn_Start_440;
};


func void Rtn_Start_440()
{
	TA_Stand_Drinking(7,0,9,15,"NW_CITY_MERCHANT_PATH_33");
	TA_Sit_Bench(9,15,10,45,"NW_CITY_PATH_HABOUR_08_BENCH");
	TA_Stand_Drinking(10,45,15,15,"NW_CITY_MERCHANT_PATH_33");
	TA_Stand_Eating(15,15,16,45,"NW_CITY_MERCHANT_PATH_28_F");
	TA_Stand_Drinking(16,45,20,45,"NW_CITY_MERCHANT_PATH_33");
	ta_sit_table(20,45,0,0,"NW_CITY_TAVERN_TABLE_01");
	TA_Sit_Bench(0,0,7,0,"NW_CITY_MERCHANT_TAVERN01_FRONT");
};

func void Rtn_GuideMitte_440()
{
	TA_Guide_Player(8,0,20,0,"NW_FARM1_CITYWALL_FOREST_03");
	TA_Guide_Player(20,0,8,0,"NW_FARM1_CITYWALL_FOREST_03");
};

func void Rtn_GuideEnde_440()
{
	TA_Guide_Player(8,0,20,0,"NW_FARM1_CITYWALL_FOREST_07");
	TA_Guide_Player(20,0,8,0,"NW_FARM1_CITYWALL_FOREST_07");
};

