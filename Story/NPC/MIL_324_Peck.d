
instance MIL_324_Peck(Npc_Default)
{
	name[0] = "Peck";
	guild = GIL_MIL;
	id = 324;
	voice = 12;
	flags = 0;
	npcType = npctype_main;
	B_SetAttributesToChapter(self,2);
	fight_tactic = FAI_HUMAN_STRONG;
	EquipItem(self,ItMw_1h_Mil_Sword);
	B_CreateAmbientInv(self);
	CreateInvItems(self,ItKe_City_Tower_05,1);
	B_SetNpcVisual(self,MALE,"Hum_Head_Bald",Face_B_Normal_Orik,BodyTex_B,ITAR_Mil_L);
	Mdl_SetModelFatness(self,2);
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,40);
	daily_routine = Rtn_Start_324;
};


func void Rtn_Start_324()
{
	TA_Sit_Bench(8,0,9,0,"NW_CITY_HABOUR_PECK_BENCH");
	TA_Smoke_Waterpipe(9,0,10,0,"NW_CITY_PUFF_ROOM_02");
	TA_Stand_Drinking(10,0,11,0,"NW_CITY_PUFF_ROOM_02");
	TA_Stand_ArmsCrossed(11,0,12,7,"NW_CITY_HABOUR_PUFF_IN_06");
	TA_Smalltalk(12,7,17,0,"NW_CITY_HABOUR_PUFF_PECK");
	TA_Smoke_Joint(17,0,17,30,"NW_CITY_HABOUR_PECK_BENCH");
	TA_Smalltalk(17,30,8,0,"NW_CITY_HABOUR_PUFF_PECK");
};

func void Rtn_Storage_324()
{
	TA_Stand_ArmsCrossed(8,0,22,0,"NW_CITY_ARMORY_PECK");
	TA_Sleep(22,0,8,0,"NW_CITY_BARRACK02_BED_PECK");
};

