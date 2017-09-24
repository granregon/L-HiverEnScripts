
func int b_teachplayertalentleather(var C_Npc slf,var C_Npc oth,var int leatherfase)
{
	var int kosten;
	kosten = B_GetLearnCostTalent(oth,NPC_TALENT_LEATHER,leatherfase);
	if(oth.lp < kosten)
	{
		PrintScreen(PRINT_NotEnoughLearnPoints,-1,-1,FONT_ScreenSmall,2);
		B_Say(slf,oth,"$NOLEARNNOPOINTS");
		return FALSE;
	};
	oth.lp = oth.lp - kosten;
	Log_CreateTopic(TOPIC_TALENTLEATHER,LOG_NOTE);
	if(leatherfase == LEATHERFASE_1)
	{
		Npc_SetTalentSkill(oth,NPC_TALENT_LEATHER,1);
		PLAYER_TALENT_LEATHER = TRUE;
		B_LogEntry(TOPIC_TALENTLEATHER,LOGTEXT_ADDON_LEATHER);
		return TRUE;
	};
};

