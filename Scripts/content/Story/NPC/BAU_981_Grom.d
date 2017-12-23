
instance BAU_981_Grom(Npc_Default)
{
	name[0] = "Grom";
	guild = GIL_OUT;
	id = 981;
	voice = 8;
	flags = 0;
	npcType = npctype_main;
	B_SetAttributesToChapter(self,3);
	fight_tactic = FAI_HUMAN_STRONG;
	EquipItem(self,ItMw_1h_Sld_Sword);
	B_CreateAmbientInv(self);
	B_SetNpcVisual(self,MALE,"Hum_Head_FatBald",Face_P_Gilbert,BodyTex_P,ITAR_Bau_L);
	Mdl_SetModelFatness(self,2);
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,40);
	daily_routine = Rtn_Start_981;
};


func void Rtn_Start_981()
{
	ta_campfire_fry(8,0,9,0,"NW_CASTLEMINE_TROLL_CAMPFIRE");
	ta_woodcutting(9,0,13,0,"NW_CASTLEMINE_TROLL_04_C");
	ta_campfire_fry(13,0,14,0,"NW_CASTLEMINE_TROLL_CAMPFIRE");
	ta_woodcutting(14,0,16,0,"NW_CASTLEMINE_TROLL_04_C");
	ta_campfire_fry(16,0,17,0,"NW_CASTLEMINE_TROLL_CAMPFIRE");
	ta_woodcutting(17,0,19,0,"NW_CASTLEMINE_TROLL_04_C");
	ta_campfire_fry(19,0,20,0,"NW_CASTLEMINE_TROLL_CAMPFIRE");
	ta_woodcutting(20,0,21,0,"NW_CASTLEMINE_TROLL_04_C");
	ta_campfire_fry(21,0,23,0,"NW_CASTLEMINE_TROLL_CAMPFIRE");
	TA_Sleep(23,0,8,0,"NW_CASTLEMINE_TROLL_04_B");
};

