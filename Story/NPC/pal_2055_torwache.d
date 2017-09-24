
instance PAL_2055_TORWACHE(Npc_Default)
{
	name[0] = NAME_Torwache;
	guild = GIL_PAL;
	id = 2055;
	voice = 12;
	flags = NPC_FLAG_IMMORTAL;
	npcType = npctype_main;
	aivar[91] = TRUE;
	B_SetAttributesToChapter(self,5);
	aivar[AIV_NewsOverride] = TRUE;
	fight_tactic = FAI_HUMAN_MASTER;
	EquipItem(self,ItMw_1h_Pal_Sword);
	EquipItem(self,itsh_paladin_a);
	B_SetNpcVisual(self,MALE,"Hum_Head_Bald",Face_N_Scar,BodyTex_N,ItAr_PAL_M);
	Mdl_SetModelFatness(self,1);
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,75);
	daily_routine = rtn_start_2055;
};


func void rtn_start_2055()
{
	TA_Guard_Passage(8,0,23,0,"NW_CITY_CASTLE_GUARD_02");
	TA_Guard_Passage(23,0,8,0,"NW_CITY_CASTLE_GUARD_02");
};

