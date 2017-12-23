
instance VLK_449_Lares_DI(Npc_Default)
{
	name[0] = "Lares";
	guild = GIL_NONE;
	id = 4490;
	voice = 9;
	flags = 0;
	npcType = NPCTYPE_FRIEND;
	aivar[AIV_PARTYMEMBER] = TRUE;
	aivar[AIV_ToughGuy] = TRUE;
	aivar[AIV_ToughGuyNewsOverride] = TRUE;
	aivar[AIV_IgnoresFakeGuild] = TRUE;
	aivar[AIV_IgnoresArmor] = TRUE;
	B_SetAttributesToChapter(self,7);
	fight_tactic = FAI_HUMAN_STRONG;
	EquipItem(self,itmw_finebastard);
	B_CreateAmbientInv(self);
	B_SetNpcVisual(self,MALE,"Hum_Head_Thief",Face_N_Lares,BodyTex_N,itar_geralt_addon);
	Mdl_SetModelFatness(self,0);
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,65);
	daily_routine = Rtn_Start_4490;
};


func void Rtn_Start_4490()
{
	TA_Smalltalk(8,0,23,0,"SHIP_CREW_05");
	TA_Smalltalk(23,0,8,0,"SHIP_CREW_05");
};

func void Rtn_SittingShipDI_4490()
{
	TA_Sit_Bench(8,0,23,0,"SHIP_CREW_04");
	TA_Sit_Bench(23,0,8,0,"SHIP_CREW_04");
};

