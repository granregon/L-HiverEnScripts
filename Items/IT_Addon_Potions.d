
instance ItPo_Addon_Geist_01(C_Item)
{
	name = "Potion of mental alteration";
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = VALUE_ALTERATION;
	visual = "ItPo_Perm_STR.3ds";
	material = MAT_GLAS;
	on_state[0] = UseItPo_Geist_01;
	scemeName = "POTIONFAST";
	description = name;
	text[2] = "Take PRECAUTIONS before using!";
	text[3] = "Can strongly influence the mind";
	text[4] = "or kill the one who drinks it";
	text[5] = NAME_Value;
	count[5] = value;
};


func void UseItPo_Geist_01()
{
	self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] - 1000;
};


instance ItPo_Addon_Geist_02(C_Item)
{
	name = "Potion of mental alteration";
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = VALUE_ALTERATION;
	visual = "ItPo_Perm_STR.3ds";
	material = MAT_GLAS;
	on_state[0] = UseItPo_Geist_02;
	scemeName = "POTIONFAST";
	description = name;
	text[2] = "Take PRECAUTIONS before using!";
	text[3] = "Can strongly influence the mind";
	text[4] = "or kill the one who drinks it";
	text[5] = NAME_Value;
	count[5] = value;
};


func void UseItPo_Geist_02()
{
	if(Npc_IsPlayer(self))
	{
		B_GivePlayerXP(XP_Ambient * 5);
	};
};


instance ItPo_Health_Addon_04(C_Item)
{
	name = "Pure life potion";
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = Value_HpTrunk;
	visual = "ItPo_Health_03.3ds";
	material = MAT_GLAS;
	on_state[0] = UseItPo_Health_04;
	scemeName = "POTIONFAST";
	description = name;
	text[2] = "Complete health regeneration.";
	text[5] = NAME_Value;
	count[5] = Value_HpTrunk;
};


func void UseItPo_Health_04()
{
	self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];
};


instance ItPo_Mana_Addon_04(C_Item)
{
	name = "Pure mana potion";
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = Value_ManaTrunk;
	visual = "ItPo_Mana_03.3ds";
	material = MAT_GLAS;
	on_state[0] = UseItPo_Mana_04;
	scemeName = "POTIONFAST";
	description = name;
	text[2] = "Complete mana regeneration";
	text[5] = NAME_Value;
	count[5] = Value_ManaTrunk;
};


func void UseItPo_Mana_04()
{
	self.attribute[ATR_MANA] = self.attribute[ATR_MANA_MAX];
};


instance ITPO_CONST_HEAL_01(C_Item)
{
	name = "Healing potions enhancer";
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = Value_ManaExtrakt;
	visual = "ItPo_Const_Heal_01.3ds";
	material = MAT_GLAS;
	on_state[0] = useitpo_const_heal_01;
	scemeName = "POTIONFAST";
	description = name;
	text[2] = "Enhances the effect of healing potions.";
	text[3] = "                  Disposable.";
	text[5] = NAME_Value;
	count[5] = Value_ManaExtrakt;
};


func void useitpo_const_heal_01()
{
	if((Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero)) && (CONSTANTINO_HEAL == FALSE))
	{
		CONSTANTINO_HEAL = TRUE;
	};
};


instance ITPO_CONST_MANA_01(C_Item)
{
	name = "Mana potions enhancer";
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = Value_ManaExtrakt;
	visual = "ItPo_Const_Mana_01.3ds";
	material = MAT_GLAS;
	on_state[0] = useitpo_const_mana_01;
	scemeName = "POTIONFAST";
	description = name;
	text[2] = "Enhances the effect of mana potions.";
	text[3] = "               Disposable.";
	text[5] = NAME_Value;
	count[5] = Value_ManaExtrakt;
};


func void useitpo_const_mana_01()
{
	if((Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero)) && (CONSTANTINO_MANA == FALSE))
	{
		CONSTANTINO_MANA = TRUE;
	};
};

