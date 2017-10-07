
instance ItSe_XardasNotfallBeutel_MIS(C_Item)
{
	name = "Very strange leather satchel";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI | ITEM_MISSION;
	value = 0;
	visual = "ItMi_Pocket.3ds";
	scemeName = "MAPSEALED";
	material = MAT_METAL;
	on_state[0] = Use_XardasNotfallBeutel;
	description = name;
	text[1] = "The bag seems to contain";
	text[2] = "a hard object and a document.";
};


func void Use_XardasNotfallBeutel()
{
	var string concatText;
	CreateInvItems(hero,ItWr_XardasErmahnungFuerIdioten_MIS,1);
	CreateInvItems(hero,ItMi_InnosEye_Discharged_Mis,1);
	concatText = ConcatStrings("2",PRINT_ItemsErhalten);
	Print(concatText);
};


instance ItWr_XardasErmahnungFuerIdioten_MIS(C_Item)
{
	name = "Xardas' warning letter";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItWr_Scroll_02_Old.3DS";
	material = MAT_LEATHER;
	on_state[0] = Use_XardasErmahnungFuerIdioten;
	scemeName = "MAP";
	description = name;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};


func void Use_XardasErmahnungFuerIdioten()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"Scroll_01.TGA",0);
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_SetMargins(nDocID,-1,100,100,100,100,1);
	Doc_PrintLines(nDocID,0,"My young protégé, you disappoint me greatly. How could you leave on the ship and not take the Eye of Innos?");
	Doc_PrintLines(nDocID,0,"I can only hope that there are limits to your negligence. Otherwise you will never rid the world of Evil and I will be forced to personally execute you for your stupidity.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"                      Xardas");
	Doc_Show(nDocID);
};


instance ItWr_Krypta_Garon(C_Item)
{
	name = "Old letter";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItWr_Scroll_02_Old.3DS";
	material = MAT_LEATHER;
	on_state[0] = Use_Krypta_Garon;
	scemeName = "MAP";
	description = name;
	text[3] = "In shaky handwriting";
	inv_rotx = INVCAM_X_KEY_STANDARD;
};


func void Use_Krypta_Garon()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"Scroll_01.TGA",0);
	Doc_SetFont(nDocID,-1,FONT_Book);
	Doc_SetMargins(nDocID,-1,100,75,100,100,1);
	Doc_PrintLines(nDocID,0,"Everything went wrong.");
	Doc_PrintLines(nDocID,0,"Inubis has arisen from the dead. In vain I have tried to keep Inubis on the path of Good. Banished by the ancient order of the paladins, he now seeks revenge for his curse. Many of his followers are with him.");
	Doc_PrintLines(nDocID,0,"I cannot understand as such a warlord as Inubis could become such so evil.");
	Doc_PrintLines(nDocID,0,"I found his grave in this crypt. But I don't know whether I will be able to report my findings. Therefore, I write these lines and I hope that someone will find them.");
	Doc_PrintLines(nDocID,0,"Beware. The mighty enemy is trying to reach the righteous souls. Inubis won't be the last.");
	Doc_PrintLine(nDocID,0,"May Innos save your souls.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"                             Ivan");
	Doc_Show(nDocID);
};


instance ItKe_OrkKnastDI_MIS(C_Item)
{
	name = "Orcish Colonel's Key";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = Value_Key_01;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItKe_EVT_UNDEAD_01(C_Item)
{
	name = "Archol's Key";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = Value_Key_03;
	visual = "ItKe_Key_03.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = name;
};

instance ItKe_EVT_UNDEAD_02(C_Item)
{
	name = "Key of the key master";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = Value_Key_03;
	visual = "ItKe_Key_02.3ds";
	material = MAT_METAL;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItKe_LastDoorToUndeadDrgDI_MIS(C_Item)
{
	name = "Black magician's room key";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = Value_Key_03;
	visual = "ItKe_Key_03.3ds";
	material = MAT_METAL;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItWr_LastDoorToUndeadDrgDI_MIS(C_Item)
{
	name = "Black magician's scroll";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItWr_Scroll_01_v5.3DS";
	material = MAT_LEATHER;
	on_state[0] = Use_ItWr_LastDoorToUndeadDrgDI_MIS;
	scemeName = "MAP";
	description = name;
};


func void Use_ItWr_LastDoorToUndeadDrgDI_MIS()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"Scroll_01.TGA",0);
	Doc_SetFont(nDocID,-1,FONT_BookHeadline);
	Doc_SetMargins(nDocID,-1,100,100,100,100,1);
	Doc_PrintLine(nDocID,0,"    KHADOSH");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"   EMEM KADAR");
	Doc_SetFont(nDocID,-1,FONT_Book);
	Doc_SetMargins(nDocID,-1,100,100,100,100,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"The Eye of Power illuminates your path.");
	Doc_Show(nDocID);
	if(READ_LASTDOORTOUNDEADDRGDI_MIS == FALSE)
	{
		B_LogEntry(TOPIC_HallenVonIrdorath,"The black magician's scroll contained the words KHADOSH EMEM KADAR. It sounds like some kind of magic formula, but what is it used for - and what is the Eye of Power?");
		READ_LASTDOORTOUNDEADDRGDI_MIS = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_TO_WIE");
	};
};


instance ItKe_ChestMasterDementor_MIS(C_Item)
{
	name = "Black magician's chest key";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = Value_Key_03;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItWr_Rezept_MegaDrink_MIS(C_Item)
{
	name = "Recipe";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItWr_Scroll_01_v4.3DS";
	material = MAT_LEATHER;
	on_state[0] = Use_RezeptFuerMegaTrank;
	scemeName = "MAP";
	description = name;
};


func void Use_RezeptFuerMegaTrank()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"I have revived an ancient art. I fear Feodaron would not be impressed with my achievement.");
	Doc_PrintLines(nDocID,0,"It means, quite simply, that I would have to mix his entire brood in my laboratory into a potion. I'd have tried it out If only he didn't sit on his eggs like some chicken all the time.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"Embarla Firgasto:");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"10 dragon eggs, one powderized black pearl and a pinch of sulfur.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"The emulsion is brought to the boil and must be stirred constantly as it passes through the distiller.");
	Doc_PrintLines(nDocID,0,"The elixir must be used with care. It has strong side effects and can upset the entire mana system.");
	Doc_Show(nDocID);
	if(PLAYER_TALENT_ALCHEMY[POTION_MegaDrink] == FALSE)
	{
		PLAYER_TALENT_ALCHEMY[POTION_MegaDrink] = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_TO_WIE");
	};
};


instance ItWr_Diary_BlackNovice_MIS(C_Item)
{
	name = "Diary";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_04.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = name;
	text[0] = "Diary of a black mage novice";
	text[5] = NAME_1KG;
	count[5] = value;
	on_state[0] = Use_Diary_BlackNovice;
};


var int use_diary_blacknovice_once;

func void Use_Diary_BlackNovice()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"BOOK_RED_L.tga",0);
	Doc_SetPage(nDocID,1,"BOOK_RED_R.tga",0);
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_SetFont(nDocID,0,FONT_BookHeadline);
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"I've been waiting to be called up for 36 days now. I'm beginning to doubt they'll take me on. But I've done all they asked me to. I've fetched and carried for them like some old housemaid.");
	Doc_PrintLines(nDocID,0,"The key master instructed me to seal the bars. I still haven't gotten around to it. If things go on this way, anyone might just stroll in through the gate.");
	Doc_PrintLines(nDocID,0,"It's a shame I can't remember the combinations.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_SetFont(nDocID,1,FONT_Book);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"I'd have sneaked into the great Hall ages ago. I can hardly wait to see the Master. I wonder if they'll let me see him once I'm one of them.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"I tried my luck yesterday. But I failed the two lever chambers before I could even press the three switches in the west wing in the right order. That dog locked the chambers! Tomorrow I'm going to try and get the key off him...");
	Doc_Show(nDocID);
	if(use_diary_blacknovice_once == FALSE)
	{
		B_LogEntry(TOPIC_HallenVonIrdorath,"The diary of the novice black magician talks about lever chambers, key masters, switch combinations and other things. I should keep that in the back of my mind, it could be useful later.");
		use_diary_blacknovice_once = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_TO_WIE");
	};
};


instance ItWr_ZugBruecke_MIS(C_Item)
{
	name = "Archol letter";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItWr_Scroll_01_v2.3DS";
	material = MAT_LEATHER;
	on_state[0] = Use_ZugBruecke;
	scemeName = "MAP";
	description = name;
};


func void Use_ZugBruecke()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,0,FONT_BookHeadline);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"   Last warning!");
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"I don't care if you can cross the bridge from the other side or not. If I had any say, you'd all rot in hell.");
	Doc_PrintLines(nDocID,0,"I'm gonna leave the bridge drawn in as long as I'm in my domain. And if I catch one more person trying to hit the switches with a bow and arrow to get over, I will personally hang the idiot from the nearest tree!");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"                      Archol");
	Doc_Show(nDocID);
};


instance ItMi_PowerEye(C_Item)
{
	name = "Eye of Power";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI | ITEM_MISSION;
	visual = "ItMi_PowerEye_MIS.3ds";
	material = MAT_METAL;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_MISC_STANDARD;
};

