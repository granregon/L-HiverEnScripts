
instance ITWr_Addon_Hinweis_02(C_Item)
{
	name = "Important Message";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 250;
	visual = "ItWr_Scroll_01_v2.3DS";
	material = MAT_LEATHER;
	on_state[0] = Use_Hinweis_02;
	scemeName = "MAP";
	description = name;
	text[0] = "From the tavern in the ";
};


func void Use_Hinweis_02()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,0,FONT_BookHeadline);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLine(nDocID,0,"Hey people,");
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Lou has disappeared in the swamp. He's probably been eaten by swampsharks.");
	Doc_PrintLines(nDocID,0,"Even worse - the key to the door disappeared with him.");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Find it and you can keep Lou's stuff.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"Snaf");
	Doc_Show(nDocID);
};


instance ITWr_Addon_Health_04(C_Item)
{
	name = "Pure life potion recipe";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 1000;
	visual = "ItWr_Scroll_01_v4.3DS";
	material = MAT_LEATHER;
	on_state[0] = Use_Heilrezept_04;
	scemeName = "MAP";
	description = name;
	text[2] = "Ability to create healing elixirs";
	text[3] = "is required to make this powerful potion";
	text[5] = NAME_Value;
	count[5] = value;
};


func void Use_Heilrezept_04()
{
	var int nDocID;
	if(Npc_IsPlayer(self))
	{
		if((PLAYER_TALENT_ALCHEMY[POTION_Health_03] == TRUE) && (PLAYER_TALENT_ALCHEMY[POTION_Health_04] == FALSE))
		{
			PLAYER_TALENT_ALCHEMY[POTION_Health_04] = TRUE;
			Snd_Play("LevelUP");
			B_LogEntry(TOPIC_TalentAlchemy,"To make a pure life potion, I need 1 king's sorrel and 3 essences of healing.");
		}
		else if(PLAYER_TALENT_ALCHEMY[POTION_Health_04] == TRUE)
		{
			B_Say(hero,hero,"$BEZI_TO_WIE");
		};
	};
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,0,FONT_BookHeadline);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLine(nDocID,0,"Pure life potion");
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"One meadow knotweed and three essences of healing are required.");
	Doc_PrintLines(nDocID,0,"Pour together and brew according to the recipe for healing elixirs.");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"This potion can only be created by alchemists who know the recipe for healing elixirs.");
	Doc_Show(nDocID);
};


instance ITWr_Addon_Mana_04(C_Item)
{
	name = "Pure mana potion recipe";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 1500;
	visual = "ItWr_Scroll_01_v4.3DS";
	material = MAT_LEATHER;
	on_state[0] = Use_Manarezept_04;
	scemeName = "MAP";
	description = name;
	text[2] = "Ability to create mana elixirs";
	text[3] = "is required to make this powerful potion";
	text[5] = NAME_Value;
	count[5] = value;
};


func void Use_Manarezept_04()
{
	var int nDocID;
	if(Npc_IsPlayer(self))
	{
		if((PLAYER_TALENT_ALCHEMY[POTION_Mana_03] == TRUE) && (PLAYER_TALENT_ALCHEMY[POTION_Mana_04] == FALSE))
		{
			PLAYER_TALENT_ALCHEMY[POTION_Mana_04] = TRUE;
			Snd_Play("LevelUP");
			B_LogEntry(TOPIC_TalentAlchemy,"To create a mana potion, I need 1 king's sorrel and 3 mana essences.");
		}
		else if(PLAYER_TALENT_ALCHEMY[POTION_Mana_04] == TRUE)
		{
			B_Say(hero,hero,"$BEZI_TO_WIE");
		};
	};
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,0,FONT_BookHeadline);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLines(nDocID,0,"Pure mana potion");
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"One meadow knotweed and three essences of magical power are required.");
	Doc_PrintLines(nDocID,0,"Pour together and brew according to the recipe for mana elixirs.");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"This potion can only be created by alchemists who know the recipe for mana elixirs.");
	Doc_Show(nDocID);
};


instance ITWR_ADDON_BAPEHBE(C_Item)
{
	name = "Recipe of woodland berries broth";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 975;
	visual = "ItWr_Scroll_01_v4.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_rezept_bapehb9i;
	scemeName = "MAP";
	description = "Recipe of woodland berries broth";
	text[2] = "To prepare the broth you need";
	text[3] = "a handful of woodland berries and water";
	text[5] = NAME_Value;
	count[5] = value;
};


func void use_rezept_bapehb9i()
{
	var int nDocID;
	if(Npc_IsPlayer(self))
	{
		if(KNOWS_BAPEHBE == FALSE)
		{
			KNOWS_BAPEHBE = TRUE;
			Snd_Play("LevelUP");
			B_LogEntry(TOPIC_TalentAlchemy,"For berry broth I need 10 woodland berries and a bottle of water.");
		}
		else
		{
			B_Say(hero,hero,"$BEZI_TO_WIE");
		};
	};
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,0,FONT_BookHeadline);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLine(nDocID,0,"Healing broth");
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"A broth made of woodland berries:");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"You need 10 woodland berries and a bottle of water.");
	Doc_PrintLines(nDocID,0,"Stir and cook until done.");
	Doc_Show(nDocID);
};


instance ITWR_PERM_MUSHROOMMP(C_Item)
{
	name = "Mana recipe from dark mushrooms";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 1800;
	visual = "ItWr_Scroll_01_v4.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_perm_mushroommp;
	scemeName = "MAP";
	description = "Elixir of dark mushrooms";
	text[2] = "To make this powerful potion you need";
	text[3] = "a large amount of dark mushrooms";
	text[5] = NAME_Value;
	count[5] = value;
};


func void use_perm_mushroommp()
{
	var int nDocID;
	if(Npc_IsPlayer(self))
	{
		if((PLAYER_TALENT_ALCHEMY[POTION_Mana_03] == TRUE) && (KNOWS_MUSHROOMMP == FALSE))
		{
			KNOWS_MUSHROOMMP = TRUE;
			Snd_Play("LevelUP");
			B_LogEntry(TOPIC_TalentAlchemy,"For the preparation of a special elixir of mana, you must have at least 50 dark mushrooms.");
		}
		else if(KNOWS_MUSHROOMMP)
		{
			B_Say(hero,hero,"$BEZI_TO_WIE");
		};
	};
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,0,FONT_BookHeadline);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLine(nDocID,0,"Elixir of dark mushroom");
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"It takes about fifty dark mushrooms.");
	Doc_PrintLines(nDocID,0,"Stir and cook until done.");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"This potion can only be created by an alchemist who knows the recipe for the elixir of mana.");
	Doc_Show(nDocID);
};


instance ITWR_PERM_PDEFMOSS(C_Item)
{
	name = "The Power of the Dead";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 1100;
	visual = "ItWr_Book_02_01_2.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_perm_pdefmoss;
	scemeName = "MAP";
	description = name;
	text[2] = "Contains informations";
	text[3] = "of an unknown potion.";
	text[5] = NAME_Value;
	count[5] = value;
};


func void use_perm_pdefmoss()
{
	var int nDocID;
	if(Npc_IsPlayer(self))
	{
		if(((PLAYER_TALENT_ALCHEMY[POTION_Perm_STR] == TRUE) || (PLAYER_TALENT_ALCHEMY[POTION_Perm_DEX] == TRUE) || (PLAYER_TALENT_ALCHEMY[POTION_Perm_Mana] == TRUE) || (PLAYER_TALENT_ALCHEMY[POTION_Perm_Health] == TRUE)) && (KNOWS_PDEFMOSS == FALSE))
		{
			KNOWS_PDEFMOSS = TRUE;
			Snd_Play("LevelUP");
			B_LogEntry(TOPIC_TalentAlchemy,"To prepare a special potion of protection, I need a grave moss and several skeleton bones.");
		}
		else if(KNOWS_PDEFMOSS == TRUE)
		{
			B_Say(hero,hero,"$BEZI_TO_WIE");
		}
		else
		{
			Print("Missing Skill: Brewing permanent potions");
			B_Say(hero,hero,"$BEZI_GOTOWY");
		};
	};
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Mage_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Mage_R.tga",0);
	Doc_SetFont(nDocID,-1,FONT_Book);
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"The Power of the Dead");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Skeletons are enchanted with some magical power that strengthens them... examining their remains, I've discovered that after death they don't lose their power. It is contained in their bones for a long time, slowly fading away.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"Experiments revealed that this energy can be used to strengthen our skeleton. If the bones are grind and mixed with the grave moss powder and cooked according to the permanent potions recipe, a substance is created containing a part of this energy.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"Kolgrimm the hermit");
	Doc_Show(nDocID);
};


instance ITWr_Addon_Hinweis_01(C_Item)
{
	name = "Important hint";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItWr_Scroll_01_v2.3DS";
	material = MAT_LEATHER;
	on_state[0] = Use_Hinweis_01;
	scemeName = "MAP";
	description = name;
	text[0] = "Hanging on a hut in the swamp";
};


func void Use_Hinweis_01()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLine(nDocID,0,"Hey people,");
	Doc_PrintLines(nDocID,0,"the stuff in the chests is for emergencies.");
	Doc_PrintLines(nDocID,0,"And it's for EVERYONE. So only take something if you need it.");
	Doc_PrintLines(nDocID,0,"And only take as much as you need.");
	Doc_PrintLines(nDocID,0,"If everybody sticks to this, it will work.");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"Fletcher");
	Doc_Show(nDocID);
};


instance ITWr_Addon_William_01(C_Item)
{
	name = "Note";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = Use_William_01;
	scemeName = "MAP";
	description = name;
	text[0] = "The fisherman William had this on him";
};


func void Use_William_01()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,0,FONT_BookHeadline);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLine(nDocID,0,"William,");
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"when the moon is full, the watch will be distracted.");
	Doc_PrintLines(nDocID,0,"Sneak out - but be careful!");
	Doc_PrintLines(nDocID,0,"If you follow the log road, you can leave the swamp.");
	Doc_PrintLines(nDocID,0,"The pirate camp is on the other side of the valley far to the west.");
	Doc_PrintLines(nDocID,0,"From there it should be easy to get away with the boat.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"A well-wisher");
	Doc_Show(nDocID);
};


instance ITWr_Addon_MCELIXIER_01(C_Item)
{
	name = "Recipe";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 250;
	visual = "ItWr_Scroll_01_v4.3DS";
	material = MAT_LEATHER;
	on_state[0] = Use_MCELIXIER_01;
	scemeName = "MAP";
	description = name;
	text[0] = "Recipe for the elixir of mental alteration";
	text[1] = "This potion helps restore lost memories";
};


func void Use_MCELIXIER_01()
{
	var int nDocID;
	if(!Knows_MCELIXIER)
	{
		Knows_MCELIXIER = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_TO_WIE");
	};
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,0,FONT_BookHeadline);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLine(nDocID,0,"Elixir of mental alteration");
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"The secretion from two bloodfly stingers is required to create this potion.");
	Doc_PrintLines(nDocID,0,"Add to that one mana extract and one essence of healing.");
	Doc_PrintLines(nDocID,0,"Finally, stir a bag of red tear-pepper into the boiling decoction.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Only an expert alchemist who knows how to extract the secretion from the stingers should try this potion.");
	Doc_Show(nDocID);
};


instance ITWr_Addon_Pirates_01(C_Item)
{
	name = "Greasy note";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 250;
	visual = "ItWr_Scroll_01_v2.3DS";
	material = MAT_LEATHER;
	on_state[0] = Use_Pirates_01;
	scemeName = "MAP";
	description = name;
	text[0] = "Angus had this note in his pocket";
};


func void Use_Pirates_01()
{
	var int nDocID;
	if(!Read_JuansText)
	{
		Read_JuansText = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_TO_WIE");
	};
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,0,FONT_BookHeadline);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLine(nDocID,0,"Pirates,");
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"get the last delivery meant for us.");
	Doc_PrintLines(nDocID,0,"Then bring it to your cave. We'll meet there.");
	Doc_PrintLines(nDocID,0,"I will pay double the value in gold.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"That's the way to do it.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"Tom");
	Doc_Show(nDocID);
};


instance ITWr_Addon_Joint_01(C_Item)
{
	name = "The green novice";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 250;
	visual = "ItWr_Scroll_01_v4.3DS";
	material = MAT_LEATHER;
	on_state[0] = Use_Joint_Rezept_01;
	scemeName = "MAP";
	description = name;
	text[0] = "From Fortuno's chest";
};


func void Use_Joint_Rezept_01()
{
	var int nDocID;
	if(!Green_Extrem)
	{
		Green_Extrem = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_TO_WIE");
	};
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,0,FONT_BookHeadline);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLine(nDocID,0,"The green novice");
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"(...) The reefers roll really well, but what we had in the Swamp Camp was of a whole different caliber.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"If I use the essence of two swampweed plants and add a meadow knotweed, then I have a reefer with the effect of the green novice.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"The green novice helps against all sorts of pain and clears the head.");
	Doc_Show(nDocID);
};


instance ITWr_Addon_Lou_Rezept(C_Item)
{
	name = "Lou's Hammer";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 70;
	visual = "ItWr_Scroll_01_v4.3DS";
	material = MAT_LEATHER;
	on_state[0] = UseLouRezept;
	scemeName = "MAP";
	description = name;
	text[0] = "Recipe for making Lou's Hammer";
};


func void UseLouRezept()
{
	var int nDocID;
	if(!Knows_LousHammer)
	{
		Knows_LousHammer = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_TO_WIE");
	};
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,0,FONT_BookHeadline);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLine(nDocID,0,"Lou's Hammer");
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"Ingredients for brewing a Hammer:");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Take a water bottle, two turnips and a decent portion of swampweed.");
	Doc_PrintLines(nDocID,0,"Add the ground teeth of a swampshark.");
	Doc_PrintLines(nDocID,0,"Put it all in the bottle and boil with a shot of rum.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"Cheers!");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"According to the old blind man, it is healthier not to breathe the steam!");
	Doc_Show(nDocID);
};


instance ITWr_Addon_Lou_Rezept2(C_Item)
{
	name = "Lou's Double Hammer";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 140;
	visual = "ItWr_Scroll_01_v4.3DS";
	material = MAT_LEATHER;
	on_state[0] = UseLouRezept2;
	scemeName = "MAP";
	description = name;
	text[0] = "Recipe for making Lou's Double Hammer";
};


func void UseLouRezept2()
{
	var int nDocID;
	if(!Knows_Schlafhammer)
	{
		Knows_Schlafhammer = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_TO_WIE");
	};
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Take a good old Lou's Hammer and distill it again.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"This mixture should only be made by experienced boozemakers.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"If a layman tries it, he won't only be blind,");
	Doc_PrintLine(nDocID,0,"but also dead.");
	Doc_Show(nDocID);
};


instance ITWr_Addon_Piratentod(C_Item)
{
	name = "Hasty herring";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 250;
	visual = "ItWr_Scroll_01_v4.3DS";
	material = MAT_LEATHER;
	on_state[0] = UseRezeptPiratentod;
	scemeName = "MAP";
	description = name;
	text[0] = "Recipe for making a hasty herring";
};


func void UseRezeptPiratentod()
{
	var int nDocID;
	if(!Knows_SchnellerHering)
	{
		Knows_SchnellerHering = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_TO_WIE");
	};
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,0,FONT_BookHeadline);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLine(nDocID,0,"Hasty herring (by me)");
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"Small pick-me-up for real men");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"As usual, you need a water bottle. Fill this with a measure of rum and add a fresh fish.");
	Doc_PrintLines(nDocID,0,"As soon as the liquid begins to turn yellow, take out the fish and add a bundle of freshly picked snapperweed for flavor.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"Careful. The stuff has a powerful kick.");
	Doc_Show(nDocID);
};


instance Fakescroll_Addon(C_Item)
{
	name = "A piece of paper";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	hp = 5;
	hp_max = 5;
	weight = 1;
	value = 0;
	visual = "Fakescroll.3ds";
	material = MAT_LEATHER;
	scemeName = "MAPSEALED";
	description = name;
};

instance ItWr_Addon_SUMMONANCIENTGHOST(C_Item)
{
	name = "Call of Quarhodron";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 250;
	visual = "ItWr_Scroll_01_v2.3DS";
	material = MAT_LEATHER;
	on_state[0] = UseSummonAncientGhost;
	scemeName = "MAP";
	description = name;
	text[0] = "With the help of this scroll you can call Quarhodron";
};


func void UseSummonAncientGhost()
{
	if(SC_SummonedAncientGhost == FALSE)
	{
		B_Say(self,self,"$ADDON_SUMMONANCIENTGHOST");
		if(Npc_GetDistToWP(self,"ADW_QUARHODRONGHOST") < 1000)
		{
			Wld_InsertNpc(NONE_ADDON_111_Quarhodron,"ADW_QUARHODRONGHOST");
			Wld_PlayEffect("spellFX_Maya_Ghost",NONE_ADDON_111_Quarhodron,NONE_ADDON_111_Quarhodron,0,0,0,FALSE);
			Wld_PlayEffect("SPELLFX_LIGHTSTAR_WHITE",NONE_ADDON_111_Quarhodron,NONE_ADDON_111_Quarhodron,0,0,0,FALSE);
			Snd_Play("MFX_GhostVoice");
			Snd_Play("MFX_Firestorm_Cast");
			Snd_Play("MFX_Lightning_Origin");
			SC_SummonedAncientGhost = TRUE;
		}
		else
		{
			B_Say(self,self,"$ADDON_ANCIENTGHOST_NOTNEAR");
		};
	};
};


instance ItWr_Map_AddonWorld(C_Item)
{
	name = "The forgotten valley of the builders";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION | ITEM_MULTI;
	value = 250;
	visual = "ItWr_Map_01.3DS";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = Use_Map_AddonWorld;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};


func void Use_Map_AddonWorld()
{
	var int Document;
	if(Npc_IsPlayer(self))
	{
		B_SetPlayerMap(ItWr_Map_AddonWorld);
	};
	Document = Doc_CreateMap();
	Doc_SetPages(Document,1);
	Doc_SetPage(Document,0,"Map_AddonWorld.tga",TRUE);
	Doc_SetLevel(Document,"Addon\AddonWorld.zen");
	Doc_SetLevelCoords(Document,-47783,36300,43949,-32300);
	Doc_Show(Document);
};


instance ITWR_ADDON_BMCRFT_01(C_Item)
{
	name = "Sketch of old armor";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 1000;
	visual = "ArmorCrft_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_bmcrft_01;
	scemeName = "MAP";
	description = name;
	text[2] = "Shows how to forge";
	text[3] = "an old armor.";
	text[5] = NAME_Value;
	count[5] = value;
};


func void use_bmcrft_01()
{
	var int nDocID;
	if(Npc_IsPlayer(self))
	{
		if((KNOWS_BATTLEMAGE == FALSE) && (PLAYER_TALENT_ARMOR[1] == TRUE))
		{
			KNOWS_BATTLEMAGE = TRUE;
			B_Say(self,self,"$BEZI_INTERES");
			B_LogEntry(TOPIC_TalentSmith,"I have found some old sketch of an armor, I should try to forge it.");
		}
		else if(KNOWS_BATTLEMAGE)
		{
			B_Say(hero,hero,"$BEZI_TO_WIE");
		};
		if((KNOWS_BATTLEMAGE == FALSE) && (PLAYER_TALENT_ARMOR[1] == FALSE))
		{
			B_Say(hero,hero,"$BEZI_GOTOWY");
			Print(PRINT_NoPicklockTalent);
		};
	};
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"ArmorCrft_01.TGA",0);
	Doc_SetFont(nDocID,0,FONT_BookHeadline);
	Doc_SetMargins(nDocID,-1,50,50,50,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_Show(nDocID);
};


instance ITWR_ADDON_TACRFT_01(C_Item)
{
	name = "Sketch of troll hide armor";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 440;
	visual = "ArmorCrft_02.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_tacrft_01;
	scemeName = "MAP";
	description = name;
	text[2] = "Shows how to forge";
	text[3] = "an armor from the troll hide";
	text[5] = NAME_Value;
	count[5] = value;
};


func void use_tacrft_01()
{
	var int nDocID;
	if(Npc_IsPlayer(self))
	{
		if((KNOWS_TROLLARCRFT == FALSE) && (PLAYER_TALENT_ARMOR[0] == TRUE))
		{
			KNOWS_TROLLARCRFT = TRUE;
			B_Say(self,self,"$BEZI_INTERES");
			B_LogEntry(TOPIC_TalentSmith,"Now I can forge the troll hide armor.");
		}
		else if(KNOWS_TROLLARCRFT)
		{
			B_Say(hero,hero,"$BEZI_TO_WIE");
		};
		if((KNOWS_TROLLARCRFT == FALSE) && (PLAYER_TALENT_ARMOR[0] == FALSE))
		{
			B_Say(self,self,"$BEZI_GOTOWY");
			Print(PRINT_NoPicklockTalent);
		};
	};
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"ArmorCrft_02.TGA",0);
	Doc_SetFont(nDocID,0,FONT_BookHeadline);
	Doc_SetMargins(nDocID,-1,50,50,50,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_Show(nDocID);
};


instance ITWR_ADDON_SLDBOCRFT_01(C_Item)
{
	name = "Sketch of black ore armor";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 6500;
	visual = "ArmorCrft_03.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_sldbocrft_01;
	scemeName = "MAP";
	description = name;
	text[2] = "Shows how to forge";
	text[3] = "the black ore armor";
	text[5] = NAME_Value;
	count[5] = value;
};


func void use_sldbocrft_01()
{
	var int nDocID;
	if(Npc_IsPlayer(self))
	{
		if((KNOWS_SLDBLACKORE == FALSE) && (PLAYER_TALENT_ARMOR[2] == TRUE))
		{
			KNOWS_SLDBLACKORE = TRUE;
			B_Say(self,self,"$BEZI_INTERES");
			B_LogEntry(TOPIC_TalentSmith,"Now I can forge the black ore armor.");
		}
		else if(KNOWS_SLDBLACKORE)
		{
			B_Say(hero,hero,"$BEZI_TO_WIE");
		};
		if((KNOWS_SLDBLACKORE == FALSE) && (PLAYER_TALENT_ARMOR[2] == FALSE))
		{
			B_Say(self,self,"$BEZI_GOTOWY");
			Print(PRINT_NoPicklockTalent);
		};
	};
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"ArmorCrft_03.TGA",0);
	Doc_SetFont(nDocID,0,FONT_BookHeadline);
	Doc_SetMargins(nDocID,-1,50,50,50,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_Show(nDocID);
};


instance ITWR_ADDON_SLDG3CRFT_01(C_Item)
{
	name = "Sketch of Myrtana mercenary armor";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 540;
	visual = "ArmorCrft_04.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_sldg3crft_01;
	scemeName = "MAP";
	description = name;
	text[2] = "Shows how to forge";
	text[3] = "the Myrtana mercenary armor.";
	text[5] = NAME_Value;
	count[5] = value;
};


func void use_sldg3crft_01()
{
	var int nDocID;
	if(Npc_IsPlayer(self))
	{
		if((KNOWS_SLDG3 == FALSE) && (PLAYER_TALENT_ARMOR[0] == TRUE))
		{
			KNOWS_SLDG3 = TRUE;
			B_Say(self,self,"$BEZI_INTERES");
			B_LogEntry(TOPIC_TalentSmith,"Now I can forge the Myrtana mercenary armor.");
		}
		else if(KNOWS_SLDG3)
		{
			B_Say(hero,hero,"$BEZI_TO_WIE");
		};
		if((KNOWS_SLDG3 == FALSE) && (PLAYER_TALENT_ARMOR[0] == FALSE))
		{
			B_Say(self,self,"$BEZI_GOTOWY");
			Print(PRINT_NoPicklockTalent);
		};
	};
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"ArmorCrft_04.TGA",0);
	Doc_SetFont(nDocID,0,FONT_BookHeadline);
	Doc_SetMargins(nDocID,-1,50,50,50,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_Show(nDocID);
};


instance ITWR_ADDON_G3SLDCRFT_GRD1TO3(C_Item)
{
	name = "Manual for improving the Myrtana mercenary armor";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 300;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_sldg3_grd1to3;
	scemeName = "MAP";
	description = name;
	text[2] = "Allows to improve the protective qualities of the armor.";
	text[5] = NAME_Value;
	count[5] = value;
};


func void use_sldg3_grd1to3()
{
	var int nDocID;
	if(Npc_IsPlayer(self))
	{
		if((KNOWS_SLDG3_GRD1TO3 == FALSE) && (KNOWS_SLDG3 == TRUE) && (PLAYER_TALENT_ARMOR[0] == TRUE))
		{
			KNOWS_SLDG3_GRD1TO3 = TRUE;
			B_Say(self,self,"$BEZI_INTERES");
			B_LogEntry(TOPIC_TalentSmith,"Now I can improve the Myrtana mercenary armor, adding extra protection to hands and feet.");
		}
		else if(KNOWS_SLDG3_GRD1TO3)
		{
			B_Say(hero,hero,"$BEZI_TO_WIE");
		};
		if((KNOWS_SLDG3_GRD1TO3 == FALSE) || (KNOWS_SLDG3 == FALSE) || (PLAYER_TALENT_ARMOR[0] == FALSE))
		{
			B_Say(self,self,"$BEZI_GOTOWY");
			Print(PRINT_NoPicklockTalent);
		};
	};
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"       Myrtana mercenary armor");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"     Leather boots:");
	Doc_PrintLine(nDocID,0,"         requires 3 leathers.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"     Leather gloves:");
	Doc_PrintLine(nDocID,0,"          requires 2 leathers.");
	Doc_PrintLine(nDocID,0,"");
	Doc_Show(nDocID);
};


instance ITWR_ADDON_G3SLDCRFT_GRD4TO5(C_Item)
{
	name = "Manual for improving the Myrtana mercenary armor";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 600;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_sldg3_grd4to5;
	scemeName = "MAP";
	description = name;
	text[2] = "Allows you to further improve the protective qualities of the armor.";
	text[3] = "              Requires knowledge of previous improvements and apprentice skills.";
	text[5] = NAME_Value;
	count[5] = value;
};


func void use_sldg3_grd4to5()
{
	var int nDocID;
	if(Npc_IsPlayer(self))
	{
		if((KNOWS_SLDG3_GRD4TO5 == FALSE) && (KNOWS_SLDG3_GRD1TO3 == TRUE) && (PLAYER_TALENT_ARMOR[1] == TRUE))
		{
			KNOWS_SLDG3_GRD4TO5 = TRUE;
			B_Say(self,self,"$BEZI_INTERES");
			B_LogEntry(TOPIC_TalentSmith,"Now I can seriously improve the Myrtana mercenary armor, adding extra protection to body and legs.");
		}
		else if(KNOWS_SLDG3_GRD4TO5)
		{
			B_Say(hero,hero,"$BEZI_TO_WIE");
		};
		if((KNOWS_SLDG3_GRD4TO5 == FALSE) || (KNOWS_SLDG3_GRD1TO3 == FALSE) || (PLAYER_TALENT_ARMOR[1] == FALSE))
		{
			B_Say(self,self,"$BEZI_GOTOWY");
			Print(PRINT_NoPicklockTalent);
		};
	};
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"       Myrtana mercenary armor");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"Steel plates for shoulders protection:");
	Doc_PrintLine(nDocID,0,"     requires 2 steel ingots and a leather.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"Steel plates to protect the chest and legs,");
	Doc_PrintLine(nDocID,0,"   as well as heavy duty shoulder pads:");
	Doc_PrintLine(nDocID,0,"        requires 7 steel ingots and 2 leathers.");
	Doc_PrintLine(nDocID,0,"");
	Doc_Show(nDocID);
};


instance ITWR_ADDON_G3SLDCRFT_GRD6TO7(C_Item)
{
	name = "Manual for improving the Myrtana mercenary armor";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 1200;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_sldg3_grd6to7;
	scemeName = "MAP";
	description = name;
	text[2] = "Allows you to maximize the protective qualities of the armor.";
	text[3] = "               Requires knowledge of previous improvements and mastery skills.";
	text[5] = NAME_Value;
	count[5] = value;
};


func void use_sldg3_grd6to7()
{
	var int nDocID;
	if(Npc_IsPlayer(self))
	{
		if((KNOWS_SLDG3_GRD6TO7 == FALSE) && (KNOWS_SLDG3_GRD4TO5 == TRUE) && (PLAYER_TALENT_ARMOR[2] == TRUE))
		{
			KNOWS_SLDG3_GRD6TO7 = TRUE;
			B_Say(self,self,"$BEZI_INTERES");
			B_LogEntry(TOPIC_TalentSmith,"Now I can maximally improve the Myrtana mercenary armor, adding additional protection to hands and feet.");
		}
		else if(KNOWS_SLDG3_GRD6TO7)
		{
			B_Say(hero,hero,"$BEZI_TO_WIE");
		};
		if((KNOWS_SLDG3_GRD6TO7 == FALSE) || (KNOWS_SLDG3_GRD4TO5 == FALSE) || (PLAYER_TALENT_ARMOR[2] == FALSE))
		{
			B_Say(self,self,"$BEZI_GOTOWY");
			Print(PRINT_NoPicklockTalent);
		};
	};
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"       Myrtana mercenary armor");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"Steel greaves for leg protection:");
	Doc_PrintLine(nDocID,0,"     requires 2 steel ingots and a leather.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"Steel-reinforced gloves and bracers:");
	Doc_PrintLine(nDocID,0,"     requires 2 steel ingots and a leather.");
	Doc_PrintLine(nDocID,0,"");
	Doc_Show(nDocID);
};


instance ITWR_ADDON_W2KNIGHTCRFT_01(C_Item)
{
	name = "Instructions for improving royal Vengardian armor";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 3950;
	visual = "ArmorCrft_05.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_w2knightcrft_01;
	scemeName = "MAP";
	description = "Sketch of heavy Vengardian armor";
	text[2] = "Scheme of Heavy royal Vengardian armor";
	text[3] = "         from one of Vengard's best engineers";
	text[5] = NAME_Value;
	count[5] = value;
};


func void use_w2knightcrft_01()
{
	var int nDocID;
	if(Npc_IsPlayer(self))
	{
		if((KNOWS_W2KNIGHT == FALSE) && (PLAYER_TALENT_ARMOR[1] == TRUE))
		{
			KNOWS_W2KNIGHT = TRUE;
			B_Say(self,self,"$BEZI_INTERES");
			B_LogEntry(TOPIC_TalentSmith,"Now I can forge the royal Vengardian armor.");
		}
		else if(KNOWS_W2KNIGHT)
		{
			B_Say(hero,hero,"$BEZI_TO_WIE");
		};
		if((KNOWS_W2KNIGHT == FALSE) && (PLAYER_TALENT_ARMOR[1] == FALSE))
		{
			B_Say(self,self,"$BEZI_GOTOWY");
			Print(PRINT_NoPicklockTalent);
		};
	};
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"ArmorCrft_05.TGA",0);
	Doc_SetFont(nDocID,0,FONT_BookHeadline);
	Doc_SetMargins(nDocID,-1,50,50,50,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_Show(nDocID);
};


instance ITWR_ADDON_W2KNIGHTCRFT_GRD1TO2(C_Item)
{
	name = "Instructions for improving royal Vengardian armor";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 1150;
	visual = "ItWr_Scroll_03.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_w2_grd1to2;
	scemeName = "MAP";
	description = name;
	text[2] = "Shows how to improve the armor's defensive properties.";
	text[5] = NAME_Value;
	count[5] = value;
};


func void use_w2_grd1to2()
{
	var int nDocID;
	if(Npc_IsPlayer(self))
	{
		if((KNOWS_W2KNIGHT_GRD1TO2 == FALSE) && (KNOWS_W2KNIGHT == TRUE) && (PLAYER_TALENT_ARMOR[1] == TRUE))
		{
			KNOWS_W2KNIGHT_GRD1TO2 = TRUE;
			B_Say(self,self,"$BEZI_INTERES");
			B_LogEntry(TOPIC_TalentSmith,"Now I can improve the royal cuirass, by adding additional protection for shoulders and legs.");
		}
		else if(KNOWS_W2KNIGHT_GRD1TO2)
		{
			B_Say(hero,hero,"$BEZI_TO_WIE");
		};
		if((KNOWS_W2KNIGHT_GRD1TO2 == FALSE) || (KNOWS_W2KNIGHT == FALSE) || (PLAYER_TALENT_ARMOR[1] == FALSE))
		{
			B_Say(self,self,"$BEZI_GOTOWY");
			Print(PRINT_NoPicklockTalent);
		};
	};
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"Royal Vengardian armor");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Steel shoulder plates:");
	Doc_PrintLines(nDocID,0,"    requires 2 steel bar and a lether.");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"Steel leggings plates:");
	Doc_PrintLine(nDocID,0,"    requires 2 steel bar and a lether.");
	Doc_PrintLine(nDocID,0,"");
	Doc_Show(nDocID);
};


instance ITWR_ADDON_W2KNIGHTCRFT_GRD3TO4(C_Item)
{
	name = "Instructions for improving royal Vengardian armor";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 2300;
	visual = "ItWr_Scroll_03.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_w2_grd3to4;
	scemeName = "MAP";
	description = name;
	text[2] = "Shows how to further improve the armor's defensive properties.";
	text[3] = "              Requires skill mastery and knowledge of previous improvement.";
	text[5] = NAME_Value;
	count[5] = value;
};


func void use_w2_grd3to4()
{
	var int nDocID;
	if(Npc_IsPlayer(self))
	{
		if((KNOWS_W2KNIGHT_GRD3TO4 == FALSE) && (KNOWS_W2KNIGHT_GRD1TO2 == TRUE) && (PLAYER_TALENT_ARMOR[2] == TRUE))
		{
			KNOWS_W2KNIGHT_GRD3TO4 = TRUE;
			B_Say(self,self,"$BEZI_INTERES");
			B_LogEntry(TOPIC_TalentSmith,"Now I can seriously improve the royal armor, by adding extra protection for hands and feet.");
		}
		else if(KNOWS_W2KNIGHT_GRD3TO4)
		{
			B_Say(hero,hero,"$BEZI_TO_WIE");
		};
		if((KNOWS_W2KNIGHT_GRD3TO4 == FALSE) || (KNOWS_W2KNIGHT_GRD1TO2 == FALSE) || (PLAYER_TALENT_ARMOR[2] == FALSE))
		{
			B_Say(self,self,"$BEZI_GOTOWY");
			Print(PRINT_NoPicklockTalent);
		};
	};
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"Royal Vengardian armor");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"A large steel plate on the chest to protect the throat and heart, as well as a patchwork of boots for the protection of feet:");
	Doc_PrintLine(nDocID,0,"    requires 4 steel ingots and a leather.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"Plated gloves protection:");
	Doc_PrintLine(nDocID,0,"    requires 4 steel ingots and 3 leathers.");
	Doc_PrintLine(nDocID,0,"");
	Doc_Show(nDocID);
};


instance ITWR_ADDON_W2KNIGHTCRFT_GRD5TO7(C_Item)
{
	name = "Instructions for improving royal Vengardian armor";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 3450;
	visual = "ItWr_Scroll_03.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_w2_grd5to7;
	scemeName = "MAP";
	description = name;
	text[2] = "Shows how to fully improve the armor's protection";
	text[3] = "                requires skill mastery and knowledge of previous improvement.";
	text[5] = NAME_Value;
	count[5] = value;
};


func void use_w2_grd5to7()
{
	var int nDocID;
	if(Npc_IsPlayer(self))
	{
		if((KNOWS_W2KNIGHT_GRD5TO7 == FALSE) && (KNOWS_W2KNIGHT_GRD3TO4 == TRUE) && (PLAYER_TALENT_ARMOR[2] == TRUE))
		{
			KNOWS_W2KNIGHT_GRD5TO7 = TRUE;
			B_Say(self,self,"$BEZI_INTERES");
			B_LogEntry(TOPIC_TalentSmith,"Now I can maximize the efficiency of the royal armor, by adding supplementary protection to shoulders, elbows and legs.");
		}
		else if(KNOWS_W2KNIGHT_GRD5TO7)
		{
			B_Say(hero,hero,"$BEZI_TO_WIE");
		};
		if((KNOWS_W2KNIGHT_GRD5TO7 == FALSE) || (KNOWS_W2KNIGHT_GRD3TO4 == FALSE) || (PLAYER_TALENT_ARMOR[2] == FALSE))
		{
			B_Say(self,self,"$BEZI_GOTOWY");
			Print(PRINT_NoPicklockTalent);
		};
	};
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"Royal Vengardian armor");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"Steel elbow pads:");
	Doc_PrintLine(nDocID,0,"    requires 3 steel ingots.");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"Steel greaves and leg protection:");
	Doc_PrintLine(nDocID,0,"    requires 4 steel ingots and 2 leathers.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Shoulder plates for neck and collarbone protection:");
	Doc_PrintLine(nDocID,0,"    requires 5 steel ingots and 2 leathers.");
	Doc_PrintLine(nDocID,0,"");
	Doc_Show(nDocID);
};


instance ITWR_PINUP_OC(C_Item)
{
	name = "Drawing";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItWr_PinUp_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_pinup_oc;
	scemeName = "MAP";
	description = "";
};


func void use_pinup_oc()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"Map_Pinup_V2.TGA",0);
	Doc_Show(nDocID);
};

