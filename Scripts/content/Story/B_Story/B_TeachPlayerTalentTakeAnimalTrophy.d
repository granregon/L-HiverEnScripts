
func int B_TeachPlayerTalentTakeAnimalTrophy(var C_Npc slf,var C_Npc oth,var int trophy)
{
	var int kosten;
	kosten = B_GetLearnCostTalent(oth,NPC_TALENT_TAKEANIMALTROPHY,trophy);
	if(oth.lp < kosten)
	{
		PrintScreen(PRINT_NotEnoughLearnPoints,-1,-1,FONT_ScreenSmall,2);
		B_Say(slf,oth,"$NOLEARNNOPOINTS");
		return FALSE;
	};
	oth.lp = oth.lp - kosten;
	Log_CreateTopic(TOPIC_TalentAnimalTrophy,LOG_NOTE);
	B_LogEntry(TOPIC_TalentAnimalTrophy,"Now I can:");
	if(trophy == TROPHY_Teeth)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Teeth] = TRUE;
		B_LogEntry(TOPIC_TalentAnimalTrophy,"... remove teeth from dead animals.");
	};
	if(trophy == TROPHY_MEAT)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[1] = TRUE;
		B_LogEntry(TOPIC_TalentAnimalTrophy,"... extract the meat from dead animals.");
	};
	if(trophy == TROPHY_Claws)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[2] = TRUE;
		B_LogEntry(TOPIC_TalentAnimalTrophy,"... remove claws from dead animals.");
	};
	if(trophy == TROPHY_Fur)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[3] = TRUE;
		B_LogEntry(TOPIC_TalentAnimalTrophy,"... remove fur from dead animals.");
	};
	if(trophy == TROPHY_ReptileSkin)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[14] = TRUE;
		B_LogEntry(TOPIC_TalentAnimalTrophy,"... remove skin from reptiles.");
	};
	if(trophy == TROPHY_Heart)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[4] = TRUE;
		B_LogEntry(TOPIC_TalentAnimalTrophy,"... remove heart from dead golems and dead demons.");
	};
	if(trophy == TROPHY_ShadowHorn)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[5] = TRUE;
		B_LogEntry(TOPIC_TalentAnimalTrophy,"... remove horn from dead shadowbeasts.");
	};
	if(trophy == TROPHY_FireTongue)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[6] = TRUE;
		B_LogEntry(TOPIC_TalentAnimalTrophy,"... remove tongue from dead fire lizards.");
	};
	if(trophy == TROPHY_BFWing)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[7] = TRUE;
		B_LogEntry(TOPIC_TalentAnimalTrophy,"... remove wings from dead bloodflies.");
	};
	if(trophy == TROPHY_BFSting)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[8] = TRUE;
		B_LogEntry(TOPIC_TalentAnimalTrophy,"... remove sting from dead bloodflies and hornets.");
	};
	if(trophy == TROPHY_Mandibles)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[9] = TRUE;
		B_LogEntry(TOPIC_TalentAnimalTrophy,"... remove mandibles from dead animals.");
	};
	if(trophy == TROPHY_CrawlerPlate)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[10] = TRUE;
		B_LogEntry(TOPIC_TalentAnimalTrophy,"... remove plates from dead minecrawlers.");
	};
	if(trophy == TROPHY_DrgSnapperHorn)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[11] = TRUE;
		B_LogEntry(TOPIC_TalentAnimalTrophy,"... remove horn from dead dragon snappers.");
	};
	if(trophy == TROPHY_DragonScale)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[12] = TRUE;
		B_LogEntry(TOPIC_TalentAnimalTrophy,"... remove scales from the hide of dead dragons.");
	};
	if(trophy == TROPHY_DragonBlood)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[13] = TRUE;
		B_LogEntry(TOPIC_TalentAnimalTrophy,"... collect blood from dead dragons.");
	};
	PrintScreen(PRINT_LearnTakeAnimalTrophy,-1,-1,FONT_Screen,2);
	Npc_SetTalentSkill(oth,NPC_TALENT_TAKEANIMALTROPHY,1);
	return TRUE;
};

