
instance VLK_412_Harad(Npc_Default)
{
	name[0] = "Harad";
	guild = GIL_VLK;
	id = 412;
	voice = 12;
	flags = NPC_FLAG_IMMORTAL;
	npcType = npctype_main;
	B_SetAttributesToChapter(self,7);
	fight_tactic = FAI_HUMAN_STRONG;
	EquipItem(self,itmw_1hfinesword);
	EquipItem(self,itmi_haradwig);
	B_SetNpcVisual(self,MALE,"Hum_Head_FatBald",FACE_N_HARAD,BodyTex_N,ITAR_Smith);
	Mdl_SetModelFatness(self,2);
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,55);
	daily_routine = Rtn_Start_412;
};


func void Rtn_Start_412()
{
	TA_Sleep(23,30,6,50,"NW_CITY_BED_HARAD");
	ta_wash_self(6,50,7,0,"NW_CITY_SMITH_02");
	TA_Smith_Fire(7,0,7,10,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil(7,10,7,20,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Fire(7,20,7,30,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil(7,30,7,40,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Cool(7,40,7,50,"NW_CITY_SMITH_COOL");
	TA_Smith_Anvil(7,50,8,0,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Fire(8,0,8,10,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil(8,10,8,20,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Fire(8,20,8,30,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil(8,30,8,40,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Cool(8,40,8,50,"NW_CITY_SMITH_COOL");
	TA_Smith_Anvil(8,50,9,0,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Fire(9,0,9,10,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil(9,10,9,20,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Fire(9,20,9,30,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil(9,30,9,40,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Cool(9,40,9,50,"NW_CITY_SMITH_COOL");
	TA_Smith_Anvil(9,50,10,0,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Fire(10,0,10,10,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil(10,10,10,20,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Fire(10,20,10,30,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil(10,30,10,40,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Cool(10,40,10,50,"NW_CITY_SMITH_COOL");
	TA_Smith_Anvil(10,50,11,0,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Fire(11,0,11,10,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil(11,10,11,20,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Fire(11,20,11,30,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil(11,30,11,40,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Cool(11,40,11,50,"NW_CITY_SMITH_COOL");
	TA_Smith_Anvil(11,50,12,0,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Fire(12,0,12,10,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil(12,10,12,20,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Fire(12,20,12,30,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil(12,30,12,40,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Cool(12,40,12,50,"NW_CITY_SMITH_COOL");
	TA_Smith_Anvil(12,50,13,0,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Fire(13,0,13,10,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil(13,10,13,15,"NW_CITY_SMITH_ANVIL");
	ta_wash_self(13,15,13,25,"NW_CITY_SMITH_02");
	TA_Smith_Fire(13,25,13,30,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil(13,30,13,40,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Cool(13,40,13,50,"NW_CITY_SMITH_COOL");
	TA_Smith_Anvil(13,50,14,0,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Fire(14,0,14,10,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil(14,10,14,20,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Fire(14,20,14,30,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil(14,30,14,40,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Cool(14,40,14,50,"NW_CITY_SMITH_COOL");
	TA_Smith_Anvil(14,50,15,0,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Fire(15,0,15,10,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil(15,10,15,20,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Fire(15,20,15,30,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil(15,30,15,40,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Cool(15,40,15,50,"NW_CITY_SMITH_COOL");
	TA_Sit_Bench(15,50,16,50,"NW_CITY_SMITH_BENCH");
	TA_Stand_ArmsCrossed(16,50,18,0,"NW_CITY_SMITH_FIRE");
	TA_Smith_Fire(18,0,18,10,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil(18,10,18,20,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Fire(18,20,18,30,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil(18,30,18,40,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Cool(18,40,18,50,"NW_CITY_SMITH_COOL");
	TA_Smith_Anvil(18,50,19,0,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Fire(19,0,19,10,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil(19,10,19,20,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Fire(19,20,19,30,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil(19,30,19,40,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Cool(19,40,19,50,"NW_CITY_SMITH_COOL");
	TA_Smith_Anvil(19,50,20,0,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Fire(20,0,20,10,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil(20,10,20,20,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Fire(20,20,20,30,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil(20,30,20,40,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Cool(20,40,20,50,"NW_CITY_SMITH_COOL");
	TA_Smith_Anvil(20,50,21,0,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Fire(21,0,21,10,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil(21,10,21,20,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Fire(21,20,21,30,"NW_CITY_SMITH_FIRE");
	TA_Smith_Anvil(21,30,21,40,"NW_CITY_SMITH_ANVIL");
	TA_Smith_Cool(21,40,21,50,"NW_CITY_SMITH_COOL");
	TA_Sit_Throne(21,50,23,30,"NW_CITY_SMITH_THRONE");
};


instance ITMI_HARADWIG(C_Item)
{
	name = "Harad's wig";
	mainflag = ITEM_KAT_NF;
	flags = 0;
	value = 0;
	wear = WEAR_HEAD;
	visual = "ITMI_HARADWIG.3DS";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
};

