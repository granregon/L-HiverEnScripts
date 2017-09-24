
instance VLK_457_Brian(Npc_Default)
{
	name[0] = "Brian";
	guild = GIL_VLK;
	id = 457;
	voice = 4;
	flags = 0;
	npcType = npctype_main;
	B_SetAttributesToChapter(self,2);
	fight_tactic = FAI_HUMAN_COWARD;
	EquipItem(self,ItMw_1h_Vlk_Axe);
	B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face_B_Normal_Kirgo,BodyTex_B,ITAR_Smith);
	Mdl_SetModelFatness(self,0.5);
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,30);
	daily_routine = Rtn_Start_457;
};


func void Rtn_Start_457()
{
	TA_Smith_Sharp(7,5,15,51,"NW_CITY_SMITH_SHARP");
	TA_Smith_Fire(15,51,16,3,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil(16,3,16,17,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Fire(16,17,16,29,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil(16,29,16,40,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Cool(16,40,16,50,"NW_CITY_SMITH_COOL");
	TA_Smith_Anvil(16,50,16,55,"NW_CITY_SMITH_ANVIL");
	ta_wash_self(16,55,17,5,"NW_CITY_SMITH_02");
	TA_Smith_Fire(17,5,17,10,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil(17,10,17,20,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Fire(17,20,17,30,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil(17,30,17,50,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Cool(17,50,17,56,"NW_CITY_SMITH_COOL");
	TA_Smith_Sharp(17,56,18,15,"NW_CITY_SMITH_SHARP");
	TA_Stand_ArmsCrossed(18,15,19,15,"NW_CITY_SMITH_01");
	TA_Smith_Sharp(19,15,20,20,"NW_CITY_SMITH_SHARP");
	ta_wash_self(20,20,20,35,"NW_CITY_SMITH_02");
	ta_sit_table(20,35,23,15,"NW_CITY_TAVERN_TABLE_02");
	TA_Smalltalk(23,15,0,25,"NW_CITY_MERCHANT_PATH_14");
	TA_Sleep(0,25,7,5,"NW_CITY_BED_BRIAN");
};

func void Rtn_Lighthouse_457()
{
	TA_Stand_Guarding(8,0,20,0,"NW_LIGHTHOUSE_IN_01");
	TA_Sit_Throne(20,0,8,0,"NW_LIGHTHOUSE_IN_03");
};

