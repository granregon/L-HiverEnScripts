
instance VLK_435_Nadja(Npc_Default)
{
	name[0] = "Nadja";
	guild = GIL_VLK;
	id = 435;
	voice = 16;
	flags = NPC_FLAG_IMMORTAL;
	npcType = npctype_main;
	aivar[AIV_ToughGuy] = TRUE;
	B_SetAttributesToChapter(self,1);
	fight_tactic = FAI_HUMAN_COWARD;
	EquipItem(self,itmi_nadjawig);
	B_CreateAmbientInv(self);
	B_SetNpcVisual(self,FEMALE,"Hum_Head_Babe",FaceBabe_N_Hure,BodyTex_N,itar_nadja_addon);
	Mdl_SetModelFatness(self,0);
	Mdl_ApplyOverlayMds(self,"Humans_Babe.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,30);
	daily_routine = Rtn_Start_435;
};


func void Rtn_Start_435()
{
	TA_Stand_Drinking(11,50,12,50,"NW_PUFF_DANCE");
	TA_Smoke_Joint(12,50,13,50,"NW_CITY_PUFF_ROOM_01");
	TA_Stand_Drinking(13,50,17,0,"NW_PUFF_DANCE");
	TA_Dance(17,0,20,0,"NW_PUFF_DANCE");
	TA_Stand_Drinking(20,0,0,0,"NW_PUFF_DANCE");
	TA_Dance(0,0,5,0,"NW_PUFF_DANCE");
	TA_Sleep(5,0,11,50,"NW_CITY_NADJA_BED");
};

func void Rtn_Dance_435()
{
	TA_Stand_ArmsCrossed(8,0,22,0,"NW_CITY_HABOUR_PUFF_NADJA");
	TA_Stand_ArmsCrossed(22,0,8,0,"NW_CITY_HABOUR_PUFF_NADJA");
};

func void Rtn_Smoke_435()
{
	TA_Smoke_Joint(5,0,17,0,"NW_PUFF_DANCE");
	TA_Dance(17,0,21,0,"NW_PUFF_DANCE");
	TA_Smoke_Joint(21,0,21,30,"NW_PUFF_DANCE");
	TA_Dance(21,30,5,0,"NW_PUFF_DANCE");
};

func void Rtn_Tot_435()
{
	TA_Stand_Guarding(0,0,12,0,"TOT");
	TA_Stand_Guarding(12,0,0,0,"TOT");
};


instance ITMI_NADJAWIG(C_Item)
{
	name = "Nadja's wig";
	mainflag = ITEM_KAT_NF;
	flags = 0;
	value = 0;
	wear = WEAR_HEAD;
	visual = "ITMI_NADJAWIG_01.3DS";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
};

