
const int Value_HpEssenz = 40;
const int HP_Essenz = 75;
const int Value_HpExtrakt = 60;
const int HP_Extrakt = 100;
const int Value_HpElixier = 80;
const int HP_Elixier = 150;
const int VALUE_BAPEHBE = 150;
const int HP_BAPEHBE = 1;
const int Value_ManaEssenz = 25;
const int Mana_Essenz = 25;
const int Value_ManaExtrakt = 50;
const int Mana_Extrakt = 50;
const int Value_ManaElixier = 80;
const int Mana_Elixier = 100;
const int Value_StrElixier = 900;
const int VALUE_DEFELIXIER = 1200;
const int STR_Elixier = 3;
const int Value_DexElixier = 900;
const int DEX_Elixier = 3;
const int Value_HpMaxElixier = 1300;
const int HPMax_Elixier = 25;
const int Value_ManaMaxElixier = 1300;
const int VALUE_MUSHROOMMP = 1800;
const int ManaMax_Elixier = 5;
const int Value_MegaDrink = 1800;
const int STRorDEX_MegaDrink = 15;
const int Value_Speed = 200;
const int Time_Speed = 40000;
const int Value_ManaTrunk = 160;
const int Value_HpTrunk = 160;

instance ItPo_Mana_01(C_Item)
{
	name = "Essence of mana";
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = Value_ManaEssenz;
	visual = "ItPo_Mana_01.3ds";
	material = MAT_GLAS;
	on_state[0] = UseItPo_Mana_01;
	scemeName = "POTIONFAST";
	description = name;
	text[1] = NAME_BONUS_MANANP;
	count[1] = Mana_Essenz;
	text[5] = NAME_025KG;
	count[5] = value;
};


func void UseItPo_Mana_01()
{
	Npc_ChangeAttribute(self,ATR_MANA,Mana_Essenz);
	if((Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero)) && (CONSTANTINO_MANA == TRUE))
	{
		CONSTANTINO_MANA_TIME += 3;
		if(CONSTANTINO_MANA_TIME > 30)
		{
			CONSTANTINO_MANA_TIME = 30;
		};
	};
};


instance ItPo_Mana_02(C_Item)
{
	name = "Extract of mana";
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = Value_ManaExtrakt;
	visual = "ItPo_Mana_02.3ds";
	material = MAT_GLAS;
	on_state[0] = UseItPo_Mana_02;
	scemeName = "POTIONFAST";
	description = name;
	text[1] = NAME_BONUS_MANANP;
	count[1] = Mana_Extrakt;
	text[5] = NAME_05KG;
	count[5] = Value_ManaExtrakt;
};


func void UseItPo_Mana_02()
{
	Npc_ChangeAttribute(self,ATR_MANA,Mana_Extrakt);
	if((Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero)) && (CONSTANTINO_MANA == TRUE))
	{
		CONSTANTINO_MANA_TIME += 5;
		if(CONSTANTINO_MANA_TIME > 30)
		{
			CONSTANTINO_MANA_TIME = 30;
		};
	};
};


instance ItPo_Mana_03(C_Item)
{
	name = "Elixir of mana";
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = Value_ManaElixier;
	visual = "ItPo_Mana_03.3ds";
	material = MAT_GLAS;
	on_state[0] = UseItPo_Mana_03;
	scemeName = "POTIONFAST";
	description = name;
	text[1] = NAME_BONUS_MANANP;
	count[1] = Mana_Elixier;
	text[5] = NAME_075KG;
	count[5] = value;
};


func void UseItPo_Mana_03()
{
	Npc_ChangeAttribute(self,ATR_MANA,Mana_Elixier);
	if((Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero)) && (CONSTANTINO_MANA == TRUE))
	{
		CONSTANTINO_MANA_TIME += 10;
		if(CONSTANTINO_MANA_TIME > 30)
		{
			CONSTANTINO_MANA_TIME = 30;
		};
	};
};


instance ItPo_Health_01(C_Item)
{
	name = "Essence of healing";
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = Value_HpEssenz;
	visual = "ItPo_Health_01.3ds";
	material = MAT_GLAS;
	on_state[0] = UseItPo_Health_01;
	scemeName = "POTIONFAST";
	description = name;
	text[1] = NAME_BONUS_HPNP;
	count[1] = HP_Essenz;
	text[5] = NAME_025KG;
	count[5] = Value_HpEssenz;
};


func void UseItPo_Health_01()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Essenz);
	if((Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero)) && (CONSTANTINO_HEAL == TRUE))
	{
		CONSTANTINO_HEAL_TIME += 7;
		if(CONSTANTINO_HEAL_TIME > 60)
		{
			CONSTANTINO_HEAL_TIME = 60;
		};
	};
};


instance ItPo_Health_02(C_Item)
{
	name = "Extract of healing";
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = Value_HpExtrakt;
	visual = "ItPo_Health_02.3ds";
	material = MAT_GLAS;
	on_state[0] = UseItPo_Health_02;
	scemeName = "POTIONFAST";
	description = name;
	text[1] = NAME_BONUS_HPNP;
	count[1] = HP_Extrakt;
	text[5] = NAME_05KG;
	count[5] = Value_HpExtrakt;
};


func void UseItPo_Health_02()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Extrakt);
	if((Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero)) && (CONSTANTINO_HEAL == TRUE))
	{
		CONSTANTINO_HEAL_TIME += 10;
		if(CONSTANTINO_HEAL_TIME > 60)
		{
			CONSTANTINO_HEAL_TIME = 60;
		};
	};
};


instance ItPo_Health_03(C_Item)
{
	name = "Elixir of healing";
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = Value_HpElixier;
	visual = "ItPo_Health_03.3ds";
	material = MAT_GLAS;
	on_state[0] = UseItPo_Health_03;
	scemeName = "POTIONFAST";
	description = name;
	text[1] = NAME_BONUS_HPNP;
	count[1] = HP_Elixier;
	text[5] = NAME_075KG;
	count[5] = Value_HpElixier;
};


func void UseItPo_Health_03()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Elixier);
	if((Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero)) && (CONSTANTINO_HEAL == TRUE))
	{
		CONSTANTINO_HEAL_TIME += 15;
		if(CONSTANTINO_HEAL_TIME > 60)
		{
			CONSTANTINO_HEAL_TIME = 60;
		};
	};
};


instance ITPO_BAPEHBE(C_Item)
{
	name = "Berry broth";
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = VALUE_BAPEHBE;
	visual = "ItPo_BAPEHbE.3ds";
	material = MAT_GLAS;
	on_state[0] = useitpo_bapehbe;
	scemeName = "POTIONFAST";
	description = name;
	text[0] = "Healing broth made from woodland berries.";
	text[1] = NAME_BONUS_HP_30;
	text[2] = NAME_BONUS_HPRM;
	text[5] = NAME_065KG;
	count[5] = VALUE_BAPEHBE;
};


func void useitpo_bapehbe()
{
	var int hpres;
	var string concatText;
	hpres = 1 + ((self.attribute[ATR_HITPOINTS_MAX] * 30) / 100);
	Npc_ChangeAttribute(self,ATR_HITPOINTS_MAX,HP_BAPEHBE);
	Npc_ChangeAttribute(self,ATR_HITPOINTS,hpres);
	if(self.attribute[ATR_HITPOINTS] > self.attribute[ATR_HITPOINTS_MAX])
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];
	};
	concatText = ConcatStrings(PRINT_Learnhitpoints_MAX,IntToString(HP_BAPEHBE));
	PrintScreen(concatText,-1,-1,FONT_Screen,2);
};


instance ITPO_PERM_DEF(C_Item)
{
	name = "Elixir of protection";
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = VALUE_DEFELIXIER;
	visual = "ItPo_Perm_DEF.3ds";
	material = MAT_GLAS;
	on_state[0] = useitpo_perm_def;
	scemeName = "POTION";
	description = name;
	text[1] = NAME_BONUS_DEF;
	count[1] = 1;
	text[5] = NAME_075KG;
	count[5] = VALUE_DEFELIXIER;
};


func void useitpo_perm_def()
{
	Wld_PlayEffect("SPELLFX_DEFSMOKE",hero,hero,3,3,3,FALSE);
	self.protection[PROT_EDGE] += 1;
	self.protection[PROT_BLUNT] += 1;
	self.protection[PROT_POINT] += 1;
	STAT_SWORDDEF = STAT_SWORDDEF + (1 * 1);
	Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	PrintScreen(PRINT_PERMDEF,-1,-1,FONT_Screen,4);
};


instance ItPo_Perm_STR(C_Item)
{
	name = "Elixir of strenght";
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = Value_StrElixier;
	visual = "ItPo_Perm_STR.3ds";
	material = MAT_GLAS;
	on_state[0] = UseItPo_Perm_STR;
	scemeName = "POTIONFAST";
	description = name;
	text[1] = NAME_Bonus_Str;
	count[1] = STR_Elixier;
	text[5] = NAME_065KG;
	count[5] = Value_StrElixier;
};


func void UseItPo_Perm_STR()
{
	B_RaiseAttribute(self,ATR_STRENGTH,STR_Elixier);
};


instance ItPo_Perm_DEX(C_Item)
{
	name = "Elixir of dexterity";
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = Value_DexElixier;
	visual = "ItPo_Perm_DEX.3ds";
	material = MAT_GLAS;
	on_state[0] = UseItPo_Perm_DEX;
	scemeName = "POTIONFAST";
	description = name;
	text[1] = NAME_Bonus_Dex;
	count[1] = DEX_Elixier;
	text[5] = NAME_065KG;
	count[5] = Value_DexElixier;
};


func void UseItPo_Perm_DEX()
{
	B_RaiseAttribute(self,ATR_DEXTERITY,DEX_Elixier);
};


instance ItPo_Perm_Health(C_Item)
{
	name = "Elixir of life";
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = Value_HpMaxElixier;
	visual = "ItPo_Perm_Health.3ds";
	material = MAT_GLAS;
	on_state[0] = UseItPo_Perm_Health;
	scemeName = "POTIONFAST";
	description = name;
	text[1] = NAME_Bonus_HpMax;
	count[1] = HPMax_Elixier;
	text[5] = NAME_065KG;
	count[5] = Value_HpMaxElixier;
};


func void UseItPo_Perm_Health()
{
	B_RaiseAttribute(self,ATR_HITPOINTS_MAX,HPMax_Elixier);
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HPMax_Elixier);
};


instance ItPo_Perm_Mana(C_Item)
{
	name = "Elixir of spirit";
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = Value_ManaMaxElixier;
	visual = "ItPo_Perm_Mana.3ds";
	material = MAT_GLAS;
	on_state[0] = UseItPo_Perm_Mana;
	scemeName = "POTIONFAST";
	description = name;
	text[1] = NAME_Bonus_ManaMax;
	count[1] = ManaMax_Elixier;
	text[5] = NAME_065KG;
	count[5] = Value_ManaMaxElixier;
};


func void UseItPo_Perm_Mana()
{
	B_RaiseAttribute(self,ATR_MANA_MAX,ManaMax_Elixier);
	Npc_ChangeAttribute(self,ATR_MANA,ManaMax_Elixier);
};


instance ITPO_PERM_MUSHROOMMP(C_Item)
{
	name = "Elixir of dark mushrooms";
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = VALUE_MUSHROOMMP;
	visual = "ItPo_MushroomMP_01.3ds";
	material = MAT_GLAS;
	on_state[0] = useitpo_mushroommp;
	scemeName = "POTIONFAST";
	description = name;
	text[1] = NAME_Bonus_ManaMax;
	count[1] = ManaMax_Elixier;
	text[5] = NAME_075KG;
	count[5] = VALUE_MUSHROOMMP;
};


func void useitpo_mushroommp()
{
	B_RaiseAttribute(self,ATR_MANA_MAX,ManaMax_Elixier);
	Npc_ChangeAttribute(self,ATR_MANA,ManaMax_Elixier);
};


instance ItPo_Speed(C_Item)
{
	name = "Potion of speed";
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = Value_Speed;
	visual = "ItPo_Speed.3ds";
	material = MAT_GLAS;
	on_state[0] = UseItPo_Speed;
	scemeName = "POTIONFAST";
	description = name;
	text[1] = "Temporarily increases the speed";
	text[3] = "Duration - 40 seconds";
	text[5] = NAME_05KG;
	count[5] = value;
};


func void UseItPo_Speed()
{
	if((Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero)) && (REAL_WGHT < MAXM_WGHT))
	{
		Mdl_ApplyOverlayMdsTimed(self,"HUMANS_SPRINT.MDS",Time_Speed);
	};
};


instance ItPo_MegaDrink(C_Item)
{
	name = "Embarla Firgasto";
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = Value_MegaDrink;
	visual = "ItPo_Perm_Mana.3ds";
	material = MAT_GLAS;
	on_state[0] = UseItPo_MegaDrink;
	scemeName = "POTIONFAST";
	description = name;
	text[3] = "Effects unknown.";
	text[5] = NAME_1KG;
	count[5] = value;
};


func void UseItPo_MegaDrink()
{
	if(self.attribute[ATR_STRENGTH] < self.attribute[ATR_DEXTERITY])
	{
		B_RaiseAttribute(self,ATR_DEXTERITY,STRorDEX_MegaDrink);
	}
	else
	{
		B_RaiseAttribute(self,ATR_STRENGTH,STRorDEX_MegaDrink);
	};
	Npc_ChangeAttribute(self,ATR_MANA,-ATR_MANA);
	Snd_Play("DEM_Warn");
};

