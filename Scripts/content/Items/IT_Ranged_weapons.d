
instance ItRw_Arrow(C_Item)
{
	name = "Arrow";
	mainflag = ITEM_KAT_MUN;
	flags = ITEM_BOW | ITEM_MULTI;
	value = Value_Pfeil;
	visual = "ItRw_Arrow.3ds";
	material = MAT_WOOD;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItRw_Bolt(C_Item)
{
	name = "Bolt";
	mainflag = ITEM_KAT_MUN;
	flags = ITEM_CROSSBOW | ITEM_MULTI;
	value = Value_Bolzen;
	visual = "ItRw_Bolt.3ds";
	material = MAT_WOOD;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItRw_Mil_Crossbow(C_Item)
{
	name = "Militia crossbow";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_CROSSBOW;
	material = MAT_WOOD;
	value = Value_MilArmbrust;
	damageTotal = Damage_MilArmbrust;
	damagetype = DAM_POINT;
	munition = ItRw_Bolt;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = Condition_MilArmbrust;
	visual = "ItRw_Mil_Crossbow.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[5] = NAME_1P5KG;
	count[5] = value;
};

instance ItRw_Sld_Bow(C_Item)
{
	name = "Bow";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = Value_SldBogen;
	damageTotal = Damage_SldBogen;
	damagetype = DAM_POINT;
	munition = ItRw_Arrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = Condition_SldBogen;
	visual = "ItRw_Sld_Bow.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_2KG;
	count[5] = value;
};

instance ItRw_Bow_L_01(C_Item)
{
	name = "Short bow";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = Value_Kurzbogen;
	damageTotal = Damage_Kurzbogen;
	damagetype = DAM_POINT;
	munition = ItRw_Arrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = Condition_Kurzbogen;
	visual = "ItRw_Bow_L_01.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_1KG;
	count[5] = value;
};

instance ItRw_Bow_L_02(C_Item)
{
	name = "Willow bow";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = Value_Weidenbogen;
	damageTotal = Damage_Weidenbogen;
	damagetype = DAM_POINT;
	munition = ItRw_Arrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = Condition_Weidenbogen;
	visual = "ItRw_Bow_L_02.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_2KG;
	count[5] = value;
};

instance ItRw_Bow_L_03(C_Item)
{
	name = "Hunting bow";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = Value_Jagdbogen;
	damageTotal = Damage_Jagdbogen;
	damagetype = DAM_POINT;
	munition = ItRw_Arrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = Condition_Jagdbogen;
	visual = "ItRw_Bow_M_01.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_2KG;
	count[5] = value;
};

instance ItRw_Bow_L_04(C_Item)
{
	name = "Elm bow";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = Value_Ulmenbogen;
	damageTotal = Damage_Ulmenbogen;
	damagetype = DAM_POINT;
	munition = ItRw_Arrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = Condition_Ulmenbogen;
	visual = "ItRw_Bow_M_02.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_2KG;
	count[5] = value;
};

instance ItRw_Bow_M_01(C_Item)
{
	name = "Composite bow";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = Value_Kompositbogen;
	damageTotal = Damage_Kompositbogen;
	damagetype = DAM_POINT;
	munition = ItRw_Arrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = Condition_Kompositbogen;
	visual = "ItRw_Bow_M_01.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_2KG;
	count[5] = value;
};

instance ItRw_Bow_M_02(C_Item)
{
	name = "Ash bow";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = Value_Eschenbogen;
	damageTotal = Damage_Eschenbogen;
	damagetype = DAM_POINT;
	munition = ItRw_Arrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = Condition_Eschenbogen;
	visual = "ItRw_Bow_M_02.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_2KG;
	count[5] = value;
};

instance ItRw_Bow_M_03(C_Item)
{
	name = "Longbow";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = Value_Langbogen;
	damageTotal = Damage_Langbogen;
	damagetype = DAM_POINT;
	munition = ItRw_Arrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = Condition_Langbogen;
	visual = "ItRw_Bow_M_03.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_2KG;
	count[5] = value;
};

instance ItRw_Bow_M_04(C_Item)
{
	name = "Beech bow";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = Value_Buchenbogen;
	damageTotal = Damage_Buchenbogen;
	damagetype = DAM_POINT;
	munition = ItRw_Arrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = Condition_Buchenbogen;
	visual = "ItRw_Bow_M_04.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_2KG;
	count[5] = value;
};

instance ItRw_Bow_H_01(C_Item)
{
	name = "Bone bow";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = Value_Knochenbogen;
	damageTotal = Damage_Knochenbogen;
	damagetype = DAM_POINT;
	munition = ItRw_Arrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = Condition_Knochenbogen;
	visual = "ItRw_Bow_H_01.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_2KG;
	count[5] = value;
};

instance ItRw_Bow_H_02(C_Item)
{
	name = "Oak bow";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = Value_Eichenbogen;
	damageTotal = Damage_Eichenbogen;
	damagetype = DAM_POINT;
	munition = ItRw_Arrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = Condition_Eichenbogen;
	visual = "ItRw_Bow_H_02.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_2KG;
	count[5] = value;
};

instance ItRw_Bow_H_03(C_Item)
{
	name = "War bow";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = Value_Kriegsbogen;
	damageTotal = Damage_Kriegsbogen;
	damagetype = DAM_POINT;
	munition = ItRw_Arrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = Condition_Kriegsbogen;
	visual = "ItRw_Bow_H_03.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_2KG;
	count[5] = value;
};

instance ItRw_Bow_H_04(C_Item)
{
	name = "Dragon bow";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = Value_Drachenbogen;
	damageTotal = Damage_Drachenbogen;
	damagetype = DAM_POINT;
	munition = ItRw_Arrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = Condition_Drachenbogen;
	visual = "ItRw_Bow_H_04.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_2KG;
	count[5] = value;
};

instance ITRW_BOW_D_R2(C_Item)
{
	name = "Fine longbow";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = VALUE_BOWDR2;
	damageTotal = DAMAGE_BOWDR2;
	damagetype = DAM_POINT;
	munition = ItRw_Arrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = CONDITION_BOWDR2;
	visual = "Itrw_Bow_D_R2.mms";
	on_equip = rw_plus_equip_10;
	on_unequip = rw_plus_unequip_10;
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[4] = NAME_ADDON_BONUS_BOWS;
	count[4] = 10;
	text[5] = NAME_1P7KG;
	count[5] = value;
};

instance ITRW_BOW_LONG_ARABIC(C_Item)
{
	name = "Assassin's bow";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = VALUE_BOWLONGARABIC;
	damageTotal = DAMAGE_BOWLONGARABIC;
	damagetype = DAM_POINT;
	munition = ItRw_Arrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = CONDITION_BOWLONGARABIC;
	visual = "ItRw_Bow_Long_Arabic.mms";
	on_equip = rw_plus_equip_07;
	on_unequip = rw_plus_unequip_07;
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[4] = NAME_ADDON_BONUS_BOWS;
	count[4] = 7;
	text[5] = NAME_1P9KG;
	count[5] = value;
};

instance ITRW_BOW_R2_SLD(C_Item)
{
	name = "Combat bow";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = VALUE_BOWR2SLD;
	damageTotal = DAMAGE_BOWR2SLD;
	damagetype = DAM_POINT;
	munition = ItRw_Arrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = CONDITION_BOWR2SLD;
	visual = "ItRw_Bow_R2_Sld.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[5] = NAME_3KG;
	count[5] = value;
};

instance ITRW_G4_OAK_BOW_01(C_Item)
{
	name = "Fine oak bow";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = VALUE_G4OAKBOW;
	damageTotal = DAMAGE_G4OAKBOW;
	damagetype = DAM_POINT;
	munition = ItRw_Arrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = CONDITION_G4OAKBOW;
	visual = "ItRw_G4_Oak_Bow_01.mms";
	on_equip = rw_plus_equip_05;
	on_unequip = rw_plus_unequip_05;
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[4] = NAME_ADDON_BONUS_BOWS;
	count[4] = 5;
	text[5] = NAME_2P8KG;
	count[5] = value;
};

instance ITRW_BOW_R2_COBRA(C_Item)
{
	name = "Heavy steel bow";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = VALUE_BOWR2COBRA;
	damageTotal = DAMAGE_BOWR2COBRA;
	damagetype = DAM_POINT;
	munition = ItRw_Arrow;
	cond_atr[1] = ATR_STRENGTH;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[1] = Condition_Bau2hAxt;
	cond_value[2] = CONDITION_BOWR2COBRA;
	visual = "ItRw_Bow_R2_Cobra.mms";
	on_equip = rw_minus_equip_05;
	on_unequip = rw_minus_unequip_05;
	description = name;
	text[0] = NAME_GREATBOWBONUS;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = "Dexterity required 150 - Strength required 50";
	text[4] = NAME_ADDON_MALUS_BOWS;
	count[4] = 5;
	text[5] = NAME_8P5KG;
	count[5] = value;
};

instance ITRW_WOLF(C_Item)
{
	name = "Wolf's bow";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = 110;
	damageTotal = 110;
	damagetype = DAM_POINT;
	munition = ItRw_Arrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = 110;
	visual = "ITRW_BOW_A_WOLFRIPPER.mms";
	on_equip = rw_minus_equip_10;
	on_unequip = rw_minus_unequip_10;
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[4] = NAME_ADDON_MALUS_BOWS;
	count[4] = 10;
	text[5] = NAME_2P2KG;
	count[5] = value;
};

instance ItRw_Crossbow_L_01(C_Item)
{
	name = "Hunter's crossbow";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_CROSSBOW;
	material = MAT_WOOD;
	value = Value_Jagdarmbrust;
	damageTotal = Damage_Jagdarmbrust;
	damagetype = DAM_POINT;
	munition = ItRw_Bolt;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = Condition_Jagdarmbrust;
	visual = "ItRw_Crossbow_L_01.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[5] = NAME_1P5KG;
	count[5] = value;
};

instance ItRw_Crossbow_L_02(C_Item)
{
	name = "Light crossbow";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_CROSSBOW;
	material = MAT_WOOD;
	value = Value_LeichteArmbrust;
	damageTotal = Damage_LeichteArmbrust;
	damagetype = DAM_POINT;
	munition = ItRw_Bolt;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = Condition_LeichteArmbrust;
	visual = "ItRw_Crossbow_L_02.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[5] = NAME_1P5KG;
	count[5] = value;
};

instance ItRw_Crossbow_M_01(C_Item)
{
	name = "Crossbow";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_CROSSBOW;
	material = MAT_WOOD;
	value = Value_Armbrust;
	damageTotal = Damage_Armbrust;
	damagetype = DAM_POINT;
	munition = ItRw_Bolt;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = Condition_Armbrust;
	visual = "ItRw_Crossbow_M_01.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[5] = NAME_2KG;
	count[5] = value;
};

instance ItRw_Crossbow_M_02(C_Item)
{
	name = "War crossbow";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_CROSSBOW;
	material = MAT_WOOD;
	value = Value_Kriegsarmbrust;
	damageTotal = Damage_Kriegsarmbrust;
	damagetype = DAM_POINT;
	munition = ItRw_Bolt;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = Condition_Kriegsarmbrust;
	visual = "ItRw_Crossbow_M_02.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[5] = NAME_2KG;
	count[5] = value;
};

instance ItRw_Crossbow_H_01(C_Item)
{
	name = "Heavy crossbow";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_CROSSBOW;
	material = MAT_WOOD;
	value = Value_SchwereArmbrust;
	damageTotal = Damage_SchwereArmbrust;
	damagetype = DAM_POINT;
	munition = ItRw_Bolt;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = Condition_SchwereArmbrust;
	visual = "ItRw_Crossbow_H_01.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[5] = NAME_3KG;
	count[5] = value;
};

instance ItRw_Crossbow_H_02(C_Item)
{
	name = "Dragon hunter's crossbow";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_CROSSBOW;
	material = MAT_WOOD;
	value = Value_Drachenjaegerarmbrust;
	damageTotal = Damage_Drachenjaegerarmbrust;
	damagetype = DAM_POINT;
	munition = ItRw_Bolt;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = Condition_Drachenjaegerarmbrust;
	visual = "ItRw_Crossbow_H_02.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[5] = NAME_3KG;
	count[5] = value;
};

