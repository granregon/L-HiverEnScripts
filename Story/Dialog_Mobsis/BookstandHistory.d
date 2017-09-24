
var int History_1_permanent;
var int History_2_permanent;
var int History_3_permanent;

func void Use_BookstandHistory1_S1()
{
	var int nDocID;
	var int bezi_random;
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
	{
		nDocID = Doc_Create();
		Doc_SetPages(nDocID,2);
		Doc_SetPage(nDocID,0,"Book_RED_L.tga",0);
		Doc_SetPage(nDocID,1,"Book_RED_R.tga",0);
		Doc_SetFont(nDocID,-1,FONT_Book);
		Doc_SetMargins(nDocID,0,275,20,30,20,1);
		Doc_PrintLine(nDocID,0,"The way of battle");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLines(nDocID,0,"The best defense is a good offense, at least against anything non-human. It's useless to parry animals' or monsters' attacks.");
		Doc_PrintLines(nDocID,0,"It's better to keep the foe at bay with well-aimed blows and then launch a surprise combination attack.");
		Doc_SetMargins(nDocID,-1,30,20,275,20,1);
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"Of course, only experienced fighters can combine their moves. If you become a master in the art of battle, you can even use several combinations.");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"");
		Doc_Show(nDocID);
		if(History_1_permanent == FALSE)
		{
			B_GivePlayerXP(XP_Bookstand);
			History_1_permanent = TRUE;
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

func void Use_BookstandHistory2_S1()
{
	var int nDocID;
	var int bezi_random;
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
	{
		nDocID = Doc_Create();
		Doc_SetPages(nDocID,2);
		Doc_SetPage(nDocID,0,"Book_RED_L.tga",0);
		Doc_SetPage(nDocID,1,"Book_RED_R.tga",0);
		Doc_SetFont(nDocID,-1,FONT_Book);
		Doc_SetMargins(nDocID,0,275,20,30,20,1);
		Doc_PrintLine(nDocID,0,"The island");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLines(nDocID,0,"The harbor city of Khorinis lies on an island off the coast of the kingdom Myrtana.");
		Doc_PrintLines(nDocID,0,"The island owes much of its fame to the Valley of Mines. Its reputation is dubious, as for many years a magic barrier spanned the entire valley, which served as a prison for all convicts of the realm.");
		Doc_PrintLines(nDocID,0,"Thus the valley became a prison colony where the convicts mined the magic ore far below the ground.");
		Doc_SetMargins(nDocID,-1,30,20,275,20,1);
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"Outside of Khorinis lie a series of farms which use the good soil to plant wheat and turnips and breed sheep.");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"For generations the largest farm has belonged to a landowner who rents the surrounding lands to other farmers.");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"On the middle of the island is an ancient monastery of Innos, led by the Magicians of Fire. There they conduct research of magic and alchemy and press wine.");
		Doc_Show(nDocID);
		if(History_2_permanent == FALSE)
		{
			B_GivePlayerXP(XP_Bookstand);
			History_2_permanent = TRUE;
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

func void Use_BookstandHistory3_S1()
{
	var int nDocID;
	var int bezi_random;
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
	{
		nDocID = Doc_Create();
		Doc_SetPages(nDocID,2);
		Doc_SetPage(nDocID,0,"Book_RED_L.tga",0);
		Doc_SetPage(nDocID,1,"Book_RED_R.tga",0);
		Doc_SetFont(nDocID,-1,FONT_Book);
		Doc_SetMargins(nDocID,0,275,20,30,20,1);
		Doc_PrintLine(nDocID,0,"The law of the island");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLines(nDocID,0,"Wherever men come together, ways must be found to keep the peace - be it in the monastery, the city or on the landowner's farm.");
		Doc_PrintLines(nDocID,0,"Any crime against the community is punished.");
		Doc_PrintLines(nDocID,0,"The community forbids starting fights or joining brawls.");
		Doc_PrintLines(nDocID,0,"Theft is also a crime that has consequences. The sheep are also protected by law.");
		Doc_PrintLines(nDocID,0," ");
		Doc_SetMargins(nDocID,-1,30,20,275,20,1);
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"If a man strikes down another or murders him, he must expect to be judged on the spot.");
		Doc_PrintLines(nDocID,1,"To evade this fate he must pay a heavy fine.");
		Doc_PrintLines(nDocID,1,"In all large places, men of justice keep the peace. They will hear of any crime, and it is their duty to effect punishment and restore order.");
		Doc_PrintLines(nDocID,1,"For whoever suffers from crime or witnesses such will not have a high opinion of the culprit.");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"Of course, there are folks who care nothing for laws, particularly bandits and mercenaries.");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"");
		Doc_Show(nDocID);
		if(History_2_permanent == FALSE)
		{
			B_GivePlayerXP(XP_Bookstand);
			History_2_permanent = TRUE;
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

