
instance MIL_360_MILIZ(Npc_Default)
{
	name[0] = NAME_Miliz;
	guild = GIL_MIL;
	id = 360;
	voice = 7;
	flags = 0;
	npcType = NPCTYPE_AMBIENT;
	B_SetAttributesToChapter(self,3);
	fight_tactic = FAI_HUMAN_STRONG;
	EquipItem(self,ItMw_1h_Mil_Sword);
	B_CreateAmbientInv(self);
	B_SetNpcVisual(self,MALE,"Hum_Head_Bald",Face_P_ToughBald_Nek,BodyTex_N,ITAR_Mil_L);
	Mdl_SetModelFatness(self,0);
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,55);
	daily_routine = rtn_start_360;
};


func void rtn_start_360()
{
	TA_Stand_Guarding(4,45,21,0,"NW_CITY_TEMPLE_VTRS_02");
	TA_Stand_Guarding(21,0,4,45,"NW_CITY_ANDRE_ADDWATCH");
};

