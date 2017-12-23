
instance Pal_218_Ritter(Npc_Default)
{
	name[0] = NAME_Ritter;
	guild = GIL_OUT;
	id = 218;
	voice = 4;
	flags = 0;
	npcType = NPCTYPE_OCAMBIENT;
	aivar[90] = TRUE;
	B_SetAttributesToChapter(self,6);
	fight_tactic = FAI_HUMAN_MASTER;
	EquipItem(self,ItMw_2h_Pal_Sword);
	B_CreateAmbientInv(self);
	B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face_N_NormalBart05,BodyTex_N,ItAr_PAl_H);
	Mdl_SetModelFatness(self,0);
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,90);
	daily_routine = Rtn_Start_218;
};


func void Rtn_Start_218()
{
	TA_Stand_Guarding(8,0,23,0,"OW_PATH_148_A");
	TA_Stand_Guarding(23,0,8,0,"OW_PATH_148_A");
};

