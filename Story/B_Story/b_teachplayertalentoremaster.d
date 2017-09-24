
func int b_teachplayertalentoremaster(var C_Npc slf,var C_Npc oth,var int ormastery)
{
	var int kosten;
	kosten = B_GetLearnCostTalent(oth,NPC_TALENT_OREMASTER,ormastery);
	if(oth.lp < kosten)
	{
		PrintScreen(PRINT_NotEnoughLearnPoints,-1,-1,FONT_ScreenSmall,2);
		B_Say(slf,oth,"$NOLEARNNOPOINTS");
		return FALSE;
	};
	oth.lp = oth.lp - kosten;
	Log_CreateTopic(TOPIC_TALENTOREMASTER,LOG_NOTE);
	if(ormastery == ORMASTERY_1)
	{
		Npc_SetTalentSkill(oth,NPC_TALENT_OREMASTER,1);
		PLAYER_TALENT_OREMASTER[0] = TRUE;
		B_LogEntry(TOPIC_TALENTOREMASTER,LOGTEXT_ADDON_ORE_1);
		AI_PrintScreen("Learned: Ore mining - Miner",-1,52,FONT_SCREENBRIGHTLARGE,3);
	};
	if(ormastery == ORMASTERY_2)
	{
		Npc_SetTalentSkill(oth,NPC_TALENT_OREMASTER,2);
		PLAYER_TALENT_OREMASTER[1] = TRUE;
		B_LogEntry(TOPIC_TALENTOREMASTER,LOGTEXT_ADDON_ORE_2);
		AI_PrintScreen("Learned: Ore mining - Master",-1,52,FONT_SCREENBRIGHTLARGE,3);
	};
	if(ormastery == ORMASTERY_3)
	{
		Npc_SetTalentSkill(oth,NPC_TALENT_OREMASTER,3);
		PLAYER_TALENT_OREMASTER[2] = TRUE;
		B_LogEntry(TOPIC_TALENTOREMASTER,LOGTEXT_ADDON_ORE_3);
		AI_PrintScreen("Learned: Ore mining - Expert",-1,52,FONT_SCREENBRIGHTLARGE,3);
	};
	return TRUE;
};

