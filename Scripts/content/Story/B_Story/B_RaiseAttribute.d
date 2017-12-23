
func void B_RaiseRealAttributeLearnCounter(var C_Npc oth,var int attrib,var int points)
{
	if(attrib == ATR_STRENGTH)
	{
		oth.aivar[REAL_STRENGTH] = oth.aivar[REAL_STRENGTH] + points;
	}
	else if(attrib == ATR_DEXTERITY)
	{
		oth.aivar[REAL_DEXTERITY] = oth.aivar[REAL_DEXTERITY] + points;
	}
	else if(attrib == ATR_MANA_MAX)
	{
		oth.aivar[REAL_MANA_MAX] = oth.aivar[REAL_MANA_MAX] + points;
	};
};

func void B_RaiseAttribute(var C_Npc oth,var int attrib,var int points)
{
	var string concatText;
	if(attrib == ATR_STRENGTH)
	{
		oth.attribute[ATR_STRENGTH] = oth.attribute[ATR_STRENGTH] + points;
		if((oth.attribute[ATR_STRENGTH] >= 160) && (PASSIVE_HP == FALSE))
		{
			PASSIVE_HP = TRUE;
			Snd_Play("LevelUp");
			PrintScreen(PRINT_ADDON_HEALREGBONUS,-1,55,FONT_SCREENBRIGHTLARGE,5);
		};
		concatText = ConcatStrings(PRINT_LearnSTR,IntToString(points));
		PrintScreen(concatText,-1,-1,FONT_Screen,2);
	};
	if(attrib == ATR_DEXTERITY)
	{
		oth.attribute[ATR_DEXTERITY] = oth.attribute[ATR_DEXTERITY] + points;
		if((oth.attribute[ATR_DEXTERITY] >= 160) && (PASSIVE_ACROBATIC == FALSE))
		{
			PASSIVE_ACROBATIC = TRUE;
			Snd_Play("LevelUp");
			PrintScreen(PRINT_Addon_AcrobatBonus,-1,55,FONT_SCREENBRIGHTLARGE,5);
		};
		concatText = ConcatStrings(PRINT_LearnDEX,IntToString(points));
		PrintScreen(concatText,-1,-1,FONT_Screen,2);
	};
	if(attrib == ATR_MANA_MAX)
	{
		oth.attribute[ATR_MANA_MAX] = oth.attribute[ATR_MANA_MAX] + points;
		if((oth.attribute[ATR_MANA_MAX] >= 160) && (PASSIVE_MP == FALSE))
		{
			PASSIVE_MP = TRUE;
			Snd_Play("LevelUp");
			PrintScreen(PRINT_ADDON_MANAREGBONUS,-1,55,FONT_SCREENBRIGHTLARGE,5);
		};
		concatText = ConcatStrings(PRINT_LearnMANA_MAX,IntToString(points));
		PrintScreen(concatText,-1,-1,FONT_Screen,2);
	};
	if(attrib == ATR_HITPOINTS_MAX)
	{
		oth.attribute[ATR_HITPOINTS_MAX] = oth.attribute[ATR_HITPOINTS_MAX] + points;
		concatText = ConcatStrings(PRINT_Learnhitpoints_MAX,IntToString(points));
		PrintScreen(concatText,-1,-1,FONT_Screen,2);
	};
};

