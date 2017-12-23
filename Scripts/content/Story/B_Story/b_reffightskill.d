
func void b_reffightskill()
{
	if(hero.attribute[ATR_DEXTERITY] < 160)
	{
		Mdl_RemoveOverlayMds(hero,"Humans_Acrobatic.mds");
		PASSIVE_ACROBATIC = FALSE;
		PASSIVE_ACROBATIC_ON = FALSE;
	};
	B_AddFightSkill(hero,NPC_TALENT_1H,0);
	B_AddFightSkill(hero,NPC_TALENT_2H,0);
	B_AddFightSkill(hero,NPC_TALENT_BOW,0);
	B_AddFightSkill(hero,NPC_TALENT_CROSSBOW,0);
	Mdl_RemoveOverlayMds(hero,"Humans_Wounded_AD.mds");
	WGHT_MDS_ON = FALSE;
	DEAD_TIME = 0;
	DEAD_CHECK = FALSE;
	Wld_StopEffect("PCDEAD_FX");
};

