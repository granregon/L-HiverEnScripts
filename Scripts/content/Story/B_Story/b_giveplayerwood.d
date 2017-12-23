
func void b_giveplayerwood()
{
	if((PLAYER_TALENT_WOODMASTER[0] == FALSE) && (PLAYER_TALENT_WOODMASTER[1] == FALSE) && (PLAYER_TALENT_WOODMASTER[2] == FALSE))
	{
		CreateInvItems(hero,itmi_woodbar_big,1);
		AI_PrintScreen("1 wooden bar acquired!",-1,52,FONT_SCREENBRIGHTLARGE,3);
	}
	else if((PLAYER_TALENT_WOODMASTER[0] == TRUE) && (PLAYER_TALENT_WOODMASTER[1] == FALSE) && (PLAYER_TALENT_WOODMASTER[2] == FALSE))
	{
		CreateInvItems(hero,itmi_woodbar_big,2);
		AI_PrintScreen("2 wooden bars acquired!",-1,52,FONT_SCREENBRIGHTLARGE,3);
	}
	else if((PLAYER_TALENT_WOODMASTER[1] == TRUE) && (PLAYER_TALENT_WOODMASTER[0] == TRUE) && (PLAYER_TALENT_WOODMASTER[2] == FALSE))
	{
		CreateInvItems(hero,itmi_woodbar_big,3);
		AI_PrintScreen("3 wooden bars acquired!",-1,52,FONT_SCREENBRIGHTLARGE,3);
	}
	else if((PLAYER_TALENT_WOODMASTER[2] == TRUE) && (PLAYER_TALENT_WOODMASTER[0] == TRUE) && (PLAYER_TALENT_WOODMASTER[1] == TRUE))
	{
		CreateInvItems(hero,itmi_woodbar_big,4);
		AI_PrintScreen("4 wooden bars acquired!",-1,52,FONT_SCREENBRIGHTLARGE,3);
	};
};

