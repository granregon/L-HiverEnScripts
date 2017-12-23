
const int STR_StPlLevel1 = 2;
const int STR_StPlLevel2 = 4;
const int STR_StPlLevel3 = 6;
const int DEX_StPlLevel1 = 2;
const int DEX_StPlLevel2 = 4;
const int DEX_StPlLevel3 = 6;
const int HPMax_StPlLevel1 = 5;
const int HPMax_StPlLevel2 = 10;
const int HPMax_StPlLevel3 = 15;
const int ManaMax_StPlLevel1 = 2;
const int ManaMax_StPlLevel2 = 4;
const int ManaMax_StPlLevel3 = 6;
const int OneH_StPlLevel1 = 2;
const int OneH_StPlLevel2 = 4;
const int OneH_StPlLevel3 = 6;
const int TwoH_StPlLevel1 = 2;
const int TwoH_StPlLevel2 = 4;
const int TwoH_StPlLevel3 = 6;
const int Bow_StPlLevel1 = 2;
const int Bow_StPlLevel2 = 4;
const int Bow_StPlLevel3 = 6;
const int CrsBow_StPlLevel1 = 2;
const int CrsBow_StPlLevel2 = 4;
const int CrsBow_StPlLevel3 = 6;
const int Value_StonePlateMagic = 100;
const int value_StonePlateCommon = 5;
var int StoneplateItem;
var int StoneplateLevel;
const int StrStonePlate = 2;
const int DexStonePlate = 3;
const int HitPointStonePlate = 4;
const int ManaStonePlate = 5;
const int OneHStonePlate = 6;
const int TwoHStonePlate = 7;
const int BowStonePlate = 8;
const int CrsBowStonePlate = 9;

const string StPl_MagicAuraText = "The stone tablet has a magical aura.";
const string StPl_StandardText = "";

func int C_SCHasStPlSkill()
{
	if(KNOW_FOREIGNLANGUAGE == FALSE)
	{
		return FALSE;
	};
	if(StoneplateLevel == 1)
	{
		if(KNOW_FOREIGNLANGUAGE == TRUE)
		{
			return TRUE;
		};
	}
	else if(StoneplateLevel == 2)
	{
		if(KNOW_FOREIGNLANGUAGE == TRUE)
		{
			return TRUE;
		};
	}
	else if(StoneplateLevel == 3)
	{
		if(KNOW_FOREIGNLANGUAGE == TRUE)
		{
			return TRUE;
		};
	};
	return FALSE;
};

func void Use_StonePlate()
{
	var string concatText;
	if(C_SCHasStPlSkill() == FALSE)
	{
		B_Say(self,self,"$CANTREADTHIS");
	}
	else
	{
		if(StoneplateItem == StrStonePlate)
		{
			concatText = PRINT_LearnSTR;
			if(StoneplateLevel == 1)
			{
				B_RaiseAttribute(self,ATR_STRENGTH,STR_StPlLevel1);
				concatText = ConcatStrings(concatText,IntToString(STR_StPlLevel1));
				B_Say(self,self,"STONEPLATE_1");
			}
			else if(StoneplateLevel == 2)
			{
				B_RaiseAttribute(self,ATR_STRENGTH,STR_StPlLevel2);
				concatText = ConcatStrings(concatText,IntToString(STR_StPlLevel2));
				B_Say(self,self,"STONEPLATE_2");
			}
			else if(StoneplateLevel == 3)
			{
				B_RaiseAttribute(self,ATR_STRENGTH,STR_StPlLevel3);
				concatText = ConcatStrings(concatText,IntToString(STR_StPlLevel3));
				B_Say(self,self,"STONEPLATE_3");
			};
		}
		else if(StoneplateItem == DexStonePlate)
		{
			concatText = PRINT_LearnDEX;
			if(StoneplateLevel == 1)
			{
				B_RaiseAttribute(self,ATR_DEXTERITY,DEX_StPlLevel1);
				concatText = ConcatStrings(concatText,IntToString(DEX_StPlLevel1));
				B_Say(self,self,"STONEPLATE_1");
			}
			else if(StoneplateLevel == 2)
			{
				B_RaiseAttribute(self,ATR_DEXTERITY,DEX_StPlLevel2);
				concatText = ConcatStrings(concatText,IntToString(DEX_StPlLevel2));
				B_Say(self,self,"STONEPLATE_2");
			}
			else if(StoneplateLevel == 3)
			{
				B_RaiseAttribute(self,ATR_DEXTERITY,DEX_StPlLevel3);
				concatText = ConcatStrings(concatText,IntToString(DEX_StPlLevel3));
				B_Say(self,self,"STONEPLATE_3");
			};
		}
		else if(StoneplateItem == HitPointStonePlate)
		{
			concatText = PRINT_Learnhitpoints_MAX;
			if(StoneplateLevel == 1)
			{
				B_RaiseAttribute(self,ATR_HITPOINTS_MAX,HPMax_StPlLevel1);
				Npc_ChangeAttribute(self,ATR_HITPOINTS,HPMax_StPlLevel1);
				concatText = ConcatStrings(concatText,IntToString(HPMax_StPlLevel1));
				B_Say(self,self,"STONEPLATE_1");
			}
			else if(StoneplateLevel == 2)
			{
				B_RaiseAttribute(self,ATR_HITPOINTS_MAX,HPMax_StPlLevel2);
				Npc_ChangeAttribute(self,ATR_HITPOINTS,HPMax_StPlLevel2);
				concatText = ConcatStrings(concatText,IntToString(HPMax_StPlLevel2));
				B_Say(self,self,"STONEPLATE_2");
			}
			else if(StoneplateLevel == 3)
			{
				B_RaiseAttribute(self,ATR_HITPOINTS_MAX,HPMax_StPlLevel3);
				Npc_ChangeAttribute(self,ATR_HITPOINTS,HPMax_StPlLevel3);
				concatText = ConcatStrings(concatText,IntToString(HPMax_StPlLevel3));
				B_Say(self,self,"STONEPLATE_3");
			};
		}
		else if(StoneplateItem == ManaStonePlate)
		{
			concatText = PRINT_LearnMANA_MAX;
			if(StoneplateLevel == 1)
			{
				B_RaiseAttribute(self,ATR_MANA_MAX,ManaMax_StPlLevel1);
				Npc_ChangeAttribute(self,ATR_MANA,ManaMax_StPlLevel1);
				concatText = ConcatStrings(concatText,IntToString(ManaMax_StPlLevel1));
				B_Say(self,self,"STONEPLATE_1");
			}
			else if(StoneplateLevel == 2)
			{
				B_RaiseAttribute(self,ATR_MANA_MAX,ManaMax_StPlLevel2);
				Npc_ChangeAttribute(self,ATR_MANA,ManaMax_StPlLevel2);
				concatText = ConcatStrings(concatText,IntToString(ManaMax_StPlLevel2));
				B_Say(self,self,"STONEPLATE_2");
			}
			else if(StoneplateLevel == 3)
			{
				B_RaiseAttribute(self,ATR_MANA_MAX,ManaMax_StPlLevel3);
				Npc_ChangeAttribute(self,ATR_MANA,ManaMax_StPlLevel3);
				concatText = ConcatStrings(concatText,IntToString(ManaMax_StPlLevel3));
				B_Say(self,self,"STONEPLATE_3");
			};
		}
		else if(StoneplateItem == OneHStonePlate)
		{
			concatText = PRINT_Learn1H;
			if(StoneplateLevel == 1)
			{
				B_RaiseFightTalent(self,NPC_TALENT_1H,OneH_StPlLevel1);
				concatText = ConcatStrings(concatText," + ");
				concatText = ConcatStrings(concatText,IntToString(OneH_StPlLevel1));
				B_Say(self,self,"STONEPLATE_1");
			}
			else if(StoneplateLevel == 2)
			{
				B_RaiseFightTalent(self,NPC_TALENT_1H,OneH_StPlLevel2);
				concatText = ConcatStrings(concatText," + ");
				concatText = ConcatStrings(concatText,IntToString(OneH_StPlLevel2));
				B_Say(self,self,"STONEPLATE_2");
			}
			else if(StoneplateLevel == 3)
			{
				B_RaiseFightTalent(self,NPC_TALENT_1H,OneH_StPlLevel3);
				concatText = ConcatStrings(concatText," + ");
				concatText = ConcatStrings(concatText,IntToString(OneH_StPlLevel3));
				B_Say(self,self,"STONEPLATE_3");
			};
		}
		else if(StoneplateItem == TwoHStonePlate)
		{
			concatText = PRINT_Learn2H;
			if(StoneplateLevel == 1)
			{
				B_RaiseFightTalent(self,NPC_TALENT_2H,TwoH_StPlLevel1);
				concatText = ConcatStrings(concatText," + ");
				concatText = ConcatStrings(concatText,IntToString(TwoH_StPlLevel1));
				B_Say(self,self,"STONEPLATE_1");
			}
			else if(StoneplateLevel == 2)
			{
				B_RaiseFightTalent(self,NPC_TALENT_2H,TwoH_StPlLevel2);
				concatText = ConcatStrings(concatText," + ");
				concatText = ConcatStrings(concatText,IntToString(TwoH_StPlLevel2));
				B_Say(self,self,"STONEPLATE_2");
			}
			else if(StoneplateLevel == 3)
			{
				B_RaiseFightTalent(self,NPC_TALENT_2H,TwoH_StPlLevel3);
				concatText = ConcatStrings(concatText," + ");
				concatText = ConcatStrings(concatText,IntToString(TwoH_StPlLevel3));
				B_Say(self,self,"STONEPLATE_3");
			};
		}
		else if(StoneplateItem == BowStonePlate)
		{
			concatText = PRINT_LearnBow;
			if(StoneplateLevel == 1)
			{
				B_RaiseFightTalent(self,NPC_TALENT_BOW,Bow_StPlLevel1);
				concatText = ConcatStrings(concatText," + ");
				concatText = ConcatStrings(concatText,IntToString(Bow_StPlLevel1));
				B_Say(self,self,"STONEPLATE_1");
			}
			else if(StoneplateLevel == 2)
			{
				B_RaiseFightTalent(self,NPC_TALENT_BOW,Bow_StPlLevel2);
				concatText = ConcatStrings(concatText," + ");
				concatText = ConcatStrings(concatText,IntToString(Bow_StPlLevel2));
				B_Say(self,self,"STONEPLATE_2");
			}
			else if(StoneplateLevel == 3)
			{
				B_RaiseFightTalent(self,NPC_TALENT_BOW,Bow_StPlLevel3);
				concatText = ConcatStrings(concatText," + ");
				concatText = ConcatStrings(concatText,IntToString(Bow_StPlLevel3));
				B_Say(self,self,"STONEPLATE_3");
			};
		}
		else if(StoneplateItem == CrsBowStonePlate)
		{
			concatText = PRINT_LearnCrossbow;
			if(StoneplateLevel == 1)
			{
				B_RaiseFightTalent(self,NPC_TALENT_CROSSBOW,CrsBow_StPlLevel1);
				concatText = ConcatStrings(concatText," + ");
				concatText = ConcatStrings(concatText,IntToString(CrsBow_StPlLevel1));
				B_Say(self,self,"STONEPLATE_1");
			}
			else if(StoneplateLevel == 2)
			{
				B_RaiseFightTalent(self,NPC_TALENT_CROSSBOW,CrsBow_StPlLevel2);
				concatText = ConcatStrings(concatText," + ");
				concatText = ConcatStrings(concatText,IntToString(CrsBow_StPlLevel2));
				B_Say(self,self,"STONEPLATE_2");
			}
			else if(StoneplateLevel == 3)
			{
				B_RaiseFightTalent(self,NPC_TALENT_CROSSBOW,CrsBow_StPlLevel3);
				concatText = ConcatStrings(concatText," + ");
				concatText = ConcatStrings(concatText,IntToString(CrsBow_StPlLevel3));
				B_Say(self,self,"STONEPLATE_3");
			};
		};
		PrintScreen(concatText,-1,-1,FONT_Screen,2);
		Wld_PlayEffect("spellFX_LIGHTSTAR_ORANGE",hero,hero,0,0,0,FALSE);
		Snd_Play("SFX_HealObsession");
	};
	StoneplateItem = 0;
	StoneplateLevel = 0;
};


prototype Prototype_StonePlate(C_Item)
{
	name = "Stone tablet";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION | ITEM_MULTI;
	value = Value_StonePlateMagic;
	visual = "ItMi_StonePlate_PowerUp_01.3DS";
	material = MAT_STONE;
	scemeName = "MAPSEALED";
	inv_rotx = -90;
	inv_roty = 0;
	inv_rotz = 0;
	text[2] = StPl_MagicAuraText;
	text[5] = NAME_05KG;
	count[5] = value;
};

func int C_ScHasMagicStonePlate()
{
	return FALSE;
};

