
var int ALchemy_1_permanent;
var int ALchemy_2_permanent;
var int ALchemy_3_permanent;

func void Use_BookstandALCHEMY1_S1()
{
	var int nDocID;
	var int bezi_random;
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
	{
		nDocID = Doc_Create();
		Doc_SetPages(nDocID,2);
		Doc_SetPage(nDocID,0,"Book_Mage_L.tga",0);
		Doc_SetPage(nDocID,1,"Book_Mage_R.tga",0);
		Doc_SetFont(nDocID,-1,FONT_Book);
		Doc_SetMargins(nDocID,0,275,20,30,20,1);
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLines(nDocID,0,"Potions of magic power");
		Doc_PrintLine(nDocID,0,"and ingredients");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Mana essence");
		Doc_PrintLine(nDocID,0,"2 fire nettles");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Mana extract");
		Doc_PrintLine(nDocID,0,"2 fireweeds");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Mana elixir");
		Doc_PrintLine(nDocID,0,"2 fire roots");
		Doc_PrintLine(nDocID,0,"");
		Doc_SetMargins(nDocID,-1,30,20,275,20,1);
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"All work at the alchemist's bench requires a laboratory flask which is used up in the process.");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"To brew any healing potions or potions to strengthen magic power, you need a special ingredient and a plant:");
		Doc_PrintLines(nDocID,1,"king's sorrel");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLine(nDocID,1,"");
		Doc_Show(nDocID);
		if(ALchemy_1_permanent == FALSE)
		{
			B_GivePlayerXP(XP_Bookstand);
			ALchemy_1_permanent = TRUE;
		}
		else
		{
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
	};
};

func void Use_BookstandALCHEMY2_S1()
{
	var int nDocID;
	var int bezi_random;
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
	{
		nDocID = Doc_Create();
		Doc_SetPages(nDocID,2);
		Doc_SetPage(nDocID,0,"Book_Mage_L.tga",0);
		Doc_SetPage(nDocID,1,"Book_Mage_R.tga",0);
		Doc_SetFont(nDocID,-1,FONT_Book);
		Doc_SetMargins(nDocID,0,275,20,30,20,1);
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Healing potions");
		Doc_PrintLine(nDocID,0,"and ingredients");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Essence of healing");
		Doc_PrintLine(nDocID,0,"2 healing plants");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Extract of healing");
		Doc_PrintLine(nDocID,0,"2 healing herbs");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Elixir of healing");
		Doc_PrintLine(nDocID,0,"2 healing roots");
		Doc_PrintLine(nDocID,0,"");
		Doc_SetMargins(nDocID,-1,30,20,275,20,1);
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"All work at the alchemist's bench requires a laboratory flask which is used up in the process.");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"To brew any healing potions or potions to strengthen magic power, you need a special ingredient and a plant:");
		Doc_PrintLines(nDocID,1,"king's sorrel.");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLine(nDocID,1,"");
		Doc_Show(nDocID);
		if(ALchemy_2_permanent == FALSE)
		{
			B_GivePlayerXP(XP_Bookstand);
			ALchemy_2_permanent = TRUE;
		}
		else
		{
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
	};
};

func void Use_BookstandALCHEMY3_S1()
{
	var int nDocID;
	var int bezi_random;
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
	{
		nDocID = Doc_Create();
		Doc_SetPages(nDocID,2);
		Doc_SetPage(nDocID,0,"Book_Mage_L.tga",0);
		Doc_SetPage(nDocID,1,"Book_Mage_R.tga",0);
		Doc_SetFont(nDocID,-1,FONT_Book);
		Doc_SetMargins(nDocID,0,275,20,30,20,1);
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLines(nDocID,0,"Potions for permanent");
		Doc_PrintLine(nDocID,0,"changes and ingredients");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Elixir of dexterity");
		Doc_PrintLine(nDocID,0,"1 goblin berry");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Speed potion");
		Doc_PrintLines(nDocID,0,"1 snapperweed - This potion requires not king's sorrel, but meadow knotweed.");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Elixir of strength");
		Doc_PrintLine(nDocID,0,"1 dragonroot");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLines(nDocID,0,"Elixir of life");
		Doc_PrintLine(nDocID,0,"3 pure life potion");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLines(nDocID,0,"Elixir of spirit");
		Doc_PrintLine(nDocID,0,"3 pure mana potion");
		Doc_SetMargins(nDocID,-1,30,20,275,20,1);
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"Brewing these recipes is the highest art of alchemy. They all have the use of king's sorrel as an ingredient in common.");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"The potion of speed is much simpler to create which is also due to the fact that you do not need king's sorrel.");
		Doc_PrintLine(nDocID,1,"");
		Doc_Show(nDocID);
		if(ALchemy_3_permanent == FALSE)
		{
			B_GivePlayerXP(XP_Bookstand);
			ALchemy_3_permanent = TRUE;
		}
		else
		{
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
	};
};

