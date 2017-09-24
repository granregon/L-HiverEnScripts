
instance VLK_4171_ANSELM(Npc_Default)
{
	name[0] = "Anselm";
	guild = GIL_VLK;
	id = 4171;
	voice = 10;
	flags = 0;
	npcType = npctype_main;
	B_SetAttributesToChapter(self,4);
	fight_tactic = FAI_HUMAN_COWARD;
	EquipItem(self,ItMw_1h_Bau_Axe);
	B_SetNpcVisual(self,MALE,"Hum_Head_Pony",Face_N_Weak_Cipher_alt,BodyTex_N,ITAR_Vlk_H);
	Mdl_SetModelFatness(self,0);
	Mdl_ApplyOverlayMds(self,"Humans_Arrogance.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,45);
	daily_routine = rtn_start_4171;
};


func void rtn_start_4171()
{
	TA_Stand_ArmsCrossed(8,0,22,0,"NW_CITY_MERCHANT_BKSSTAND");
	TA_Sleep(22,0,8,0,"NW_CITY_MERCHANT_BKSSLEEP");
};

