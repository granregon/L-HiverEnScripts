
instance KDF_512_CORIOLAN(Npc_Default)
{
	name[0] = "Coriolan";
	guild = GIL_KDF;
	id = 512;
	voice = 4;
	flags = NPC_FLAG_IMMORTAL;
	npcType = npctype_main;
	B_SetAttributesToChapter(self,6);
	fight_tactic = FAI_HUMAN_COWARD;
	B_CreateAmbientInv(self);
	B_SetNpcVisual(self,MALE,"Hum_Head_FatBald",Face_P_Gilbert,BodyTex_B,itar_kdf_l_wh);
	Mdl_SetModelFatness(self,0);
	Mdl_ApplyOverlayMds(self,"Humans_Mage.mds");
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,75);
	daily_routine = rtn_start_512;
};


func void rtn_start_512()
{
	TA_Guard_Passage(8,0,23,0,"NW_MONASTERY_CORIOLAN");
	TA_Guard_Passage(23,0,8,0,"NW_MONASTERY_CORIOLAN");
};

