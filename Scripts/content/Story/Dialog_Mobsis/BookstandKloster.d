
func void Use_Bookstand_Rune_01_S1()
{
	var int nDocID;
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
	{
		nDocID = Doc_Create();
		Doc_SetPages(nDocID,2);
		Doc_SetPage(nDocID,0,"Book_Mage_L.tga",0);
		Doc_SetPage(nDocID,1,"Book_Mage_R.tga",0);
		Doc_SetFont(nDocID,-1,FONT_Book);
		Doc_SetMargins(nDocID,0,275,20,30,20,1);
		Doc_PrintLine(nDocID,0,"Page 1");
		Doc_PrintLine(nDocID,0,"The runestones");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLines(nDocID,0,"");
		Doc_SetMargins(nDocID,-1,30,20,275,20,1);
		Doc_PrintLine(nDocID,1,"Page 2");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1," ");
		Doc_Show(nDocID);
	};
};

func void Use_Bookstand_Rune_02_S1()
{
	var int nDocID;
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
	{
		nDocID = Doc_Create();
		Doc_SetPages(nDocID,2);
		Doc_SetPage(nDocID,0,"Book_Mage_L.tga",0);
		Doc_SetPage(nDocID,1,"Book_Mage_R.tga",0);
		Doc_SetFont(nDocID,-1,FONT_Book);
		Doc_SetMargins(nDocID,0,275,20,30,20,1);
		Doc_PrintLine(nDocID,0,"Page 1");
		Doc_PrintLine(nDocID,0,"The runes and their ingredients");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLines(nDocID,0,"");
		Doc_SetMargins(nDocID,-1,30,20,275,20,1);
		Doc_PrintLine(nDocID,1,"Page 2");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1," ");
		Doc_Show(nDocID);
	};
};

func void Use_Bookstand_Innos_01_S1()
{
	var int nDocID;
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
	{
		nDocID = Doc_Create();
		Doc_SetPages(nDocID,2);
		Doc_SetPage(nDocID,0,"Book_Mage_L.tga",0);
		Doc_SetPage(nDocID,1,"Book_Mage_R.tga",0);
		Doc_SetFont(nDocID,-1,FONT_Book);
		Doc_SetMargins(nDocID,0,275,20,30,20,1);
		Doc_PrintLine(nDocID,0,"Page 1");
		Doc_PrintLine(nDocID,0,"Teachings of Innos");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLines(nDocID,0,"");
		Doc_SetMargins(nDocID,-1,30,20,275,20,1);
		Doc_PrintLine(nDocID,1,"Page 2");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1," ");
		Doc_Show(nDocID);
	};
};

func void Use_Bookstand_Innos_02_S1()
{
	var int nDocID;
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
	{
		nDocID = Doc_Create();
		Doc_SetPages(nDocID,2);
		Doc_SetPage(nDocID,0,"Book_Mage_L.tga",0);
		Doc_SetPage(nDocID,1,"Book_Mage_R.tga",0);
		Doc_SetFont(nDocID,-1,FONT_Book);
		Doc_SetMargins(nDocID,0,275,20,30,20,1);
		Doc_PrintLine(nDocID,0,"Page 1");
		Doc_PrintLine(nDocID,0,"Commandments of Innos");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLines(nDocID,0,"");
		Doc_SetMargins(nDocID,-1,30,20,275,20,1);
		Doc_PrintLine(nDocID,1,"Page 2");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1," ");
		Doc_Show(nDocID);
	};
};


var int bezi_use_bookstand_kreise_01_s1;

func void Use_Bookstand_Kreise_01_S1()
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
		Doc_PrintLine(nDocID,0,"THE FIRST CIRCLE");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLines(nDocID,0,"The runes of the 1st Circle and the ingredients required to create them.");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Light");
		Doc_PrintLine(nDocID,0,"- Gold coin");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Fire arrow");
		Doc_PrintLine(nDocID,0,"- Sulfur");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Small lightning");
		Doc_PrintLine(nDocID,0,"- Rock crystal");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Summon goblin skeleton");
		Doc_PrintLine(nDocID,0,"- Goblin's bone");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Heal light wounds");
		Doc_PrintLine(nDocID,0,"- Healing plant");
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
		if(bezi_use_bookstand_kreise_01_s1 == FALSE)
		{
			bezi_use_bookstand_kreise_01_s1 = TRUE;
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


var int bezi_use_bookstand_kreise_02_s1;

func void Use_Bookstand_Kreise_02_S1()
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
		Doc_PrintLine(nDocID,0,"THE SECOND CIRCLE");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLines(nDocID,0,"The runes of the 2nd Circle and the ingredients required to create them.");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Fireball");
		Doc_PrintLine(nDocID,0,"- Pitch");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Ice arrow");
		Doc_PrintLine(nDocID,0,"- Glacier quartz");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Summon wolf");
		Doc_PrintLine(nDocID,0,"- Wolf skin");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Wind fist");
		Doc_PrintLine(nDocID,0,"- Coal");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Sleep");
		Doc_PrintLine(nDocID,0,"- Swampweed");
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
		if(bezi_use_bookstand_kreise_02_s1 == FALSE)
		{
			bezi_use_bookstand_kreise_02_s1 = TRUE;
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


var int bezi_use_bookstand_kreise_03_s1;

func void Use_Bookstand_Kreise_03_S1()
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
		Doc_PrintLine(nDocID,0,"THE THIRD CIRCLE");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLines(nDocID,0,"The runes of the 3rd Circle and the ingredients required to create them.");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Heal medium wounds");
		Doc_PrintLine(nDocID,0,"- Healing herb");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Small fire storm");
		Doc_PrintLine(nDocID,0,"- Pitch");
		Doc_PrintLine(nDocID,0,"- Sulfur");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Summon skeleton");
		Doc_PrintLine(nDocID,0,"- Skeleton's bone");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Fear");
		Doc_PrintLine(nDocID,0,"- Black pearl");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Ice block");
		Doc_PrintLine(nDocID,0,"- Glacier quartz");
		Doc_PrintLine(nDocID,0,"- Aquamarine");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Ball lightning");
		Doc_PrintLine(nDocID,0,"- Rock crystal");
		Doc_PrintLine(nDocID,0,"- Sulfur");
		Doc_PrintLine(nDocID,0,"");
		Doc_SetMargins(nDocID,-1,30,20,275,20,1);
		Doc_PrintLine(nDocID,0,"Fireball");
		Doc_PrintLine(nDocID,0,"- Pitch");
		Doc_PrintLine(nDocID,0,"- Sulfur");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLines(nDocID,1,"To create a rune you always require ONE of the ingredients listed.");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"The user must know the formula for the spell and he must have a blank runestone and a spell scroll for the desired spell.");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"Only when these prerequisites are fulfilled can he set to work on the rune table.");
		Doc_Show(nDocID);
		if(bezi_use_bookstand_kreise_03_s1 == FALSE)
		{
			bezi_use_bookstand_kreise_03_s1 = TRUE;
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


var int bezi_use_bookstand_kreise_04_s1;

func void Use_Bookstand_Kreise_04_S1()
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
		Doc_PrintLine(nDocID,0,"THE FOURTH CIRCLE");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLines(nDocID,0,"The runes of the 4th Circle and the ingredients required to create them.");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Large fireball");
		Doc_PrintLine(nDocID,0,"- Sulfur");
		Doc_PrintLine(nDocID,0,"- Pitch");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Lightning");
		Doc_PrintLine(nDocID,0,"- Rock crystal");
		Doc_PrintLine(nDocID,0,"- Glacier quartz");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Summon golem");
		Doc_PrintLine(nDocID,0,"- Heart of a stone golem");
		Doc_PrintLine(nDocID,0,"");
		Doc_SetMargins(nDocID,-1,30,20,275,20,1);
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLine(nDocID,1,"Destroy undead");
		Doc_PrintLine(nDocID,1,"- Holy water");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"To create a rune you always require ONE of the ingredients listed.");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"The user must know the formula for the spell and he must have a blank runestone and a spell scroll for the desired spell.");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"Only when these prerequisites are fulfilled can he set to work on the rune table.");
		Doc_Show(nDocID);
		if(bezi_use_bookstand_kreise_04_s1 == FALSE)
		{
			bezi_use_bookstand_kreise_04_s1 = TRUE;
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


var int bezi_use_bookstand_kreise_05_s1;

func void Use_Bookstand_Kreise_05_S1()
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
		Doc_PrintLine(nDocID,0,"THE FIFTH CIRCLE");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLines(nDocID,0,"The runes of the 5th Circle and the ingredients required to create them.");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Ice wave");
		Doc_PrintLine(nDocID,0,"- Glacier quartz");
		Doc_PrintLine(nDocID,0,"- Aquamarine");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Large fire storm");
		Doc_PrintLine(nDocID,0,"- Sulfur");
		Doc_PrintLine(nDocID,0,"- Tongue of fire");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Summon demon");
		Doc_PrintLine(nDocID,0,"- Heart of a demon");
		Doc_PrintLine(nDocID,0,"");
		Doc_SetMargins(nDocID,-1,30,20,275,20,1);
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLine(nDocID,1,"Heal heavy wounds");
		Doc_PrintLine(nDocID,1,"- Healing root");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"To create a rune you always require ONE of the ingredients listed.");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"The user must know the formula for the spell and he must have a blank runestone and a spell scroll for the desired spell.");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"Only when these prerequisites are fulfilled can he set to work on the rune table.");
		Doc_Show(nDocID);
		if(bezi_use_bookstand_kreise_05_s1 == FALSE)
		{
			bezi_use_bookstand_kreise_05_s1 = TRUE;
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


var int bezi_use_bookstand_kreise_06_s1;

func void Use_Bookstand_Kreise_06_S1()
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
		Doc_PrintLine(nDocID,0,"THE SIXTH CIRCLE");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLines(nDocID,0,"The runes of the 6th Circle and the ingredients required to create them.");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Fire rain");
		Doc_PrintLine(nDocID,0,"- Pitch");
		Doc_PrintLine(nDocID,0,"- Sulfur");
		Doc_PrintLine(nDocID,0,"- Tongue of fire");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Breath of death");
		Doc_PrintLine(nDocID,0,"- Coal");
		Doc_PrintLine(nDocID,0,"- Black pearl");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLine(nDocID,0,"Wave of death");
		Doc_PrintLine(nDocID,0,"- Skeleton's bone");
		Doc_PrintLine(nDocID,0,"- Black pearl");
		Doc_PrintLine(nDocID,0,"");
		Doc_SetMargins(nDocID,-1,30,20,275,20,1);
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLine(nDocID,1,"Army of darkness");
		Doc_PrintLine(nDocID,1,"- Skeleton's bone");
		Doc_PrintLine(nDocID,1,"- Black pearl");
		Doc_PrintLine(nDocID,1,"- Heart of a stone golem");
		Doc_PrintLine(nDocID,1,"- Heart of a demon");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLine(nDocID,1,"Shrink monster");
		Doc_PrintLine(nDocID,1,"- Goblin's bone");
		Doc_PrintLine(nDocID,1,"- Troll tusk");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"To create a rune you always require ONE of the ingredients listed.");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"The user must know the formula for the spell and he must have a blank runestone and a spell scroll for the desired spell.");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1,"Only when these prerequisites are fulfilled can he set to work on the rune table.");
		Doc_Show(nDocID);
		if(bezi_use_bookstand_kreise_06_s1 == FALSE)
		{
			bezi_use_bookstand_kreise_06_s1 = TRUE;
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

func void Use_Bookstand_Rules_01_S1()
{
	var int nDocID;
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
	{
		nDocID = Doc_Create();
		Doc_SetPages(nDocID,2);
		Doc_SetPage(nDocID,0,"Book_Mage_L.tga",0);
		Doc_SetPage(nDocID,1,"Book_Mage_R.tga",0);
		Doc_SetFont(nDocID,-1,FONT_Book);
		Doc_SetMargins(nDocID,0,275,20,30,20,1);
		Doc_PrintLine(nDocID,0,"Page 1");
		Doc_PrintLine(nDocID,0,"Rules");
		Doc_PrintLine(nDocID,0,"");
		Doc_PrintLines(nDocID,0,"");
		Doc_SetMargins(nDocID,-1,30,20,275,20,1);
		Doc_PrintLine(nDocID,1,"Page 2");
		Doc_PrintLine(nDocID,1,"");
		Doc_PrintLines(nDocID,1," ");
		Doc_Show(nDocID);
	};
};

