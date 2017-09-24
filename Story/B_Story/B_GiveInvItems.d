
func int B_GiveInvItems(var C_Npc giver,var C_Npc taker,var int itemInstance,var int amount)
{
	var string concatText;
	var string itemname;
	if(Npc_IsPlayer(giver))
	{
		if(amount > Npc_HasItems(giver,itemInstance))
		{
			return FALSE;
		};
	};
	if(amount == 0)
	{
		return TRUE;
	};
	Npc_RemoveInvItems(giver,itemInstance,amount);
	CreateInvItems(taker,itemInstance,amount);
	itemname = item.name;
	if(Npc_IsPlayer(giver))
	{
		if(itemInstance == ItMi_Gold)
		{
			concatText = IntToString(amount);
			AI_PrintScreen(concatText,-1,33,FONT_SCREENBRIGHTLARGE,3);
			AI_PrintScreen("=",-1,37,FONT_SYMBOLS,3);
			AI_PrintScreen(PRINT_Addon_gegeben,-1,44,FONT_SCREENBRIGHTLARGE,3);
		}
		else if(amount == 1)
		{
			concatText = ConcatStrings(itemname,PRINT_Addon_gegeben);
			AI_PrintScreen(concatText,-1,23,FONT_SCREENBRIGHTLARGE,2);
		}
		else
		{
			concatText = ConcatStrings(IntToString(amount),PRINT_ItemsGegeben);
			concatText = ConcatStrings(concatText," (");
			concatText = ConcatStrings(concatText,itemname);
			concatText = ConcatStrings(concatText,")");
			AI_PrintScreen(concatText,-1,23,FONT_SCREENBRIGHTLARGE,2);
		};
	}
	else if(Npc_IsPlayer(taker))
	{
		if(itemInstance == ItMi_Gold)
		{
			concatText = IntToString(amount);
			AI_PrintScreen(concatText,-1,33,FONT_SCREENBRIGHTLARGE,3);
			AI_PrintScreen("=",-1,37,FONT_SYMBOLS,3);
			AI_PrintScreen(PRINT_Addon_erhalten,-1,44,FONT_SCREENBRIGHTLARGE,3);
		}
		else if(amount == 1)
		{
			concatText = ConcatStrings(itemname,PRINT_Addon_erhalten);
			AI_PrintScreen(concatText,-1,27,FONT_SCREENBRIGHTLARGE,2);
		}
		else
		{
			concatText = ConcatStrings(IntToString(amount),PRINT_ItemsErhalten);
			concatText = ConcatStrings(concatText," (");
			concatText = ConcatStrings(concatText,itemname);
			concatText = ConcatStrings(concatText,")");
			AI_PrintScreen(concatText,-1,27,FONT_SCREENBRIGHTLARGE,2);
		};
	};
	return TRUE;
};

