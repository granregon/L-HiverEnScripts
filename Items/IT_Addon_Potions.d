
instance ItPo_Addon_Geist_01(C_Item)
{
	name = "Potion of mental alteration";
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = 300;
	visual = "ItPo_Perm_STR.3ds";
	material = MAT_GLAS;
	on_state[0] = UseItPo_Geist_01;
	scemeName = "POTIONFAST";
	description = name;
	text[2] = "Take PRECAUTIONS before using!";
	text[3] = "Can strongly influence the mind";
	text[4] = "or kill the one who drinks it";
	text[5] = NAME_065KG;
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
	value = 300;
	visual = "ItPo_Perm_STR.3ds";
	material = MAT_GLAS;
	on_state[0] = UseItPo_Geist_02;
	scemeName = "POTIONFAST";
	description = name;
	text[2] = "Take PRECAUTIONS before using!";
	text[3] = "Can strongly influence the mind";
	text[4] = "or kill the one who drinks it";
	text[5] = NAME_065KG;
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
	text[5] = NAME_085KG;
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
	text[5] = NAME_085KG;
	count[5] = Value_ManaTrunk;
};


func void UseItPo_Mana_04()
{
	self.attribute[ATR_MANA] = self.attribute[ATR_MANA_MAX];
};


instance ITPO_EXHAUS_01(C_Item)
{
	name = "Essence of spirit recovery";
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = 150;
	visual = "ItPo_Exhaus_01.3ds";
	material = MAT_GLAS;
	on_state[0] = useitpo_exhaus_01;
	scemeName = "POTION";
	description = name;
	text[1] = NAME_MAGIC_EXHAUSPO_DESC;
	text[2] = NAME_MAGIC_EXHAUSPO_01;
	text[5] = NAME_025KG;
	count[5] = value;
};


func void useitpo_exhaus_01()
{
	if(EXHAUSBLOCK >= 1)
	{
		PrintScreen(PRINT_ACTBONUS3,-1,50,FONT_ScreenSmall,3);
		PrintScreen(PRINT_ACTBONUS4,-1,53,FONT_SCREENBRIGHTLARGE,3);
		Npc_ChangeAttribute(hero,ATR_HITPOINTS_MAX,-1);
		Npc_ChangeAttribute(hero,ATR_HITPOINTS,-1);
		EXHAUSBLOCK += 1;
		Snd_Play("SVM_2_AARGH");
		AI_PlayAni(hero,"T_BASH");
	}
	else
	{
		STAT_EXHST -= 250;
		EXHAUSBLOCK += 3;
	};
};


instance ITPO_EXHAUS_02(C_Item)
{
	name = "Extract of spirit recovery";
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = 300;
	visual = "ItPo_Exhaus_02.3ds";
	material = MAT_GLAS;
	on_state[0] = useitpo_exhaus_02;
	scemeName = "POTION";
	description = name;
	text[1] = NAME_MAGIC_EXHAUSPO_DESC;
	text[2] = NAME_MAGIC_EXHAUSPO_02;
	text[5] = NAME_05KG;
	count[5] = value;
};


func void useitpo_exhaus_02()
{
	if(EXHAUSBLOCK >= 1)
	{
		PrintScreen(PRINT_ACTBONUS3,-1,50,FONT_ScreenSmall,3);
		PrintScreen(PRINT_ACTBONUS4,-1,53,FONT_SCREENBRIGHTLARGE,3);
		Npc_ChangeAttribute(hero,ATR_HITPOINTS_MAX,-1);
		Npc_ChangeAttribute(hero,ATR_HITPOINTS,-1);
		EXHAUSBLOCK += 1;
		Snd_Play("SVM_2_AARGH");
		AI_PlayAni(hero,"T_BASH");
	}
	else
	{
		STAT_EXHST -= 500;
		EXHAUSBLOCK += 3;
	};
};


instance ITPO_EXHAUS_03(C_Item)
{
	name = "Elixir of spirit recovery";
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = 450;
	visual = "ItPo_Exhaus_03.3ds";
	material = MAT_GLAS;
	on_state[0] = useitpo_exhaus_03;
	scemeName = "POTION";
	description = name;
	text[1] = NAME_MAGIC_EXHAUSPO_DESC;
	text[2] = NAME_MAGIC_EXHAUSPO_03;
	text[5] = NAME_075KG;
	count[5] = value;
};


func void useitpo_exhaus_03()
{
	if(EXHAUSBLOCK >= 1)
	{
		PrintScreen(PRINT_ACTBONUS3,-1,50,FONT_ScreenSmall,3);
		PrintScreen(PRINT_ACTBONUS4,-1,53,FONT_SCREENBRIGHTLARGE,3);
		Npc_ChangeAttribute(hero,ATR_HITPOINTS_MAX,-1);
		Npc_ChangeAttribute(hero,ATR_HITPOINTS,-1);
		EXHAUSBLOCK += 1;
		Snd_Play("SVM_2_AARGH");
		AI_PlayAni(hero,"T_BASH");
	}
	else
	{
		STAT_EXHST -= 750;
		EXHAUSBLOCK += 3;
	};
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
	text[5] = NAME_085KG;
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
	text[5] = NAME_085KG;
	count[5] = Value_ManaExtrakt;
};


func void useitpo_const_mana_01()
{
	if((Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero)) && (CONSTANTINO_MANA == FALSE))
	{
		CONSTANTINO_MANA = TRUE;
	};
};

