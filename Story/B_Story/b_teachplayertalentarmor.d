
func int b_teachplayertalentarmor(var C_Npc slf,var C_Npc oth,var int armastery)
{
	var int kosten;
	kosten = B_GetLearnCostTalent(oth,NPC_TALENT_ARMOR,armastery);
	if(oth.lp < kosten)
	{
		PrintScreen(PRINT_NotEnoughLearnPoints,-1,-1,FONT_ScreenSmall,2);
		B_Say(slf,oth,"$NOLEARNNOPOINTS");
		return FALSE;
	};
	oth.lp = oth.lp - kosten;
	Log_CreateTopic(TOPIC_TalentSmith,LOG_NOTE);
	if(armastery == ARMASTERY_1)
	{
		Npc_SetTalentSkill(oth,NPC_TALENT_ARMOR,1);
		PLAYER_TALENT_ARMOR[0] = TRUE;
		B_LogEntry(TOPIC_TalentSmith,LOGTEXT_ADDON_ARMOR_1);
		PrintScreen("Learned: Armor crafting - Beginner",-1,-1,FONT_Screen,2);
	};
	if(armastery == ARMASTERY_2)
	{
		Npc_SetTalentSkill(oth,NPC_TALENT_ARMOR,2);
		PLAYER_TALENT_ARMOR[1] = TRUE;
		B_LogEntry(TOPIC_TalentSmith,LOGTEXT_ADDON_ARMOR_2);
		PrintScreen("Learned: Armor crafting - Apprentice",-1,-1,FONT_Screen,2);
	};
	if(armastery == ARMASTERY_3)
	{
		Npc_SetTalentSkill(oth,NPC_TALENT_ARMOR,3);
		PLAYER_TALENT_ARMOR[2] = TRUE;
		B_LogEntry(TOPIC_TalentSmith,LOGTEXT_ADDON_ARMOR_3);
		PrintScreen("Learned: Armor crafting - Master",-1,-1,FONT_Screen,2);
	};
	return TRUE;
};

