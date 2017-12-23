
const int Value_Weed = 1;
const int Value_Beet = 3;
const int HP_Beet = 2;
const int Value_SwampHerb = 10;
const int Value_Mana_Herb_01 = 10;
const int Mana_Mana_Herb_01 = 10;
const int Value_Mana_Herb_02 = 20;
const int Mana_Mana_Herb_02 = 15;
const int Value_Mana_Herb_03 = 40;
const int Mana_Mana_Herb_03 = 20;
const int Value_Health_Herb_01 = 20;
const int HP_Health_Herb_01 = 10;
const int Value_Health_Herb_02 = 40;
const int HP_Health_Herb_02 = 20;
const int Value_Health_Herb_03 = 60;
const int HP_Health_Herb_03 = 30;
const int Value_Dex_Herb_01 = 250;
const int Value_Strength_Herb_01 = 500;
const int Value_Speed_Herb_01 = 100;
const int Speed_Boost = 15000;
const int Value_Mushroom_01 = 10;
const int HP_Mushroom_01 = 3;
const int Value_Mushroom_02 = 30;
const int HP_Mushroom_02 = 7;
const int Value_Forestberry = 10;
const int HP_Forestberry = 5;
const int Value_Blueplant = 10;
const int VALUE_GRAVEMOSS = 200;
const int HP_Blueplant = 5;
const int Mana_Blueplant = 5;
const int Value_Planeberry = 10;
const int HP_Planeberry = 5;
const int Value_Temp_Herb = 100;
const int HP_Temp_Herb = 5;
const int Value_Perm_Herb = 500;
const int HP_Perm_Herb = 5;

instance ItPl_Weed(C_Item)
{
	name = "Weeds";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Weed;
	visual = "ItPl_Weed.3ds";
	material = MAT_LEATHER;
	scemeName = "FOOD";
	description = name;
	text[5] = NAME_005KG;
	count[5] = Value_Weed;
};

instance ItPl_Beet(C_Item)
{
	name = "Turnip";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Beet;
	visual = "ItPl_Beet.3ds";
	material = MAT_LEATHER;
	on_state[0] = Use_Beet;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_BONUS_HANGR_10;
	text[2] = NAME_BONUS_HPED_5;
	text[5] = NAME_04KG;
	count[5] = Value_Beet;
};


func void Use_Beet()
{
	if(Npc_IsPlayer(self))
	{
		STAT_HANGR -= 10;
	};
	Npc_ChangeAttribute(self,ATR_HITPOINTS,5);
};


instance ItPl_SwampHerb(C_Item)
{
	name = "Swampweed";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_SwampHerb;
	visual = "ItPl_SwampHerb.3ds";
	material = MAT_LEATHER;
	on_state[0] = Use_SwampHerb;
	scemeName = "FOOD";
	description = name;
	text[5] = NAME_005KG;
	count[5] = Value_SwampHerb;
};


func void Use_SwampHerb()
{
	if(Npc_IsPlayer(self))
	{
		Wld_PlayEffect("SLOW_TIME",self,self,0,0,0,FALSE);
	};
};


instance ItPl_Mana_Herb_01(C_Item)
{
	name = "Fire nettle";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Mana_Herb_01;
	visual = "ItPl_Mana_Herb_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_itpl_mana_herb_01;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_BONUS_HANGR_05;
	text[2] = NAME_BONUS_MPED_2;
	text[3] = "Alchemical ingredient";
	text[5] = NAME_005KG;
	count[5] = Value_Mana_Herb_01;
};


func void use_itpl_mana_herb_01()
{
	if(Npc_IsPlayer(self))
	{
		STAT_HANGR -= 5;
	};
	Npc_ChangeAttribute(self,ATR_MANA,2);
};


instance ItPl_Mana_Herb_02(C_Item)
{
	name = "Fireweed";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Mana_Herb_02;
	visual = "ItPl_Mana_Herb_02.3ds";
	material = MAT_LEATHER;
	on_state[0] = use_itpl_mana_herb_02;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_BONUS_HANGR_05;
	text[2] = NAME_BONUS_MPED_5;
	text[3] = "Alchemical ingredient";
	text[5] = NAME_005KG;
	count[5] = Value_Mana_Herb_02;
};


func void use_itpl_mana_herb_02()
{
	if(Npc_IsPlayer(self))
	{
		STAT_HANGR -= 5;
	};
	Npc_ChangeAttribute(self,ATR_MANA,5);
};


instance ItPl_Mana_Herb_03(C_Item)
{
	name = "Fire root";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Mana_Herb_03;
	visual = "ItPl_Mana_Herb_03.3ds";
	material = MAT_LEATHER;
	on_state[0] = use_itpl_mana_herb_03;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_BONUS_HANGR_05;
	text[2] = NAME_BONUS_MPED_10;
	text[3] = "Alchemical ingredient";
	text[5] = NAME_005KG;
	count[5] = Value_Mana_Herb_03;
};


func void use_itpl_mana_herb_03()
{
	if(Npc_IsPlayer(self))
	{
		STAT_HANGR -= 5;
	};
	Npc_ChangeAttribute(self,ATR_MANA,10);
};


instance ItPl_Health_Herb_01(C_Item)
{
	name = "Healing plant";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Health_Herb_01;
	visual = "ItPl_Health_Herb_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_itpl_health_herb_01;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_BONUS_HANGR_05;
	text[2] = NAME_BONUS_HPED_5;
	text[3] = "Alchemical ingredient";
	text[5] = NAME_005KG;
	count[5] = Value_Health_Herb_01;
};


func void use_itpl_health_herb_01()
{
	if(Npc_IsPlayer(self))
	{
		STAT_HANGR -= 5;
	};
	Npc_ChangeAttribute(self,ATR_HITPOINTS,5);
};


instance ItPl_Health_Herb_02(C_Item)
{
	name = "Healing herb";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Health_Herb_02;
	visual = "ItPl_Health_Herb_02.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_itpl_health_herb_02;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_BONUS_HANGR_05;
	text[2] = NAME_BONUS_HPED_10;
	text[3] = "Alchemical ingredient";
	text[5] = NAME_005KG;
	count[5] = Value_Health_Herb_02;
};


func void use_itpl_health_herb_02()
{
	if(Npc_IsPlayer(self))
	{
		STAT_HANGR -= 5;
	};
	Npc_ChangeAttribute(self,ATR_HITPOINTS,10);
};


instance ItPl_Health_Herb_03(C_Item)
{
	name = "Healing root";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Health_Herb_03;
	visual = "ItPl_Health_Herb_03.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_itpl_health_herb_03;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_BONUS_HANGR_05;
	text[2] = NAME_BONUS_HPED_15;
	text[3] = "Alchemical ingredient";
	text[5] = NAME_005KG;
	count[5] = Value_Health_Herb_03;
};


func void use_itpl_health_herb_03()
{
	if(Npc_IsPlayer(self))
	{
		STAT_HANGR -= 5;
	};
	Npc_ChangeAttribute(self,ATR_HITPOINTS,15);
};


instance ItPl_Dex_Herb_01(C_Item)
{
	name = "Goblin berries";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Dex_Herb_01;
	visual = "ItPl_Dex_Herb_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = Use_Dex_Herb_01;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_Bonus_Dex;
	count[1] = 1;
	text[5] = NAME_005KG;
	count[5] = Value_Dex_Herb_01;
};


func void Use_Dex_Herb_01()
{
	B_RaiseAttribute(self,ATR_DEXTERITY,1);
};


instance ItPl_Strength_Herb_01(C_Item)
{
	name = "Dragonroot";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Strength_Herb_01;
	visual = "ItPl_Strength_Herb_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = Use_Strength_Herb_01;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_Bonus_Str;
	count[1] = 1;
	text[5] = NAME_01KG;
	count[5] = Value_Strength_Herb_01;
};


func void Use_Strength_Herb_01()
{
	B_RaiseAttribute(self,ATR_STRENGTH,1);
};


instance ItPl_Speed_Herb_01(C_Item)
{
	name = "Snapperweed";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Speed_Herb_01;
	visual = "ItPl_Speed_Herb_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = Use_Speed_Herb_01;
	scemeName = "FOOD";
	description = name;
	text[1] = "Temporarily increases the speed";
	text[3] = NAME_Sec_Duration;
	count[3] = Speed_Boost / 1000;
	text[5] = NAME_005KG;
	count[5] = Value_Speed_Herb_01;
};


func void Use_Speed_Herb_01()
{
	if((Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero)) && (REAL_WGHT < MAXM_WGHT))
	{
		Mdl_ApplyOverlayMdsTimed(self,"HUMANS_SPRINT.MDS",Speed_Boost);
	};
};


instance ItPl_Mushroom_01(C_Item)
{
	name = "Dark mushroom";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Mushroom_01;
	visual = "ItPl_Mushroom_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = Use_Mushroom_01;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_BONUS_HANGR_05;
	text[2] = NAME_BONUS_MPED_3;
	text[3] = "Alchemical ingredient";
	text[5] = NAME_01KG;
	count[5] = Value_Mushroom_01;
};


func void Use_Mushroom_01()
{
	if(Npc_IsPlayer(self))
	{
		STAT_HANGR -= 5;
	};
	Npc_ChangeAttribute(self,ATR_MANA,3);
};


instance ItPl_Mushroom_02(C_Item)
{
	name = "Digger's meat";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Mushroom_02;
	visual = "ItPl_Mushroom_02.3DS";
	material = MAT_LEATHER;
	on_state[0] = Use_Mushroom_02;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_BONUS_HANGR_10;
	text[2] = NAME_BONUS_HPED_7;
	text[5] = NAME_04KG;
	count[5] = Value_Mushroom_02;
};


func void Use_Mushroom_02()
{
	if(Npc_IsPlayer(self))
	{
		STAT_HANGR -= 10;
	};
	Npc_ChangeAttribute(self,ATR_HITPOINTS,7);
};


instance ItPl_Blueplant(C_Item)
{
	name = "Blue elder";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Blueplant;
	visual = "ItPl_Blueplant.3DS";
	material = MAT_LEATHER;
	on_state[0] = Use_Blueplant;
	scemeName = "FOOD";
	description = name;
	text[1] = NAME_BONUS_HANGR_05;
	text[2] = NAME_BONUS_HPED_5;
	text[3] = NAME_BONUS_MPED_5;
	text[5] = NAME_01KG;
	count[5] = Value_Blueplant;
};


func void Use_Blueplant()
{
	if(Npc_IsPlayer(self))
	{
		STAT_HANGR -= 5;
	};
	Npc_ChangeAttribute(self,ATR_MANA,Mana_Blueplant);
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Blueplant);
};


instance ItPl_Forestberry(C_Item)
{
	name = "Woodland berry";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Forestberry;
	visual = "ItPl_Forestberry.3DS";
	material = MAT_LEATHER;
	scemeName = "FOOD";
	on_state[0] = Use_Forestberry;
	description = name;
	text[1] = NAME_BONUS_HANGR_02;
	text[2] = NAME_BONUS_HPED_5;
	text[5] = NAME_005KG;
	count[5] = Value_Forestberry;
};


func void Use_Forestberry()
{
	if(Npc_IsPlayer(self))
	{
		STAT_HANGR -= 2;
	};
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Forestberry);
};


instance ItPl_Planeberry(C_Item)
{
	name = "Meadow berry";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Planeberry;
	visual = "ItPl_Planeberry.3DS";
	material = MAT_LEATHER;
	scemeName = "FOOD";
	on_state[0] = Use_Planeberry;
	description = name;
	text[1] = NAME_BONUS_HANGR_02;
	text[2] = NAME_BONUS_HPED_5;
	text[5] = NAME_005KG;
	count[5] = Value_Planeberry;
};


func void Use_Planeberry()
{
	if(Npc_IsPlayer(self))
	{
		STAT_HANGR -= 2;
	};
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Planeberry);
};


instance ItPl_Temp_Herb(C_Item)
{
	name = "Meadow knotweed";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI | ITEM_MISSION;
	value = Value_Temp_Herb;
	visual = "ItPl_Temp_Herb.3ds";
	material = MAT_LEATHER;
	scemeName = "FOOD";
	on_state[0] = Use_Temp_Herb;
	description = name;
	text[1] = NAME_BONUS_HANGR_05;
	text[2] = NAME_BONUS_HPED_5;
	text[3] = "Alchemical ingredient";
	text[5] = NAME_01KG;
	count[5] = Value_Temp_Herb;
};


func void Use_Temp_Herb()
{
	if(Npc_IsPlayer(self))
	{
		STAT_HANGR -= 5;
	};
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Temp_Herb);
};


instance ITPL_GRAVEMOSS(C_Item)
{
	name = "Grave moss";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = VALUE_GRAVEMOSS;
	visual = "ItPl_GraveMoss.3DS";
	material = MAT_LEATHER;
	scemeName = "FOOD";
	description = name;
	text[3] = "Alchemical ingredient";
	text[5] = NAME_005KG;
	count[5] = VALUE_GRAVEMOSS;
};

instance ItPl_Perm_Herb(C_Item)
{
	name = "King's sorrel";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI | ITEM_MISSION;
	value = Value_Perm_Herb;
	visual = "ItPl_Perm_Herb.3ds";
	material = MAT_LEATHER;
	scemeName = "FOOD";
	on_state[0] = Use_Perm_Herb;
	description = name;
	text[2] = NAME_BONUS_HM;
	text[3] = NAME_INFO_KG;
	text[5] = NAME_005KG;
	count[5] = Value_Perm_Herb;
};


func void Use_Perm_Herb()
{
	var int hpres;
	var int manares;
	hpres = 0 + ((self.attribute[ATR_HITPOINTS_MAX] * 100) / 100);
	Npc_ChangeAttribute(self,ATR_HITPOINTS,hpres);
	if(self.attribute[ATR_HITPOINTS] > self.attribute[ATR_HITPOINTS_MAX])
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];
	};
	manares = 0 + ((self.attribute[ATR_MANA_MAX] * 100) / 100);
	Npc_ChangeAttribute(self,ATR_MANA,manares);
	if(self.attribute[ATR_MANA] > self.attribute[ATR_MANA_MAX])
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA_MAX];
	};
	if(Npc_IsPlayer(self))
	{
		STAT_EXHST = 0;
		STAT_FTQUE = 0;
	};
};

