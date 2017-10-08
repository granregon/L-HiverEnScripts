
instance StandardBrief(C_Item)
{
	name = "Letter";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = UseStandardBrief;
	scemeName = "MAP";
	description = "StandardLetter";
};


func void UseStandardBrief()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,0,FONT_BookHeadline);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLine(nDocID,0,"StandardLetter");
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Bla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla bla");
	Doc_Show(nDocID);
};


instance StandardBuch(C_Item)
{
	name = "StandardBook";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_05.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "StandardBook";
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = UseStandardBuch;
};


func void UseStandardBuch()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Brown_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Brown_R.tga",0);
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_SetFont(nDocID,0,FONT_BookHeadline);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"StandardBook Page 1");
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"Bla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla bla");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,0,"Bla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla bBla blaBla blaBla blaBlaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla bla");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_SetFont(nDocID,1,FONT_BookHeadline);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"StandardBook Page 2");
	Doc_SetFont(nDocID,1,FONT_Book);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"Bla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla bla");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"Bla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla bla");
	Doc_Show(nDocID);
};


instance ItWr_Map_NewWorld(C_Item)
{
	name = "Land map of Khorinis";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION | ITEM_MULTI;
	value = 250;
	visual = "ItWr_Map_01.3DS";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = Use_Map_NewWorld;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};


func void Use_Map_NewWorld()
{
	var int Document;
	if(Npc_IsPlayer(self))
	{
		B_SetPlayerMap(ItWr_Map_NewWorld);
	};
	Document = Doc_CreateMap();
	Doc_SetPages(Document,1);
	Doc_SetPage(Document,0,"Map_NewWorld.tga",TRUE);
	Doc_SetLevel(Document,"NewWorld\NewWorld.zen");
	Doc_SetLevelCoords(Document,-28000,50000,120000,-75000);
	Doc_Show(Document);
};


instance ItWr_Map_NewWorld_City(C_Item)
{
	name = "City map of Khorinis";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION | ITEM_MULTI;
	value = 50;
	visual = "ItWr_Map_01.3DS";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = Use_Map_NewWorld_City;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};


func void Use_Map_NewWorld_City()
{
	var int Document;
	if(Npc_IsPlayer(self))
	{
		B_SetPlayerMap(ItWr_Map_NewWorld_City);
	};
	Document = Doc_CreateMap();
	Doc_SetPages(Document,1);
	Doc_SetPage(Document,0,"Map_NewWorld_City.tga",TRUE);
	Doc_SetLevel(Document,"NewWorld\NewWorld.zen");
	Doc_SetLevelCoords(Document,-6900,11800,21600,-9400);
	Doc_Show(Document);
};


instance ItWr_Map_OldWorld(C_Item)
{
	name = "Map of the Valley of Mines";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION | ITEM_MULTI;
	value = 350;
	visual = "ItWr_Map_01.3DS";
	material = MAT_LEATHER;
	scemeName = "MAP";
	on_state[0] = Use_Map_OldWorld;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};


func void Use_Map_OldWorld()
{
	var int Document;
	if(Npc_IsPlayer(self))
	{
		B_SetPlayerMap(ItWr_Map_OldWorld);
	};
	Document = Doc_CreateMap();
	Doc_SetPages(Document,1);
	Doc_SetPage(Document,0,"Map_OldWorld.tga",TRUE);
	Doc_SetLevel(Document,"OldWorld\OldWorld.zen");
	Doc_SetLevelCoords(Document,-78500,47500,54000,-53000);
	Doc_Show(Document);
};


var int Lerne_Einhand;
var int Lerne_Zweihand;
var int lerne_jagdbow;
var int kampfkunst_bonuslp;

instance ItWr_EinhandBuch(C_Item)
{
	name = "The art of fighting";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 5000;
	visual = "ItWr_Book_02_04.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = name;
	text[2] = "A book on the art of one-handed fighting";
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = UseEinhandBuch;
};


func void UseEinhandBuch()
{
	var int nDocID;
	if(Lerne_Einhand == FALSE)
	{
		B_Say(hero,hero,"$BEZI_INTERES");
		B_RaiseFightTalent(self,NPC_TALENT_1H,5);
		Print("Handling of one-handed weapons +5");
		Lerne_Einhand = TRUE;
		Snd_Play("Levelup");
	}
	else
	{
		B_Say(hero,hero,"$BEZI_TO_WIE");
	};
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Red_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Red_R.tga",0);
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_SetFont(nDocID,0,FONT_BookHeadline);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Southern defense art");
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"A southerner uses less physical strength than a northerner, instead relying on agility. In the hot climate of his home he prefers light armor which permits him to move more freely. The southerner has therefore developed a style of fighting that is fundamentally different from what we are used to.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_SetFont(nDocID,1,FONT_BookHeadline);
	Doc_PrintLine(nDocID,1,"");
	Doc_SetFont(nDocID,1,FONT_Book);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"Probably the most famous maneuver a southerner uses is the one-armed block and backstep. The backstep enables the fighter to weaken the blow from his assailant's attack, at the same time taking up a superb stance from which to counterattack.");
	Doc_PrintLine(nDocID,1,"");
	Doc_Show(nDocID);
};


instance ItWr_ZweihandBuch(C_Item)
{
	name = "Fighting tactics";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 5000;
	visual = "ItWr_Book_02_03.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = name;
	text[2] = "A book on the art of two-handed fighting";
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = UseZweihandBuch;
};


func void UseZweihandBuch()
{
	var int nDocID;
	if(Lerne_Zweihand == FALSE)
	{
		B_Say(hero,hero,"$BEZI_INTERES");
		B_RaiseFightTalent(self,NPC_TALENT_2H,5);
		Print("Handling of two-handed weapons +5");
		Lerne_Zweihand = TRUE;
		Snd_Play("Levelup");
	}
	else
	{
		B_Say(hero,hero,"$BEZI_TO_WIE");
	};
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Red_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Red_R.tga",0);
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_SetFont(nDocID,0,FONT_BookHeadline);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"Double blocks");
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Blocking the enemy's blade with a");
	Doc_PrintLines(nDocID,0,"two-handed weapon is a method used by strong fighters to stop the impetus of attacks and force their assailants to abruptly end their assault combinations.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_SetFont(nDocID,1,FONT_BookHeadline);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_SetFont(nDocID,1,FONT_Book);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"The usually resulting halt of the opponent's movement is an opportunity to take the initiative and defeat the enemy with skilled strokes.");
	Doc_Show(nDocID);
};


instance ITWR_BLOODFLY_01(C_Item)
{
	name = "The bloodflies";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 150;
	visual = "ItWr_Book_02_01_2.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = useitwr_bloodfly_01;
	inv_zbias = INVCAM_ENTF_BOOK_STANDARD;
	inv_rotz = INVCAM_Z_BOOK_STANDARD;
	inv_rotx = INVCAM_X_BOOK_STANDARD;
};


func void useitwr_bloodfly_01()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Brown_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Brown_R.tga",0);
	Doc_SetFont(nDocID,-1,FONT_Book);
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_PrintLine(nDocID,0,"Bloodflies");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetFont(nDocID,-1,FONT_Book);
	Doc_PrintLine(nDocID,0,"About the flies...");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"But in that place, where the soil is damp and the air is humid, the flies gather, attracted by the sweat of all kinds of beings. They use their stings to kill their victims and feast on their blood.");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"To take such a sting is the art of many hunters in the swamp. Make a deep cut into the creature's abdomen, then cut in a zigzag line around the sting and remove it carefully, together with the tissue surrounding it. Let it bleed and scrape off the inedible meat.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_Show(nDocID);
	if(PLAYER_TALENT_TAKEANIMALTROPHY[8] == FALSE)
	{
		B_Say(hero,hero,"$BEZI_INTERES");
		PLAYER_TALENT_TAKEANIMALTROPHY[8] = TRUE;
		Log_CreateTopic(TOPIC_TalentAnimalTrophy,LOG_NOTE);
		B_LogEntry(TOPIC_TalentAnimalTrophy,"I can now:");
		B_LogEntry(TOPIC_TalentAnimalTrophy,"... remove the sting from the dead bloody flies and hornets.");
		Print("Learned how to remove stings");
	}
	else
	{
		B_Say(hero,hero,"$BEZI_TO_WIE");
	};
};


instance ITWR_ASTRONOMIE(C_Item)
{
	name = "Astronomy";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 140;
	visual = "ItWr_Book_02_05_1.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = useastronomie;
	inv_zbias = INVCAM_ENTF_BOOK_STANDARD;
	inv_rotz = INVCAM_Z_BOOK_STANDARD;
	inv_rotx = INVCAM_X_BOOK_STANDARD;
};


func void useastronomie()
{
	var int nDocID;
	var int bezi_random;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Brown_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Brown_R.tga",0);
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_SetFont(nDocID,-1,FONT_Book);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"In the center lies the Morgrad, containing the four elements earth, water, fire and air. It is the place of transience, the heart of the inexpressible darkness of Beliar. Above all this towers the sphere of the heavens.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"In the hierarchy of the universe, man is a receiver. His soul allows him to take part in the highest plane of existence, the divine spirit. Yet man's body is made from the substance of the Morgrad. He is a reflection of the world itself.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"The synodic orbit of the planets, that is the course they take between two identical positions in relation to the Morgrad of our world, varies by just a few degrees every century. We therefore conclude that we are constantly moving with the rest of the universe.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"When we created the first calendar, we observed the course of the moon to determine the length of the solar year.");
	Doc_Show(nDocID);
	bezi_random = Hlp_Random(29);
	if(bezi_random <= 9)
	{
		B_Say(hero,hero,"$BEZI_NIC_CIEKAWEGO");
	}
	else if(bezi_random <= 19)
	{
		B_Say(hero,hero,"$BEZI_NIECIEKAWE");
	}
	else if(bezi_random <= 29)
	{
		B_Say(hero,hero,"$BEZI_TO_WIE");
	};
};


instance ITWR_KAMPFKUNST(C_Item)
{
	name = "Fighting skill";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 640;
	visual = "ItWr_Book_02_03_2.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = usekampfkunst;
	inv_zbias = INVCAM_ENTF_BOOK_STANDARD;
	inv_rotz = INVCAM_Z_BOOK_STANDARD;
	inv_rotx = INVCAM_X_BOOK_STANDARD;
};


func void usekampfkunst()
{
	var int nDocID;
	if(KAMPFKUNST_BONUSLP == FALSE)
	{
		hero.lp = hero.lp + 2;
		KAMPFKUNST_BONUSLP = TRUE;
		Snd_Play("Levelup");
		Print("Learning points +2");
	}
	else
	{
		B_Say(hero,hero,"$BEZI_TO_WIE");
	};
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Brown_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Brown_R.tga",0);
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_SetFont(nDocID,-1,FONT_Book);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"For 2000 years, the teachings of this expert have determined the development of the art of fighting.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Dexterity, composure, speed, observation and reactions are the skills which must be trained. Your movements must be well-coordinated and your posture correct if you want your powers to blossom.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"The essence of the master's spiritual and physical teachings has survived many years.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"His unique success has influenced generations. For millennia, the face of the world has shifted and changed, but the harmony of inner powers with movements of the body has survived.");
	Doc_Show(nDocID);
};


instance ITWR_SMITHMASTERBOOK_LVL1(C_Item)
{
	name = "Art of weaponry - Volume 1";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 1000;
	visual = "ITWR_SmithMasterBook_lvl1.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = name;
	text[2] = "This book contains information on improving your weapon crafting skill.";
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = usesmithmasterbook_lvl1;
	inv_zbias = INVCAM_ENTF_BOOK_STANDARD;
	inv_rotz = INVCAM_Z_BOOK_STANDARD;
	inv_rotx = INVCAM_X_BOOK_STANDARD;
};


func void usesmithmasterbook_lvl1()
{
	var int nDocID;
	if(Npc_IsPlayer(self))
	{
		if(((PLAYER_TALENT_SMITH[12] || PLAYER_TALENT_SMITH[17]) == TRUE) && (KNOWS_SMITHMASTERBOOK_LVL1 == FALSE))
		{
			KNOWS_SMITHMASTERBOOK_LVL1 = TRUE;
			B_Say(self,self,"$BEZI_KOWAL");
			B_LogEntry(TOPIC_TalentSmith,"Now I can improve 'Elegant bastard sword' and 'Flamberge'.");
		}
		else if(KNOWS_SMITHMASTERBOOK_LVL1 == TRUE)
		{
			B_Say(hero,hero,"$BEZI_TO_WIE");
		};
		if(KNOWS_SMITHMASTERBOOK_LVL1 == FALSE)
		{
			B_Say(self,self,"$BEZI_GOTOWY");
			Print(PRINT_NoPicklockTalent);
		};
	};
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Brown_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Brown_R.tga",0);
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_SetFont(nDocID,-1,"FONT_Book.tga");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"This old tome contains much information about forging weapons.");
	Doc_PrintLines(nDocID,0,"It also has information on improving a master's work.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"Bastard sword:");
	Doc_PrintLines(nDocID,1,"The blade can be broadened so the sword inflicts more damage at a cost of increased weight.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"Flamberge:");
	Doc_PrintLines(nDocID,1,"An extra blade can be wielded with a certain grip for protection, allowing you to cause more damage but losing mobility due to weight increase.");
	Doc_PrintLine(nDocID,1,"");
	Doc_Show(nDocID);
};


instance ITWR_SMITHMASTERBOOK_LVL2(C_Item)
{
	name = "Art of weaponry - Volume 2";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 1500;
	visual = "ITWR_SmithMasterBook_lvl1.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = name;
	text[2] = "This book contains information on improving your weapon crafting skill.";
	text[3] = "Requires knowledge of the previous volume.";
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = usesmithmasterbook_lvl2;
	inv_zbias = INVCAM_ENTF_BOOK_STANDARD;
	inv_rotz = INVCAM_Z_BOOK_STANDARD;
	inv_rotx = INVCAM_X_BOOK_STANDARD;
};


func void usesmithmasterbook_lvl2()
{
	var int nDocID;
	if(Npc_IsPlayer(self))
	{
		if(((PLAYER_TALENT_SMITH[12] || PLAYER_TALENT_SMITH[17]) == TRUE) && (KNOWS_SMITHMASTERBOOK_LVL1 == TRUE) && (KNOWS_SMITHMASTERBOOK_LVL2 == FALSE))
		{
			KNOWS_SMITHMASTERBOOK_LVL2 = TRUE;
			B_Say(self,self,"$BEZI_KOWAL");
			B_LogEntry(TOPIC_TalentSmith,"Now I can further improve 'Elegant bastard sword' and 'Flamberge'.");
		}
		else if(KNOWS_SMITHMASTERBOOK_LVL2 == TRUE)
		{
			B_Say(hero,hero,"$BEZI_TO_WIE");
		};
		if(KNOWS_SMITHMASTERBOOK_LVL2 == FALSE)
		{
			B_Say(self,self,"$BEZI_GOTOWY");
			Print(PRINT_NoPicklockTalent);
		};
	};
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Brown_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Brown_R.tga",0);
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_SetFont(nDocID,-1,"FONT_Book.tga");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"This old tome contains much information about forging weapons.");
	Doc_PrintLines(nDocID,0,"It also has information on improving a master's work.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"Bastard sword:");
	Doc_PrintLine(nDocID,1,"The blade can be serrated to inflict more damage at a cost of increased weight.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"Flamberge:");
	Doc_PrintLine(nDocID,1,"The blade can be reforged to add serrated edges making it easier to penetrate armor but, in return, adding more weight.");
	Doc_PrintLines(nDocID,1,"");
	Doc_Show(nDocID);
};


instance ITWR_SMITHMASTERBOOK_LVL3(C_Item)
{
	name = "Art of weaponry - Volume 3";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 2000;
	visual = "ITWR_SmithMasterBook_lvl1.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = name;
	text[2] = "This book contains information on improving your weapon crafting skill.";
	text[3] = "Requires knowledge of the previous volume.";
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = usesmithmasterbook_lvl3;
	inv_zbias = INVCAM_ENTF_BOOK_STANDARD;
	inv_rotz = INVCAM_Z_BOOK_STANDARD;
	inv_rotx = INVCAM_X_BOOK_STANDARD;
};


func void usesmithmasterbook_lvl3()
{
	var int nDocID;
	if(Npc_IsPlayer(self))
	{
		if(((PLAYER_TALENT_SMITH[12] || PLAYER_TALENT_SMITH[17]) == TRUE) && (KNOWS_SMITHMASTERBOOK_LVL2 == TRUE) && (KNOWS_SMITHMASTERBOOK_LVL3 == FALSE))
		{
			KNOWS_SMITHMASTERBOOK_LVL3 = TRUE;
			B_Say(self,self,"$BEZI_KOWAL");
			B_LogEntry(TOPIC_TalentSmith,"Now I can make the final improvement for 'Fine bastard sword' and 'Flamberge'.");
		}
		else if(KNOWS_SMITHMASTERBOOK_LVL3 == TRUE)
		{
			B_Say(hero,hero,"$BEZI_TO_WIE");
		};
		if(KNOWS_SMITHMASTERBOOK_LVL3 == FALSE)
		{
			B_Say(self,self,"$BEZI_GOTOWY");
			Print(PRINT_NoPicklockTalent);
		};
	};
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Brown_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Brown_R.tga",0);
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_SetFont(nDocID,-1,"FONT_Book.tga");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"This old tome contains much information about forging weapons.");
	Doc_PrintLines(nDocID,0,"It also has information on improving a master's work.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"Bastard sword:");
	Doc_PrintLines(nDocID,1,"The blade can be improved even further by serrating it. This will make the weapon very deadly, but it will become heavier and less handy to wield.");
	Doc_PrintLines(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"Flamberge:");
	Doc_PrintLines(nDocID,1,"The handle can be replaced so that in some situations it becomes even deadlier than the blade itself. This will make the weapon inflict more damage, but will also increase its overall weight.");
	Doc_PrintLines(nDocID,1,"");
	Doc_Show(nDocID);
};


instance ITWR_JAGD_UND_BEUTE(C_Item)
{
	name = "Hunt and prey I";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 3000;
	visual = "ItWr_Book_02_02_2.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = name;
	text[2] = "This book is devoted to the art";
	text[3] = "of hunting with a bow";
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = usejagd_und_beute;
	inv_zbias = INVCAM_ENTF_BOOK_STANDARD;
	inv_rotz = INVCAM_Z_BOOK_STANDARD;
	inv_rotx = INVCAM_X_BOOK_STANDARD;
};


func void usejagd_und_beute()
{
	var int nDocID;
	if(LERNE_JAGDBOW == FALSE)
	{
		B_Say(hero,hero,"$BEZI_INTERES");
		B_RaiseFightTalent(self,NPC_TALENT_BOW,3);
		Print("Bow +3");
		LERNE_JAGDBOW = TRUE;
		Snd_Play("Levelup");
	}
	else
	{
		B_Say(hero,hero,"$BEZI_TO_WIE");
	};
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Brown_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Brown_R.tga",0);
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_SetFont(nDocID,-1,FONT_Book);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"His writings have outlasted the ages and his advice is considered a book on the art of hunting. Following the heavy battles in the north, every countryman now knows how to use a bow and arrows. Yet there are some rules to be followed when hunting which exceed the simple knowledge of how to use the weapon! Game is both timid and unpredictable.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"The art of hunting with a bow is not merely ancient tradition, but the most common form of hunting. The techniques employed in this traditional method of hunting have hardly altered in the course of the millennia, and it is unlikely that they will change in the future. What circumstances really determine a hunt with a bow and arrow? To recognize these laws is the true art of bow hunting.");
	Doc_Show(nDocID);
};


instance ITWR_LEHREN_DER_GOETTER1(C_Item)
{
	name = "Word of the Gods - Volume 1";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 75;
	visual = "ItWr_Book_02_01_1.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = uselehren_der_goetter1;
	inv_zbias = INVCAM_ENTF_BOOK_STANDARD;
	inv_rotz = INVCAM_Z_BOOK_STANDARD;
	inv_rotx = INVCAM_X_BOOK_STANDARD;
};


func void uselehren_der_goetter1()
{
	var int nDocID;
	var int bezi_random;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Red_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Red_R.tga",0);
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_SetFont(nDocID,-1,FONT_Book);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Hear the words of the gods, for it is their will that you shall hear them. Heed the teachings of the gods, for it is their will that you shall heed them. Honor the priests of the gods, for they are the chosen ones.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"The word of Innos: And if it shall happen that you do not understand, do not despair at the words of the priests, for they are just and wise. For I am the rising sun, the light, and the life. And all that is contrary to the sun is contrary to me, and shall be banished to the shadows forever more.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"The word of Adanos: Work and live, for the day was created so that man may work. Seek learning and knowledge so that you may pass it on, for it is for that purpose that you were created. But whosoever shall be listless and idle, he shall be banished to the shadows forever more.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"The word of Beliar: But whosoever shall do wrong and go against the will of the gods, him I will punish. I will plague his body with pain, suffering and death, but his spirit shall join me in the shadows forever more.");
	Doc_Show(nDocID);
	bezi_random = Hlp_Random(29);
	if(bezi_random <= 9)
	{
		B_Say(hero,hero,"$BEZI_NIC_CIEKAWEGO");
	}
	else if(bezi_random <= 19)
	{
		B_Say(hero,hero,"$BEZI_NIECIEKAWE");
	}
	else if(bezi_random <= 29)
	{
		B_Say(hero,hero,"$BEZI_TO_WIE");
	};
};


var int bezi_itwr_lehren_der_goetter2;
var int bezi_itwr_lehren_der_goetter2_random;

instance ITWR_LEHREN_DER_GOETTER2(C_Item)
{
	name = "Word of the Gods - Volume 2";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 75;
	visual = "ItWr_Book_02_01_1.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = uselehren_der_goetter2;
	inv_zbias = INVCAM_ENTF_BOOK_STANDARD;
	inv_rotz = INVCAM_Z_BOOK_STANDARD;
	inv_rotx = INVCAM_X_BOOK_STANDARD;
};


func void uselehren_der_goetter2()
{
	var int nDocID;
	var int bezi_random;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Red_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Red_R.tga",0);
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_SetFont(nDocID,-1,FONT_Book);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Of the beginning of time: there was no night and no day, and no living thing moved across the land. Then Innos appeared and his light shone upon the world. And Innos gave unto the world the gift of life. But no creature could live in the light of Innos, so he created the sun. But still the light was too bright. So Innos divided himself and thus created Beliar. Beliar created the night. Now man could be. So Innos divided himself again and created Adanos. Adanos brought man versatility, knowledge, curiosity and courage.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"Innos was satisfied with what he had done. And he decided to leave mankind in the care of Adanos, and he rested. But Beliar was consumed by envy, for the people did not pray to him, but slept at night. He grew angry and created a man. A man to pray to him alone. But the man he created was like all other men. Beliar became so furious that he killed the man and spoke: If they will not worship me, then at least they shall fear me. And he created death and ended the lives of men.");
	Doc_Show(nDocID);
	bezi_random = Hlp_Random(29);
	if(bezi_random <= 9)
	{
		B_Say(hero,hero,"$BEZI_NIC_CIEKAWEGO");
	}
	else if(bezi_random <= 19)
	{
		B_Say(hero,hero,"$BEZI_NIECIEKAWE");
	}
	else if(bezi_random <= 29)
	{
		B_Say(hero,hero,"$BEZI_TO_WIE");
	};
};


instance ITWR_LEHREN_DER_GOETTER3(C_Item)
{
	name = "Word of the Gods - Volume 3";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 75;
	visual = "ItWr_Book_02_01_1.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = uselehren_der_goetter3;
	inv_zbias = INVCAM_ENTF_BOOK_STANDARD;
	inv_rotz = INVCAM_Z_BOOK_STANDARD;
	inv_rotx = INVCAM_X_BOOK_STANDARD;
};


func void uselehren_der_goetter3()
{
	var int nDocID;
	var int bezi_random;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Red_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Red_R.tga",0);
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_SetFont(nDocID,-1,FONT_Book);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Innos gave mankind the power to hear him and speak to him. He gave mankind the power to perform great miracles, and he called them magic. With this power, the people were able to design the world after their will. Innos gave them no limits. And thus man received a portion of the divine power of creation. But not all the people were equal, and this dissatisfied them. So he took the power from the discontented. Innos raised the few who had shown him gratitude above the others.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"These few were soon revered and feared, and the people  called them priests. But among them were many who soon became dissatisfied. And so it happened that they prayed to Adanos and forgot their origins. The league of priests was divided. Wars ensued and the faith in divine omnipotence soon became a myth. And so the priests were separated. Those who followed Adanos were called Magicians of the Circle of Water, while the priests of Innos became known as the Magicians of the Circle of Fire.");
	Doc_Show(nDocID);
	bezi_random = Hlp_Random(29);
	if(bezi_random <= 9)
	{
		B_Say(hero,hero,"$BEZI_NIC_CIEKAWEGO");
	}
	else if(bezi_random <= 19)
	{
		B_Say(hero,hero,"$BEZI_NIECIEKAWE");
	}
	else if(bezi_random <= 29)
	{
		B_Say(hero,hero,"$BEZI_TO_WIE");
	};
};


instance ITWR_MYRTANAS_LYRIK(C_Item)
{
	name = "Poetry of Myrtana";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 80;
	visual = "ItWr_Book_02_02_1.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = usemyrtanas_lyrik;
	inv_zbias = INVCAM_ENTF_BOOK_STANDARD;
	inv_rotz = INVCAM_Z_BOOK_STANDARD;
	inv_rotx = INVCAM_X_BOOK_STANDARD;
};


func void usemyrtanas_lyrik()
{
	var int nDocID;
	var int bezi_random;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Red_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Red_R.tga",0);
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_SetFont(nDocID,-1,FONT_Book);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"    The Song of");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"          Repentance");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"In the beginning was the power, pure and white,");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"now only echoes of the vow sound through the night.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"They tell of days of unity, long since past,");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"'tis having and taking for which we now thirst.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"All unity was torn apart and burst.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"Cursed the spirit which did not last.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"Of desire doth now tell our song.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"For unity is forever gone.");
	Doc_PrintLines(nDocID,1,"");
	Doc_Show(nDocID);
	bezi_random = Hlp_Random(29);
	if(bezi_random <= 9)
	{
		B_Say(hero,hero,"$BEZI_NIC_CIEKAWEGO");
	}
	else if(bezi_random <= 19)
	{
		B_Say(hero,hero,"$BEZI_NIECIEKAWE");
	}
	else if(bezi_random <= 29)
	{
		B_Say(hero,hero,"$BEZI_TO_WIE");
	};
};


instance ITWR_DAS_MAGISCHE_ERZ(C_Item)
{
	name = "Magic ore";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_02_3.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = usedas_magische_erz;
	inv_zbias = INVCAM_ENTF_BOOK_STANDARD;
	inv_rotz = INVCAM_Z_BOOK_STANDARD;
	inv_rotx = INVCAM_X_BOOK_STANDARD;
};


func void usedas_magische_erz()
{
	var int nDocID;
	var int bezi_random;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Brown_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Brown_R.tga",0);
	Doc_SetFont(nDocID,-1,FONT_Book);
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_PrintLine(nDocID,0,"Magic ore");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetFont(nDocID,-1,FONT_Book);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"The best ore for use when forging weapons is doubtless found in the ore mines of Khorinis. It is of fundamental purity and suffused with magic. It is of incomparable strength, yet so soft that it cannot break. A weapon forged from this steel, which is mined far below the ground at an inexpressible cost of effort, is a match for any blade, albeit made of the strongest steel.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"It will break any shield and pierce any armor. Kings and heroes of old wielded weapons forged from the finest steel of Khorinis, and high prices are still paid for such weapons throughout Myrtana. But the ore itself demands a high price. Much effort is required to break it from the rock. It is almost as though the ore were fighting to remain within the womb of the earth.");
	Doc_Show(nDocID);
	bezi_random = Hlp_Random(29);
	if(bezi_random <= 9)
	{
		B_Say(hero,hero,"$BEZI_NIC_CIEKAWEGO");
	}
	else if(bezi_random <= 19)
	{
		B_Say(hero,hero,"$BEZI_NIECIEKAWE");
	}
	else if(bezi_random <= 29)
	{
		B_Say(hero,hero,"$BEZI_TO_WIE");
	};
};


instance ITWR_SCHLACHT_UM_VARANT1(C_Item)
{
	name = "The battle of Varant - Volume 1";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 90;
	visual = "ItWr_Book_02_03_1.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = useschlacht_um_varant1;
	inv_zbias = INVCAM_ENTF_BOOK_STANDARD;
	inv_rotz = INVCAM_Z_BOOK_STANDARD;
	inv_rotx = INVCAM_X_BOOK_STANDARD;
};


func void useschlacht_um_varant1()
{
	var int nDocID;
	var int bezi_random;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Red_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Red_R.tga",0);
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_SetFont(nDocID,-1,FONT_Book);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"... but Rhobar, the strategist, chose to attack. He assembled his troops and had them storm the enemy's weak right flank. He did not waste his time on long skirmishes, but thrust into the enemy army like a sword and cut down the defenses as though they were made of paper. On and on he drove his troops, advancing on the boarders of Varant. He knew that to win this fight, he would have to disperse the enemy army and prevent Gellon and Lukkor");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"uniting and dealing him a crushing blow. He would have to sever their supply lines to secure the victory...");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"... Gellon was dead, his army beaten, his leaderless troops on the run. But Rhobar was not willing to give the enemy a chance to regroup, and commanded his army to destroy the remainder of the enemy forces. Meanwhile, Lukkor took advantage of the moment and struck a decisive blow at King Rhobar's exhausted troops...");
	Doc_Show(nDocID);
	bezi_random = Hlp_Random(29);
	if(bezi_random <= 9)
	{
		B_Say(hero,hero,"$BEZI_NIC_CIEKAWEGO");
	}
	else if(bezi_random <= 19)
	{
		B_Say(hero,hero,"$BEZI_NIECIEKAWE");
	}
	else if(bezi_random <= 29)
	{
		B_Say(hero,hero,"$BEZI_TO_WIE");
	};
};


instance ITWR_SCHLACHT_UM_VARANT2(C_Item)
{
	name = "The battle of Varant - Volume 2";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 90;
	visual = "ItWr_Book_02_03_1.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = useschlacht_um_varant2;
	inv_zbias = INVCAM_ENTF_BOOK_STANDARD;
	inv_rotz = INVCAM_Z_BOOK_STANDARD;
	inv_rotx = INVCAM_X_BOOK_STANDARD;
};


func void useschlacht_um_varant2()
{
	var int nDocID;
	var int bezi_random;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Red_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Red_R.tga",0);
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_SetFont(nDocID,-1,FONT_Book);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"The war had been decided. Varant had lost its seaports, vital to army supplies. King Rhobar had not lingered on the battle fields for a long time, but left his generals to deal with the few remaining enemy troops. Varant had only one large force left, commanded by Lukkor, the most capable warlord of the Varant army, who had more than once turned defeat into victory.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"But now his army was trapped. The situation was hopeless, even though his army greatly outnumbered the enemy. Lee, a war hero from Myrtana, had lured him into this trap. The heavy cavalry had been unable to fight on the thick, swamped ground of the narrow valley. Lee's soldiers had occupied the range of hills surrounding the swamp, and they had struck repeatedly, decimating the army. The desperate sallies his troops had launched had been cut short in pools of blood. He was beaten.");
	Doc_Show(nDocID);
	bezi_random = Hlp_Random(29);
	if(bezi_random <= 9)
	{
		B_Say(hero,hero,"$BEZI_NIC_CIEKAWEGO");
	}
	else if(bezi_random <= 19)
	{
		B_Say(hero,hero,"$BEZI_NIECIEKAWE");
	}
	else if(bezi_random <= 29)
	{
		B_Say(hero,hero,"$BEZI_TO_WIE");
	};
};


instance GOETTERGABE(C_Item)
{
	name = "A gift from the Gods";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_01.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = usegoettergabe;
};


func void usegoettergabe()
{
	var int nDocID;
	var int bezi_random;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Mage_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Mage_R.tga",0);
	Doc_SetFont(nDocID,-1,FONT_Book);
	Doc_PrintLine(nDocID,0,"Magic");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_PrintLine(nDocID,0," ");
	Doc_SetFont(nDocID,-1,FONT_Book);
	Doc_PrintLine(nDocID,0,"A gift from the Gods");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Man has been trying to fathom the nature and origins of magic for centuries. But where should the search begin? How does one describe magic? It is the most conflicting power that has ever been known. It can kill and it can heal, it can create and it can destroy.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"What does such power look like? Where can a man find this invisible, yet incredibly powerful force? Magic is what it is. It is the most marvelous and the most powerful gift the gods have ever given us. It is the divine gift presented to users and  weavers of magic. A healing power that only a few chosen ones are able to control.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"Barthos of Laran");
	Doc_Show(nDocID);
	bezi_random = Hlp_Random(29);
	if(bezi_random <= 9)
	{
		B_Say(hero,hero,"$BEZI_NIC_CIEKAWEGO");
	}
	else if(bezi_random <= 19)
	{
		B_Say(hero,hero,"$BEZI_NIECIEKAWE");
	}
	else if(bezi_random <= 29)
	{
		B_Say(hero,hero,"$BEZI_TO_WIE");
	};
};


instance GEHEIMNISSE_DER_ZAUBEREI(C_Item)
{
	name = "The secrets of magic";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_02.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = usegeheimnisse_der_zauberei;
};


func void usegeheimnisse_der_zauberei()
{
	var int nDocID;
	var int bezi_random;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Mage_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Mage_R.tga",0);
	Doc_SetFont(nDocID,-1,FONT_Book);
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"The secrets of magic");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"The magic is not inherent in the magus himself, he is far more able to work it. The only skill he possesses is the ability to influence and guide magic. A disciple of the art of magic must be able to use his spirit as a tool.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"His spirit serves as a vessel for the all-encompassing arcane power... to shape it, focus it and finally release it into the world we know. During these moments of total concentration, the magus' spirit rises above our sphere and gazes upon the Other Side, the home of power. The magus himself is but a conductor and shaper of that power.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"Barthos of Laran");
	Doc_Show(nDocID);
	bezi_random = Hlp_Random(29);
	if(bezi_random <= 9)
	{
		B_Say(hero,hero,"$BEZI_NIC_CIEKAWEGO");
	}
	else if(bezi_random <= 19)
	{
		B_Say(hero,hero,"$BEZI_NIECIEKAWE");
	}
	else if(bezi_random <= 29)
	{
		B_Say(hero,hero,"$BEZI_TO_WIE");
	};
};


instance MACHTVOLLE_KUNST(C_Item)
{
	name = "A powerful art";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_03.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = usemachtvolle_kunst;
};


func void usemachtvolle_kunst()
{
	var int nDocID;
	var int bezi_random;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Mage_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Mage_R.tga",0);
	Doc_SetFont(nDocID,-1,FONT_Book);
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"A powerful art");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetFont(nDocID,-1,FONT_Book);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"A work for those instructed in the arcane art");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"A magician's ability to control the divine power grows. At first, it appears like a small seed in a field. It must be tended or it will wither. But once the seed begins to grow, its splendor unfolds.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"It continues to grow with each passing day. The same applies to a receptive magus. His powers may be weak to begin with, but given time they will wax and thrive, unfolding a power whose limits are unforeseeable. To guide this power to the point of perfection is the sacred duty of every magus, for the seed sown by the gods is the greatest gift a mortal can receive.");
	Doc_Show(nDocID);
	bezi_random = Hlp_Random(29);
	if(bezi_random <= 9)
	{
		B_Say(hero,hero,"$BEZI_NIC_CIEKAWEGO");
	}
	else if(bezi_random <= 19)
	{
		B_Say(hero,hero,"$BEZI_NIECIEKAWE");
	}
	else if(bezi_random <= 29)
	{
		B_Say(hero,hero,"$BEZI_TO_WIE");
	};
};


instance ELEMENTARE_ARCANEI(C_Item)
{
	name = "Elementary arcanum";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_04.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = useelementare_arcanei;
};


func void useelementare_arcanei()
{
	var int nDocID;
	var int bezi_random;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Mage_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Mage_R.tga",0);
	Doc_SetFont(nDocID,-1,FONT_Book);
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"Elementary arcanum");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetFont(nDocID,-1,FONT_Book);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"The place of magic in the order of the worldly");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Much research has taken place on magic and its relation to the elements. It is just to claim that magic represents the perfect element. It has the power to transform all the elements and to shape them, which means it is superior to them.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"Each element, when viewed in its purest form, unearths a connection to magic. Natural connections of this kind can only be found in very few places, and they are highly sought-after. A magus' ability to conjure up the elements, seemingly from nothing, proves that the power of magic is the purest, greatest good in existence.");
	Doc_Show(nDocID);
	bezi_random = Hlp_Random(29);
	if(bezi_random <= 9)
	{
		B_Say(hero,hero,"$BEZI_NIC_CIEKAWEGO");
	}
	else if(bezi_random <= 19)
	{
		B_Say(hero,hero,"$BEZI_NIECIEKAWE");
	}
	else if(bezi_random <= 29)
	{
		B_Say(hero,hero,"$BEZI_TO_WIE");
	};
};


instance WAHRE_MACHT(C_Item)
{
	name = "True power";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_05.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	on_state[0] = usewahre_macht;
};


func void usewahre_macht()
{
	var int nDocID;
	var int bezi_random;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Mage_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Mage_R.tga",0);
	Doc_SetFont(nDocID,-1,FONT_Book);
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"True power");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetFont(nDocID,-1,FONT_Book);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"The sacred duty of the skillful");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"It is power that distinguishes a magus from his fellow men. Equipped with the ability to influence the divine power, he is a being independent of the laws of nature which apply to mortal man.");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"Once a magus has reached a stage which enables him to rise above the limits of his existence, he can place himself on a higher plane than that in which mortal man lives. He can break through the boundaries of time and space, and not even death, the eve of existence, can stop him.");
	Doc_Show(nDocID);
	bezi_random = Hlp_Random(29);
	if(bezi_random <= 9)
	{
		B_Say(hero,hero,"$BEZI_NIC_CIEKAWEGO");
	}
	else if(bezi_random <= 19)
	{
		B_Say(hero,hero,"$BEZI_NIECIEKAWE");
	}
	else if(bezi_random <= 29)
	{
		B_Say(hero,hero,"$BEZI_TO_WIE");
	};
};

