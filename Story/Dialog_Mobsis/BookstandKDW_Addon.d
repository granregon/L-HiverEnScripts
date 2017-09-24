
var int bezi_use_runemaking_kdw;

func void Use_Runemaking_KDW_CIRC1_S1()
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
		Doc_PrintLine(nDocID,0,"The Circles of Water");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLines(nDocID,0,"The runes of Water and the ingredients necessary for their creation.");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Whirlwind");
		Doc_PrintLine(nDocID,0,"- Wings of a bloodfly");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Ice lance");
		Doc_PrintLine(nDocID,0,"- Glacier quartz");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Geyser");
		Doc_PrintLine(nDocID,0,"- Aquamarine");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Storm");
		Doc_PrintLine(nDocID,0,"- Glacier quartz");
		Doc_PrintLine(nDocID,0,"- Wings of a bloodfly");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Waterfist");
		Doc_PrintLine(nDocID,0,"- Aquamarine");
		Doc_PrintLine(nDocID,0,"- Rock crystal");
		Doc_PrintLine(nDocID,0,"");
		Doc_SetMargins(nDocID,-1,30,20,275,20,1);
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"To create a rune you always require ONE of the ingredients listed.");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"The user must know the formula for the spell and he must have a blank runestone and a spell scroll for the desired spell.");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"Only when these prerequisites are fulfilled can he set to work on the rune table.");
		Doc_Show(nDocID);
		if(BEZI_USE_RUNEMAKING_KDW == FALSE)
		{
			BEZI_USE_RUNEMAKING_KDW = TRUE;
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

func void Use_Runemaking_KDW_CIRC2_S1()
{
	Use_Runemaking_KDW_CIRC1_S1();
};

func void Use_Runemaking_KDW_CIRC3_S1()
{
	Use_Runemaking_KDW_CIRC1_S1();
};

func void Use_Runemaking_KDW_CIRC4_S1()
{
	Use_Runemaking_KDW_CIRC1_S1();
};

func void Use_Runemaking_KDW_CIRC5_S1()
{
	Use_Runemaking_KDW_CIRC1_S1();
};

func void Use_Runemaking_KDW_CIRC6_S1()
{
	Use_Runemaking_KDW_CIRC1_S1();
};

