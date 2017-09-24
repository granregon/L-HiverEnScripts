
instance Pal_238_Ritter(Npc_Default)
{
	name[0] = NAME_Ritter;
	guild = GIL_PAL;
	id = 238;
	voice = 4;
	flags = 0;
	npcType = NPCTYPE_AMBIENT;
	aivar[91] = TRUE;
	B_SetAttributesToChapter(self,5);
	fight_tactic = FAI_HUMAN_MASTER;
	EquipItem(self,ItMw_1h_Pal_Sword);
	EquipItem(self,itsh_paladin_a);
	B_CreateAmbientInv(self);
	B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face_N_Normal06,BodyTex_N,ItAr_PAL_M);
	Mdl_SetModelFatness(self,0);
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,80);
	daily_routine = Rtn_Start_238;
};


func void Rtn_Start_238()
{
	TA_Smalltalk(8,0,23,0,"NW_CITY_LHCASTLE_BASE_02");
	TA_Sit_Bench(23,0,8,0,"NW_CITY_LHCASTLE_BASE_03");
};

