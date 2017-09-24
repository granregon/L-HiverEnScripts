
instance DJG_705_Angar_NW(Npc_Default)
{
	name[0] = "Angar";
	guild = GIL_DJG;
	id = 7050;
	voice = 4;
	flags = 0;
	npcType = npctype_main;
	aivar[AIV_IgnoresArmor] = TRUE;
	B_SetAttributesToChapter(self,6);
	fight_tactic = FAI_HUMAN_MASTER;
	EquipItem(self,ItMw_Zweihaender2);
	B_CreateAmbientInv(self);
	B_SetNpcVisual(self,MALE,"Hum_Head_Bald",Face_B_CorAngar,BodyTex_B,ITAR_CorAngar);
	Mdl_SetModelFatness(self,0);
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,80);
	daily_routine = Rtn_Start_7050;
};


func void Rtn_Start_7050()
{
	TA_Stand_ArmsCrossed(6,0,10,0,"NW_FARM3_OUT_04_ANG");
	TA_Stand_ArmsCrossed(10,0,11,0,"NW_FARM3_TO_ONAR_08");
	TA_Stand_ArmsCrossed(11,0,13,0,"NW_FARM3_OUT_04_ANG");
	TA_Stand_ArmsCrossed(13,0,14,0,"NW_FARM3_PATH_03");
	TA_Stand_ArmsCrossed(14,0,16,0,"NW_FARM3_OUT_04_ANG");
	TA_Stand_ArmsCrossed(16,0,17,0,"NW_FARM3_TO_ONAR_08");
	TA_Stand_ArmsCrossed(17,0,19,0,"NW_FARM3_OUT_04_ANG");
	TA_Stand_ArmsCrossed(19,0,20,0,"NW_FARM3_PATH_03");
	TA_Sit_Campfire(20,0,6,0,"NW_FARM3_STABLE_REST_ANG");
};

func void Rtn_WaitForShip_7050()
{
	TA_Stand_ArmsCrossed(8,0,23,0,"NW_WAITFOR_SHIP_03");
	TA_Stand_ArmsCrossed(23,0,8,0,"NW_WAITFOR_SHIP_03");
};

func void Rtn_Ship_7050()
{
	TA_Stand_ArmsCrossed(8,0,23,0,"SHIP_CREW_03");
	TA_Stand_ArmsCrossed(23,0,8,0,"SHIP_CREW_03");
};

