
instance PAL_2044_TORWACHE(Npc_Default)
{
	name[0] = NAME_Torwache;
	guild = GIL_PAL;
	id = 2044;
	voice = 9;
	flags = 0;
	npcType = NPCTYPE_AMBIENT;
	aivar[AIV_NewsOverride] = TRUE;
	B_SetAttributesToChapter(self,4);
	fight_tactic = FAI_HUMAN_MASTER;
	EquipItem(self,ItMw_2h_Pal_Sword);
	B_CreateAmbientInv(self);
	B_SetNpcVisual(self,MALE,"Hum_Head_Bald",Face_N_Whistler,BodyTex_N,ItAr_PAL_M);
	Mdl_SetModelFatness(self,0.5);
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,55);
	daily_routine = rtn_start_2044;
};


func void rtn_start_2044()
{
	TA_Stand_ArmsCrossed(8,0,23,0,"NW_CITY_CASTLE_GUARD_01");
	TA_Stand_ArmsCrossed(23,0,8,0,"NW_CITY_CASTLE_GUARD_01");
};

