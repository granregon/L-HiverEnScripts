
func int b_teachplayertalentbowmake(var C_Npc slf,var C_Npc oth,var int rangeweap)
{
	var int kosten;
	kosten = B_GetLearnCostTalent(oth,NPC_TALENT_BOWMAKE,rangeweap);
	if(oth.lp < kosten)
	{
		PrintScreen(PRINT_NotEnoughLearnPoints,-1,-1,FONT_ScreenSmall,2);
		B_Say(slf,oth,"$NOLEARNNOPOINTS");
		return FALSE;
	};
	oth.lp = oth.lp - kosten;
	Log_CreateTopic(TOPIC_TALENTBOWMAKE,LOG_NOTE);
	B_LogEntry(TOPIC_TALENTBOWMAKE,"To craft a bow, first of all I will need wooden blanks. I need to fix one at a special table and leave it to acquire the proper shape. Once the bow has been shaped, I can attach a string.");
	B_LogEntry(TOPIC_TALENTBOWMAKE,"For arrows I need to saw a wooden blank into shafts and then begin to craft arrows.");
	if(rangeweap == BOW_BSPR_1)
	{
		PLAYER_TALENT_BOWMAKE[0] = TRUE;
		B_LogEntry(TOPIC_TALENTBOWMAKE,"To craft 'Fine longbow' I need 2 wooden billets and 2 leathers.");
	};
	if(rangeweap == BOW_BSPR_2)
	{
		PLAYER_TALENT_BOWMAKE[1] = TRUE;
		B_LogEntry(TOPIC_TALENTBOWMAKE,"To craft 'Assassin's bow' I need 2 wooden billets and 3 leathers.");
	};
	if(rangeweap == BOW_BSPR_3)
	{
		PLAYER_TALENT_BOWMAKE[2] = TRUE;
		B_LogEntry(TOPIC_TALENTBOWMAKE,"To craft 'Combat bow' I need 3 wooden billets and 3 leathers.");
	};
	if(rangeweap == BOW_BSPR_4)
	{
		PLAYER_TALENT_BOWMAKE[3] = TRUE;
		B_LogEntry(TOPIC_TALENTBOWMAKE,"To craft 'Fine oak bow' I need 4 wooden billets and 2 leathers.");
	};
	if(rangeweap == BOW_BSPR_5)
	{
		PLAYER_TALENT_BOWMAKE[4] = TRUE;
		B_LogEntry(TOPIC_TALENTBOWMAKE,"To craft 'Heavy steel bow' I need 2 wooden billets, 2 leathers and 10 steel bars.");
	};
	PrintScreen(PRINT_LEARNBOWMAKE,-1,-1,FONT_Screen,2);
	Npc_SetTalentSkill(oth,NPC_TALENT_BOWMAKE,1);
	return TRUE;
};

