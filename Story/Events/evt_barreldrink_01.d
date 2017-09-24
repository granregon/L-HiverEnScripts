
func void evt_barreldrink_01()
{
	if(Npc_IsPlayer(hero) && (STAT_THRST >= 10))
	{
		PrintScreen("Thirst -15%",-1,15,FONT_SCREENBRIGHTLARGE,2);
		STAT_THRST -= 15;
	}
	else
	{
		PrintScreen("You are not thirsty!",-1,15,FONT_SCREENBRIGHTLARGE,2);
	};
	Npc_ChangeAttribute(hero,ATR_HITPOINTS,5);
	AI_UseMob(hero,"BARRELDRINK",-1);
};

