
var int PrayIdolDay;
var int prayidoldayone_1;
var int prayidoldayone_5;
var int prayidoldayone_10;
var int RecievedMoney;
var int GivenHitpoints;
var int GivenMana;
const int BeliarsDispo = 10000;

func void B_HitpointAngleich(var int BeliarsCost)
{
	var int CurrentHitpoints;
	var string concatText;
	GivenHitpoints = GivenHitpoints + BeliarsCost;
	hero.attribute[ATR_HITPOINTS_MAX] = hero.attribute[ATR_HITPOINTS_MAX] - BeliarsCost;
	CurrentHitpoints = hero.attribute[ATR_HITPOINTS] - BeliarsCost;
	if(CurrentHitpoints < 2)
	{
		CurrentHitpoints = 2;
	};
	hero.attribute[ATR_HITPOINTS] = CurrentHitpoints;
	concatText = ConcatStrings(PRINT_Beliarshitpoints_MAX,IntToString(BeliarsCost));
	PrintScreen(concatText,-1,-1,FONT_Screen,4);
};

func void B_ManaAngleich(var int BeliarsCost)
{
	var int CurrentMana;
	var string concatText;
	GivenMana = GivenMana + BeliarsCost;
	hero.attribute[ATR_MANA_MAX] = hero.attribute[ATR_MANA_MAX] - BeliarsCost;
	hero.aivar[REAL_MANA_MAX] = hero.aivar[REAL_MANA_MAX] - BeliarsCost;
	CurrentMana = hero.attribute[ATR_MANA] - BeliarsCost;
	if(CurrentMana < 0)
	{
		CurrentMana = 0;
	};
	hero.attribute[ATR_MANA] = CurrentMana;
	concatText = ConcatStrings(PRINT_BELIARSMANA_MAX,IntToString(BeliarsCost));
	PrintScreen(concatText,-1,-1,FONT_Screen,4);
};

func void B_BlitzInArsch()
{
	var int BlitzInArsch_Hitpoints;
	var int CurrentHitpoints;
	var int Abzug;
	var string concatText1;
	var string concatText2;
	CurrentHitpoints = hero.attribute[ATR_HITPOINTS];
	BlitzInArsch_Hitpoints = (CurrentHitpoints * 4) / 5;
	if(BlitzInArsch_Hitpoints < 2)
	{
		BlitzInArsch_Hitpoints = 2;
	};
	Abzug = hero.attribute[ATR_HITPOINTS] - BlitzInArsch_Hitpoints;
	if(Abzug > 0)
	{
		concatText1 = ConcatStrings(" ",NAME_Damage);
		concatText2 = ConcatStrings(IntToString(Abzug),concatText1);
		AI_PrintScreen(concatText2,-1,YPOS_GoldTaken,FONT_ScreenSmall,2);
		Wld_PlayEffect("spellFX_BELIARSRAGE",hero,hero,0,0,0,FALSE);
	};
	hero.attribute[ATR_HITPOINTS] = BlitzInArsch_Hitpoints;
};

func void B_GetBeliarsGold(var int Kohle)
{
	var string concatText1;
	var string concatText2;
	RecievedMoney = RecievedMoney + Kohle;
	if(RecievedMoney > BeliarsDispo)
	{
		Kohle = 100;
	};
	CreateInvItems(hero,ItMi_Gold,Kohle);
	concatText1 = ConcatStrings(IntToString(Kohle)," ");
	concatText2 = ConcatStrings(concatText1,PRINT_GoldErhalten);
	AI_PrintScreen(concatText2,-1,YPOS_GoldTaken,FONT_ScreenSmall,2);
};

func void PrayIdol_S1()
{
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
	{
		Wld_PlayEffect("DEMENTOR_FX",hero,hero,0,0,0,FALSE);
		self.aivar[AIV_INVINCIBLE] = TRUE;
		PLAYER_MOBSI_PRODUCTION = MOBSI_PRAYIDOL;
		AI_ProcessInfos(hero);
	};
};


instance PC_PRAYIDOL_FIRST(C_Info)
{
	npc = PC_Hero;
	nr = 452;
	condition = pc_prayidol_first_condition;
	information = pc_prayidol_first_info;
	permanent = TRUE;
	important = TRUE;
};


func int pc_prayidol_first_condition()
{
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_PRAYIDOL)
	{
		return TRUE;
	};
};

func void pc_prayidol_first_info()
{
	B_Say(hero,hero,"$BEZI_BELIAR");
};


instance PC_PrayIdol_End(C_Info)
{
	npc = PC_Hero;
	nr = 999;
	condition = PC_PrayIdol_End_Condition;
	information = PC_PrayIdol_End_Info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int PC_PrayIdol_End_Condition()
{
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_PRAYIDOL)
	{
		return TRUE;
	};
};

func void PC_PrayIdol_End_Info()
{
	b_endproductiondialog();
};


instance PC_PrayIdol_PrayIdol(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = PC_PrayIdol_PrayIdol_Condition;
	information = PC_PrayIdol_PrayIdol_Info;
	permanent = TRUE;
	description = NAME_ADDON_BETEN;
};


func int PC_PrayIdol_PrayIdol_Condition()
{
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_PRAYIDOL)
	{
		return TRUE;
	};
};

func void PC_PrayIdol_PrayIdol_Info()
{
	B_Say(hero,hero,"$BEZI_OFIARA");
	Info_ClearChoices(PC_PrayIdol_PrayIdol);
	Info_AddChoice(PC_PrayIdol_PrayIdol,Dialog_Back,PC_PrayIdol_PrayIdol_Back);
	Info_AddChoice(PC_PrayIdol_PrayIdol,NAME_ADDON_PRAYIDOL_GIVENOTHING,PC_PrayIdol_PrayIdol_NoPay);
	if(GivenHitpoints <= 50)
	{
		if(hero.attribute[ATR_HITPOINTS_MAX] >= 40)
		{
			Info_AddChoice(PC_PrayIdol_PrayIdol,NAME_ADDON_PRAYIDOL_GIVEHITPOINT1,PC_PrayIdol_PrayIdol_SmallPay);
		};
		if(hero.attribute[ATR_HITPOINTS_MAX] >= 40)
		{
			Info_AddChoice(PC_PrayIdol_PrayIdol,NAME_ADDON_PRAYIDOL_GIVEHITPOINT2,PC_PrayIdol_PrayIdol_MediumPay);
		};
		if(hero.attribute[ATR_HITPOINTS_MAX] >= 40)
		{
			Info_AddChoice(PC_PrayIdol_PrayIdol,NAME_ADDON_PRAYIDOL_GIVEHITPOINT3,PC_PrayIdol_PrayIdol_BigPay);
		};
	};
	if(GivenMana <= 10)
	{
		if(hero.attribute[ATR_MANA_MAX] > 10)
		{
			Info_AddChoice(PC_PrayIdol_PrayIdol,NAME_ADDON_PRAYIDOL_GIVEMANA,PC_PrayIdol_PrayIdol_ManaPay);
		};
	};
};

func void PC_PrayIdol_PrayIdol_Back()
{
	Info_ClearChoices(PC_PrayIdol_PrayIdol);
};

func void PC_PrayIdol_PrayIdol_NoPay()
{
	B_BlitzInArsch();
	Info_ClearChoices(PC_PrayIdol_PrayIdol);
};

func void PC_PrayIdol_PrayIdol_SmallPay()
{
	var int zufall;
	zufall = Hlp_Random(100);
	if(zufall < 50)
	{
		B_BlitzInArsch();
	};
	B_HitpointAngleich(1);
	if((hero.guild == GIL_PAL) || (hero.guild == GIL_KDF))
	{
		B_GetBeliarsGold(25);
	}
	else
	{
		B_GetBeliarsGold(50);
	};
	Info_ClearChoices(PC_PrayIdol_PrayIdol);
};

func void PC_PrayIdol_PrayIdol_MediumPay()
{
	var int zufall;
	zufall = Hlp_Random(100);
	if(zufall < 50)
	{
		B_BlitzInArsch();
	};
	B_HitpointAngleich(5);
	if((hero.guild == GIL_PAL) || (hero.guild == GIL_KDF))
	{
		B_GetBeliarsGold(125);
	}
	else
	{
		B_GetBeliarsGold(250);
	};
	Info_ClearChoices(PC_PrayIdol_PrayIdol);
};

func void PC_PrayIdol_PrayIdol_BigPayManaPay()
{
	var int zufall;
	zufall = Hlp_Random(100);
	if(zufall < 50)
	{
		B_BlitzInArsch();
	};
	if((hero.guild == GIL_PAL) || (hero.guild == GIL_KDF))
	{
		B_GetBeliarsGold(250);
	}
	else
	{
		B_GetBeliarsGold(500);
	};
	Info_ClearChoices(PC_PrayIdol_PrayIdol);
};

func void PC_PrayIdol_PrayIdol_BigPay()
{
	B_HitpointAngleich(10);
	PC_PrayIdol_PrayIdol_BigPayManaPay();
};

func void PC_PrayIdol_PrayIdol_ManaPay()
{
	B_ManaAngleich(1);
	PC_PrayIdol_PrayIdol_BigPayManaPay();
};


instance PC_PrayShrine_UPGRATEBELIARSWEAPON(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = PC_PrayShrine_UPGRATEBELIARSWEAPON_Condition;
	information = PC_PrayShrine_UPGRATEBELIARSWEAPON_Info;
	permanent = TRUE;
	description = NAME_ADDON_UPGRATEBELIARSWEAPON;
};


func int PC_PrayShrine_UPGRATEBELIARSWEAPON_Condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_PRAYIDOL) && (C_ScCanUpgrateBeliarsWeapon() == TRUE) && (C_ScHasBeliarsWeapon() == TRUE))
	{
		return TRUE;
	};
};

func void PC_PrayShrine_UPGRATEBELIARSWEAPON_Info()
{
	var int zufall;
	zufall = Hlp_Random(50);
	if(zufall < 25)
	{
		B_Say(hero,hero,"$BEZI_RUNA");
	}
	else
	{
		B_Say(hero,hero,"$BEZI_MIECZ");
	};
	B_ClearBeliarsWeapon();
	B_UpgrateBeliarsWeapon();
};

