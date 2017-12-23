
func int B_TeachPlayerTalentSmith(var C_Npc slf,var C_Npc oth,var int waffe)
{
	var int kosten;
	kosten = B_GetLearnCostTalent(oth,NPC_TALENT_SMITH,waffe);
	if(oth.lp < kosten)
	{
		PrintScreen(PRINT_NotEnoughLearnPoints,-1,-1,FONT_ScreenSmall,2);
		B_Say(slf,oth,"$NOLEARNNOPOINTS");
		return FALSE;
	};
	oth.lp = oth.lp - kosten;
	Log_CreateTopic(TOPIC_TalentSmith,LOG_NOTE);
	B_LogEntry(TOPIC_TalentSmith,"To forge a weapon, first of all I need a piece of raw steel. This I must heat in the fire of a smithy until it glows red-hot and then shape it on an anvil. Special weapons often require the use of certain substances that give them special characteristics.");
	if(waffe == WEAPON_FIRSTBLADE)
	{
		PLAYER_TALENT_SMITH[0] = TRUE;
		B_LogEntry(TOPIC_TalentSmith,"<<Blade>> - 3 steel bars, 1 textile.");
	};
	if(waffe == WEAPON_1H_Special_01)
	{
		PLAYER_TALENT_SMITH[WEAPON_1H_Special_01] = TRUE;
		B_LogEntry(TOPIC_TalentSmith,"<<Ore longsword>> - 3 steel bars, 1 ore bar, 1 leather.");
	};
	if(waffe == WEAPON_2H_Special_01)
	{
		PLAYER_TALENT_SMITH[WEAPON_2H_Special_01] = TRUE;
		B_LogEntry(TOPIC_TalentSmith,"<<Ore bastard sword>> - 4 steel bars, 2 ore bars, 1 leather, 1 textile.");
	};
	if(waffe == WEAPON_1H_Special_02)
	{
		PLAYER_TALENT_SMITH[WEAPON_1H_Special_02] = TRUE;
		B_LogEntry(TOPIC_TalentSmith,"<<Ore bastard sword>> - 3 steel bars, 1 ore bar, 1 leather.");
	};
	if(waffe == WEAPON_2H_Special_02)
	{
		PLAYER_TALENT_SMITH[WEAPON_2H_Special_02] = TRUE;
		B_LogEntry(TOPIC_TalentSmith,"<<Heavy ore two-hander>> - 4 steel bars, 2 ore bars, 1 leather.");
	};
	if(waffe == WEAPON_1H_Special_03)
	{
		PLAYER_TALENT_SMITH[WEAPON_1H_Special_03] = TRUE;
		B_LogEntry(TOPIC_TalentSmith,"<<Orcish ore battle sword>> - 3 steel bars, 2 ore bars, 1 leather, 1 black pearl.");
	};
	if(waffe == WEAPON_2H_Special_03)
	{
		PLAYER_TALENT_SMITH[WEAPON_2H_Special_03] = TRUE;
		B_LogEntry(TOPIC_TalentSmith,"<<Heavy orcish ore battle sword>> - 4 steel bars, 3 ore bars, 2 leather.");
	};
	if(waffe == WEAPON_1H_Special_04)
	{
		PLAYER_TALENT_SMITH[WEAPON_1H_Special_04] = TRUE;
		B_LogEntry(TOPIC_TalentSmith,"<<Ore Dragonslayer>> - 5 steel bars, 3 ore bars, 5 dragon's blood, 1 leather, 1 black pearl.");
	};
	if(waffe == WEAPON_2H_Special_04)
	{
		PLAYER_TALENT_SMITH[WEAPON_2H_Special_04] = TRUE;
		B_LogEntry(TOPIC_TalentSmith,"<<Large ore Dragonslayer>> - 7 steel bars, 4 ore bars, 5 dragon's blood, 2 leather, 1 diamond, 1 amethyst.");
	};
	if(waffe == WEAPON_1H_DEATHBRINGER)
	{
		PLAYER_TALENT_SMITH[18] = TRUE;
		B_LogEntry(TOPIC_TalentSmith,"<<Deathbringer>> - 4 steel bars, 4 ore bars, 6 dragon's blood, 2 leather, 3 rubies.");
	};
	if(waffe == WEAPON_2H_DEATHBRINGER)
	{
		PLAYER_TALENT_SMITH[19] = TRUE;
		B_LogEntry(TOPIC_TalentSmith,"<<Heavy Deathbringer>> - 8 steel bars, 5 ore bars, 7 dragon's blood, 2 leather, 3 rubies.");
	};
	if(waffe == WEAPON_1HFINESWORD)
	{
		PLAYER_TALENT_SMITH[9] = TRUE;
		B_LogEntry(TOPIC_TalentSmith,"<<Steel longsword>> - 3 steel bars, 1 textile.");
	};
	if(waffe == WEAPON_SOT)
	{
		PLAYER_TALENT_SMITH[10] = TRUE;
		B_LogEntry(TOPIC_TalentSmith,"<<Sword Of Truth>> - 3 steel bars, 1 leather.");
	};
	if(waffe == WEAPON_FINEBASTARD)
	{
		PLAYER_TALENT_SMITH[11] = TRUE;
		B_LogEntry(TOPIC_TalentSmith,"<<Fine bastard sword>> - 4 steel bars, 1 leather.");
	};
	if(waffe == WEAPON_ANDURIL)
	{
		PLAYER_TALENT_SMITH[12] = TRUE;
		B_LogEntry(TOPIC_TalentSmith,"<<Elegant bastard sword>> - 4 steel bars, 1 leather.");
	};
	if(waffe == WEAPON_FIRSTBLADE2H)
	{
		PLAYER_TALENT_SMITH[13] = TRUE;
		B_LogEntry(TOPIC_TalentSmith,"<<Two-hander blade>> - 5 steel bars, 1 textile.");
	};
	if(waffe == WEAPON_2HFINESWORD)
	{
		PLAYER_TALENT_SMITH[15] = TRUE;
		B_LogEntry(TOPIC_TalentSmith,"<<Steel two-hander>> - 5 steel bars, 1 textile.");
	};
	if(waffe == WEAPON_CLAYMORE)
	{
		PLAYER_TALENT_SMITH[14] = TRUE;
		B_LogEntry(TOPIC_TalentSmith,"<<Claymore>> - 5 steel bars, 1 wooden bar.");
	};
	if(waffe == WEAPON_DEMONSLAYER)
	{
		PLAYER_TALENT_SMITH[16] = TRUE;
		B_LogEntry(TOPIC_TalentSmith,"<<Demonslayer>> - 7 steel bars, 1 textile.");
	};
	if(waffe == WEAPON_FLAMEBERGE)
	{
		PLAYER_TALENT_SMITH[17] = TRUE;
		B_LogEntry(TOPIC_TalentSmith,"<<Flamberge>> - 7 steel bars, 2 leathers.");
	};
	if(waffe == WEAPON_SH_HARAD_01)
	{
		PLAYER_TALENT_SMITH[20] = TRUE;
		B_LogEntry(TOPIC_TalentSmith,"<<Shield>> - 2 steel bars, 3 wooden bars.");
	};
	if(waffe == WEAPON_SH_HARAD_02)
	{
		PLAYER_TALENT_SMITH[21] = TRUE;
		B_LogEntry(TOPIC_TalentSmith,"<<Battle shield>> - 2 steel bars, 4 wooden bars.");
	};
	if(waffe == WEAPON_SH_HARAD_03)
	{
		PLAYER_TALENT_SMITH[22] = TRUE;
		B_LogEntry(TOPIC_TalentSmith,"<<Heavy steel shield>> - 7 steel bars.");
	};
	if(waffe == WEAPON_SH_HARAD_04)
	{
		PLAYER_TALENT_SMITH[23] = TRUE;
		B_LogEntry(TOPIC_TalentSmith,"<<Wooden tower shield>> - 4 steel bars, 8 wooden bars.");
	};
	if(waffe == WEAPON_SH_HARAD_05)
	{
		PLAYER_TALENT_SMITH[24] = TRUE;
		B_LogEntry(TOPIC_TalentSmith,"<<Steel tower shield>> - 12 steel bars.");
	};
	if(waffe == WEAPON_SH_BENNET_01)
	{
		PLAYER_TALENT_SMITH[25] = TRUE;
		B_LogEntry(TOPIC_TalentSmith,"<<Ore shield>> - 3 steel bars, 1 ore bar, 3 wooden bars.");
	};
	if(waffe == WEAPON_SH_BENNET_02)
	{
		PLAYER_TALENT_SMITH[26] = TRUE;
		B_LogEntry(TOPIC_TalentSmith,"<<Large ore shield>> - 4 steel bars, 2 ore bars, 5 wooden bars.");
	};
	if(waffe == WEAPON_SH_BENNET_03)
	{
		PLAYER_TALENT_SMITH[27] = TRUE;
		B_LogEntry(TOPIC_TalentSmith,"<<Excellent ore shield>> - 3 steel bars, 3 ore bars, 4 wooden bars.");
	};
	if(waffe == WEAPON_SH_BENNET_04)
	{
		PLAYER_TALENT_SMITH[28] = TRUE;
		B_LogEntry(TOPIC_TalentSmith,"<<Pure ore shield>> - 5 steel bars, 5 ore bars.");
	};
	if(waffe == WEAPON_SH_BENNET_05)
	{
		PLAYER_TALENT_SMITH[29] = TRUE;
		B_LogEntry(TOPIC_TalentSmith,"<<Pure ore tower shield>> - 6 steel bars, 8 ore bars.");
	};
	PrintScreen(PRINT_LearnSmith,-1,-1,FONT_Screen,2);
	Npc_SetTalentSkill(oth,NPC_TALENT_SMITH,1);
	return TRUE;
};

