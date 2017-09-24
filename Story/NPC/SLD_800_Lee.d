
instance SLD_800_Lee(Npc_Default)
{
	name[0] = "Lee";
	guild = GIL_SLD;
	id = 800;
	voice = 4;
	flags = NPC_FLAG_IMMORTAL;
	npcType = NPCTYPE_FRIEND;
	aivar[AIV_ToughGuy] = TRUE;
	aivar[AIV_ToughGuyNewsOverride] = TRUE;
	aivar[AIV_IGNORE_Murder] = TRUE;
	aivar[AIV_IGNORE_Theft] = TRUE;
	aivar[AIV_IGNORE_Sheepkiller] = TRUE;
	aivar[AIV_IgnoresArmor] = TRUE;
	B_SetAttributesToChapter(self,7);
	fight_tactic = FAI_HUMAN_MASTER;
	EquipItem(self,itmw_flameberge_grd1);
	B_CreateAmbientInv(self);
	B_SetNpcVisual(self,MALE,"Hum_Head_Pony",Face_N_Lee,BodyTex_N,itar_lee_addon);
	Mdl_SetModelFatness(self,0);
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,100);
	daily_routine = Rtn_Start_800;
};


func void Rtn_Start_800()
{
	TA_Stand_Guarding(8,10,9,0,"NW_BIGFARM_HOUSE_UPLEE_S");
	TA_Stand_Guarding(9,0,17,20,"NW_BIGFARM_HOUSE_LEE_GUARDING");
	TA_Sit_Throne(17,20,23,0,"NW_BIGFARM_HOUSE_ONAR_SIT");
	TA_Sit_Chair(23,0,1,0,"NW_BIGFARM_HOUSE_UP2_05");
	TA_Sleep(1,0,8,10,"NW_BIGFARM_HOUSE_UP2_04");
};

func void Rtn_WaitForShip_800()
{
	TA_Stand_Guarding(8,0,19,0,"NW_WAITFOR_SHIP_01");
	TA_Stand_Guarding(19,0,8,0,"NW_WAITFOR_SHIP_01");
};

func void Rtn_ShipOff_800()
{
	TA_Stand_Guarding(8,0,19,0,"NW_BIGFARM_HOUSE_LEE_GUARDING");
	TA_Sit_Chair(19,0,22,0,"NW_BIGFARM_HOUSE_UP2_05");
	TA_Sleep(22,0,8,0,"NW_BIGFARM_HOUSE_UP2_04");
};

func void Rtn_Ship_800()
{
	TA_Stand_Guarding(8,0,23,0,"SHIP_CREW_01");
	TA_Sleep(23,0,8,0,"SHIP_IN_06");
};

