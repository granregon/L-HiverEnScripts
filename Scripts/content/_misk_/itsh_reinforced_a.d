
instance ITSH_REINFORCED_A(C_Item)
{
	name = "Shield";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 300;
	protection[PROT_EDGE] = 25;
	protection[PROT_BLUNT] = 15;
	protection[PROT_POINT] = 35;
	protection[PROT_FIRE] = 5;
	protection[PROT_MAGIC] = 0;
	visual = "ItSh_Reinforced_A.3ds";
	material = MAT_WOOD;
	on_equip = equip_reinforced_a;
	on_unequip = unequip_reinforced_a;
	cond_atr[1] = ATR_STRENGTH;
	cond_value[1] = 30;
	description = name;
	text[0] = "Protection: B.+25 / B.+15 / P.+35 / Df.+5 / M.+0";
	text[1] = NAME_Str_needed;
	count[1] = cond_value[1];
	text[2] = NAME_ADDON_MALUS_1H;
	count[2] = 5;
	text[3] = NAME_Bonus_HpMax;
	count[3] = 30;
	text[4] = NAME_SH_B_CHANCE_25;
	count[5] = value;
	text[5] = NAME_2P5KG;
};


func void equip_reinforced_a()
{
	b_sh_equip(self);
	b_shfs_equip_5();
	b_sh_hpraise(self,30);
	b_sworddef(self,25);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_25 = TRUE;
	};
};

func void unequip_reinforced_a()
{
	b_sh_unequip(self);
	b_shfs_unequip_5();
	b_sh_hpraise_unequip(self,30);
	b_sworddef(self,-25);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_25 = FALSE;
	};
};


instance ITSH_W2_E4(C_Item)
{
	name = "Battle shield";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 600;
	protection[PROT_EDGE] = 35;
	protection[PROT_BLUNT] = 25;
	protection[PROT_POINT] = 45;
	protection[PROT_FIRE] = 10;
	protection[PROT_MAGIC] = 5;
	visual = "ItSh_W2_E4.3ds";
	material = MAT_WOOD;
	on_equip = equip_w2_e4;
	on_unequip = unequip_w2_e4;
	cond_atr[1] = ATR_STRENGTH;
	cond_value[1] = 60;
	description = name;
	text[0] = "Protection: B.+35 / B.+25 / P.+45 / Df.+10 / M.+5";
	text[1] = NAME_Str_needed;
	count[1] = cond_value[1];
	text[2] = NAME_ADDON_MALUS_1H;
	count[2] = 7;
	text[3] = NAME_Bonus_HpMax;
	count[3] = 60;
	text[4] = NAME_SH_B_CHANCE_35;
	count[5] = value;
	text[5] = NAME_3P5KG;
};


func void equip_w2_e4()
{
	b_sh_equip(self);
	b_shfs_equip_7();
	b_sh_hpraise(self,60);
	b_sworddef(self,35);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_35 = TRUE;
	};
};

func void unequip_w2_e4()
{
	b_sh_unequip(self);
	b_shfs_unequip_7();
	b_sh_hpraise_unequip(self,60);
	b_sworddef(self,-35);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_35 = FALSE;
	};
};


instance ITSH_W2_EXECUTIONER(C_Item)
{
	name = "Heavy steel shield";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 900;
	protection[PROT_EDGE] = 45;
	protection[PROT_BLUNT] = 35;
	protection[PROT_POINT] = 55;
	protection[PROT_FIRE] = 20;
	protection[PROT_MAGIC] = 10;
	visual = "ItSh_W2_Executioner.3ds";
	material = MAT_WOOD;
	on_equip = equip_w2_executioner;
	on_unequip = unequip_w2_executioner;
	cond_atr[1] = ATR_STRENGTH;
	cond_value[1] = 90;
	description = name;
	text[0] = "Protection: B.+45 / B.+35 / P.+55 / Df.+20 / M.+10";
	text[1] = NAME_Str_needed;
	count[1] = cond_value[1];
	text[2] = NAME_ADDON_MALUS_1H;
	count[2] = 10;
	text[3] = NAME_Bonus_HpMax;
	count[3] = 90;
	text[4] = NAME_SH_B_CHANCE_55;
	count[5] = value;
	text[5] = NAME_5P9KG;
};


func void equip_w2_executioner()
{
	b_sh_equip(self);
	b_shfs_equip_10();
	b_sh_hpraise(self,90);
	b_sworddef(self,45);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_55 = TRUE;
	};
};

func void unequip_w2_executioner()
{
	b_sh_unequip(self);
	b_shfs_unequip_10();
	b_sh_hpraise_unequip(self,90);
	b_sworddef(self,-45);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_55 = FALSE;
	};
};


instance ITSH_TWR_WOOD_SM(C_Item)
{
	name = "Wooden tower shield";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 1200;
	protection[PROT_EDGE] = 55;
	protection[PROT_BLUNT] = 45;
	protection[PROT_POINT] = 75;
	protection[PROT_FIRE] = 30;
	protection[PROT_MAGIC] = 15;
	visual = "ItSh_Twr_Wood_SM.3ds";
	material = MAT_WOOD;
	on_equip = equip_twr_wood_sm;
	on_unequip = unequip_twr_wood_sm;
	cond_atr[1] = ATR_STRENGTH;
	cond_value[1] = 120;
	description = name;
	text[0] = "Protection: B.+55 / B.+45 / P.+75 / Df.+30 / M.+15";
	text[1] = NAME_Str_needed;
	count[1] = cond_value[1];
	text[2] = NAME_ADDON_MALUS_1H;
	count[2] = 12;
	text[3] = NAME_Bonus_HpMax;
	count[3] = 120;
	text[4] = NAME_SH_B_CHANCE_65;
	count[5] = value;
	text[5] = NAME_7P5KG;
};


func void equip_twr_wood_sm()
{
	b_sh_equip(self);
	b_shfs_equip_12();
	b_sh_hpraise(self,120);
	b_sworddef(self,55);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_65 = TRUE;
	};
};

func void unequip_twr_wood_sm()
{
	b_sh_unequip(self);
	b_shfs_unequip_12();
	b_sh_hpraise_unequip(self,120);
	b_sworddef(self,-55);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_65 = FALSE;
	};
};


instance ITSH_TWR_WAR_DA(C_Item)
{
	name = "Steel tower shield";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 1500;
	protection[PROT_EDGE] = 65;
	protection[PROT_BLUNT] = 55;
	protection[PROT_POINT] = 95;
	protection[PROT_FIRE] = 40;
	protection[PROT_MAGIC] = 20;
	visual = "ItSh_Twr_War_DA.3ds";
	material = MAT_WOOD;
	on_equip = equip_twr_war_da;
	on_unequip = unequip_twr_war_da;
	cond_atr[1] = ATR_STRENGTH;
	cond_value[1] = 150;
	description = name;
	text[0] = "Protection: B.+65 / B.+55 / P.+95 / Df.+40 / M.+20";
	text[1] = NAME_Str_needed;
	count[1] = cond_value[1];
	text[2] = NAME_ADDON_MALUS_1H;
	count[2] = 15;
	text[3] = NAME_Bonus_HpMax;
	count[3] = 150;
	text[4] = NAME_SH_B_CHANCE_75;
	count[5] = value;
	text[5] = NAME_11P5KG;
};


func void equip_twr_war_da()
{
	b_sh_equip(self);
	b_shfs_equip_15();
	b_sh_hpraise(self,150);
	b_sworddef(self,65);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_75 = TRUE;
	};
};

func void unequip_twr_war_da()
{
	b_sh_unequip(self);
	b_shfs_unequip_15();
	b_sh_hpraise_unequip(self,150);
	b_sworddef(self,-65);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_75 = FALSE;
	};
};


instance ITSH_WOLF_A(C_Item)
{
	name = "Ore shield";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 350;
	protection[PROT_EDGE] = 30;
	protection[PROT_BLUNT] = 20;
	protection[PROT_POINT] = 40;
	protection[PROT_FIRE] = 0;
	protection[PROT_MAGIC] = 5;
	visual = "ItSh_Wolf_A.3ds";
	material = MAT_WOOD;
	on_equip = equip_wolf_a;
	on_unequip = unequip_wolf_a;
	cond_atr[1] = ATR_STRENGTH;
	cond_value[1] = 35;
	description = name;
	text[0] = "Protection: B.+30 / B.+20 / P.+40 / Df.+0 / M.+5";
	text[1] = NAME_Str_needed;
	count[1] = cond_value[1];
	text[2] = NAME_ADDON_MALUS_1H;
	count[2] = 5;
	text[3] = NAME_Bonus_HpMax;
	count[3] = 40;
	text[4] = NAME_SH_B_CHANCE_25;
	count[5] = value;
	text[5] = NAME_2P5KG;
};


func void equip_wolf_a()
{
	b_sh_equip(self);
	b_shfs_equip_5();
	b_sh_hpraise(self,40);
	b_sworddef(self,30);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_25 = TRUE;
	};
};

func void unequip_wolf_a()
{
	b_sh_unequip(self);
	b_shfs_unequip_5();
	b_sh_hpraise_unequip(self,40);
	b_sworddef(self,-30);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_25 = FALSE;
	};
};


instance ITSH_WHITE_EYE_A(C_Item)
{
	name = "Large ore shield";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 700;
	protection[PROT_EDGE] = 40;
	protection[PROT_BLUNT] = 30;
	protection[PROT_POINT] = 55;
	protection[PROT_FIRE] = 5;
	protection[PROT_MAGIC] = 10;
	visual = "ItSh_White_Eye_A.3ds";
	material = MAT_WOOD;
	on_equip = equip_white_eye_a;
	on_unequip = unequip_white_eye_a;
	cond_atr[1] = ATR_STRENGTH;
	cond_value[1] = 75;
	description = name;
	text[0] = "Protection: B.+40 / B.+30 / P.+55 / Df.+5 / M.+10";
	text[1] = NAME_Str_needed;
	count[1] = cond_value[1];
	text[2] = NAME_ADDON_MALUS_1H;
	count[2] = 7;
	text[3] = NAME_Bonus_HpMax;
	count[3] = 80;
	text[4] = NAME_SH_B_CHANCE_35;
	count[5] = value;
	text[5] = NAME_4KG;
};


func void equip_white_eye_a()
{
	b_sh_equip(self);
	b_shfs_equip_7();
	b_sh_hpraise(self,80);
	b_sworddef(self,40);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_35 = TRUE;
	};
};

func void unequip_white_eye_a()
{
	b_sh_unequip(self);
	b_shfs_unequip_7();
	b_sh_hpraise_unequip(self,80);
	b_sworddef(self,-40);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_35 = FALSE;
	};
};


instance ITSH_LONG_A(C_Item)
{
	name = "Excellent ore shield";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 1050;
	protection[PROT_EDGE] = 50;
	protection[PROT_BLUNT] = 40;
	protection[PROT_POINT] = 60;
	protection[PROT_FIRE] = 10;
	protection[PROT_MAGIC] = 20;
	visual = "ITSH_Long_A.3ds";
	material = MAT_WOOD;
	on_equip = equip_long_a;
	on_unequip = unequip_long_a;
	cond_atr[1] = ATR_STRENGTH;
	cond_value[1] = 115;
	description = name;
	text[0] = "Protection: B.+50 / B.+40 / P.+60 / Df.+10 / M.+20";
	text[1] = NAME_Str_needed;
	count[1] = cond_value[1];
	text[2] = NAME_ADDON_MALUS_1H;
	count[2] = 10;
	text[3] = NAME_Bonus_HpMax;
	count[3] = 120;
	text[4] = NAME_SH_B_CHANCE_55;
	count[5] = value;
	text[5] = NAME_5P5KG;
};


func void equip_long_a()
{
	b_sh_equip(self);
	b_shfs_equip_10();
	b_sh_hpraise(self,120);
	b_sworddef(self,50);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_55 = TRUE;
	};
};

func void unequip_long_a()
{
	b_sh_unequip(self);
	b_shfs_unequip_10();
	b_sh_hpraise_unequip(self,120);
	b_sworddef(self,-50);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_55 = FALSE;
	};
};


instance ITSH_STALHRIM_S_SM(C_Item)
{
	name = "Pure ore shield";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 1400;
	protection[PROT_EDGE] = 60;
	protection[PROT_BLUNT] = 50;
	protection[PROT_POINT] = 75;
	protection[PROT_FIRE] = 15;
	protection[PROT_MAGIC] = 30;
	visual = "ITSH_Stalhrim_S_SM.3ds";
	material = MAT_WOOD;
	on_equip = equip_stalhrim_s_sm;
	on_unequip = unequip_stalhrim_s_sm;
	cond_atr[1] = ATR_STRENGTH;
	cond_value[1] = 145;
	description = name;
	text[0] = "Protection: B.+60 / B.+50 / P.+75 / Df.+15 / M.+30";
	text[1] = NAME_Str_needed;
	count[1] = cond_value[1];
	text[2] = NAME_ADDON_MALUS_1H;
	count[2] = 15;
	text[3] = NAME_Bonus_HpMax;
	count[3] = 160;
	text[4] = NAME_SH_B_CHANCE_65;
	count[5] = value;
	text[5] = NAME_8P5KG;
};


func void equip_stalhrim_s_sm()
{
	b_sh_equip(self);
	b_shfs_equip_15();
	b_sh_hpraise(self,160);
	b_sworddef(self,60);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_65 = TRUE;
	};
};

func void unequip_stalhrim_s_sm()
{
	b_sh_unequip(self);
	b_shfs_unequip_15();
	b_sh_hpraise_unequip(self,160);
	b_sworddef(self,-60);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_65 = FALSE;
	};
};


instance ITSH_STALHRIM_B_SM(C_Item)
{
	name = "Pure ore tower shield";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 1750;
	protection[PROT_EDGE] = 70;
	protection[PROT_BLUNT] = 60;
	protection[PROT_POINT] = 90;
	protection[PROT_FIRE] = 20;
	protection[PROT_MAGIC] = 40;
	visual = "ITSH_Stalhrim_B_SM.3ds";
	material = MAT_WOOD;
	on_equip = equip_stalhrim_b_sm;
	on_unequip = unequip_stalhrim_b_sm;
	cond_atr[1] = ATR_STRENGTH;
	cond_value[1] = 175;
	description = name;
	text[0] = "Protection: B.+70 / B.+60 / P.+90 / Df.+20 / M.+40";
	text[1] = NAME_Str_needed;
	count[1] = cond_value[1];
	text[2] = NAME_ADDON_MALUS_1H;
	count[2] = 17;
	text[3] = NAME_Bonus_HpMax;
	count[3] = 200;
	text[4] = NAME_SH_B_CHANCE_75;
	count[5] = value;
	text[5] = NAME_12P5KG;
};


func void equip_stalhrim_b_sm()
{
	b_sh_equip(self);
	b_shfs_equip_17();
	b_sh_hpraise(self,200);
	b_sworddef(self,70);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_75 = TRUE;
	};
};

func void unequip_stalhrim_b_sm()
{
	b_sh_unequip(self);
	b_shfs_unequip_17();
	b_sh_hpraise_unequip(self,200);
	b_sworddef(self,-70);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_75 = FALSE;
	};
};


instance ITSH_PALADIN_A(C_Item)
{
	name = "Paladin shield";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 150;
	protection[PROT_EDGE] = 30;
	protection[PROT_BLUNT] = 20;
	protection[PROT_POINT] = 50;
	protection[PROT_FIRE] = 10;
	protection[PROT_MAGIC] = 15;
	visual = "ItSh_Paladin_A.3ds";
	material = MAT_WOOD;
	on_equip = equip_paladin_a;
	on_unequip = unequip_paladin_a;
	cond_atr[1] = ATR_STRENGTH;
	cond_value[1] = 120;
	description = name;
	text[0] = "Protection: B.+30 / B.+20 / P.+50 / Df.+10 / M.+15";
	text[1] = NAME_Str_needed;
	count[1] = cond_value[1];
	text[2] = NAME_ADDON_MALUS_1H;
	count[2] = 7;
	text[3] = NAME_Bonus_HpMax;
	count[3] = 50;
	text[4] = NAME_SH_B_CHANCE_25;
	count[5] = value;
	text[5] = NAME_4P5KG;
};


func void equip_paladin_a()
{
	b_sh_equip(self);
	b_shfs_equip_7();
	b_sh_hpraise(self,50);
	b_sworddef(self,30);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_25 = TRUE;
	};
};

func void unequip_paladin_a()
{
	b_sh_unequip(self);
	b_shfs_unequip_7();
	b_sh_hpraise_unequip(self,50);
	b_sworddef(self,-30);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_25 = FALSE;
	};
};


instance ITSH_G3_01(C_Item)
{
	name = "Round wooden shield";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 25;
	protection[PROT_EDGE] = 15;
	protection[PROT_BLUNT] = 5;
	protection[PROT_POINT] = 25;
	protection[PROT_FIRE] = 0;
	protection[PROT_MAGIC] = 0;
	visual = "ItSh_G3_01.3ds";
	material = MAT_WOOD;
	on_equip = equip_g3_01;
	on_unequip = unequip_g3_01;
	cond_atr[1] = ATR_STRENGTH;
	cond_value[1] = 25;
	description = name;
	text[0] = "Protection: B.+15 / B.+5 / P.+25 / Df.+0 / M.+0";
	text[1] = NAME_Str_needed;
	count[1] = cond_value[1];
	text[2] = NAME_ADDON_MALUS_1H;
	count[2] = 4;
	text[3] = NAME_Bonus_HpMax;
	count[3] = 25;
	text[4] = NAME_SH_B_CHANCE_15;
	count[5] = value;
	text[5] = NAME_2P6KG;
};


func void equip_g3_01()
{
	b_sh_equip(self);
	b_shfs_equip_4();
	b_sh_hpraise(self,25);
	b_sworddef(self,15);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_15 = TRUE;
	};
};

func void unequip_g3_01()
{
	b_sh_unequip(self);
	b_shfs_unequip_4();
	b_sh_hpraise_unequip(self,25);
	b_sworddef(self,-15);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_15 = FALSE;
	};
};


instance ITSH_G3_01_OLD(C_Item)
{
	name = "Rough wooden shield";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 7;
	protection[PROT_EDGE] = 9;
	protection[PROT_BLUNT] = 4;
	protection[PROT_POINT] = 11;
	protection[PROT_FIRE] = 0;
	protection[PROT_MAGIC] = 0;
	visual = "ItSh_G3_01_OLD.3ds";
	material = MAT_WOOD;
	on_equip = equip_g3_01_old;
	on_unequip = unequip_g3_01_old;
	cond_atr[1] = ATR_STRENGTH;
	cond_value[1] = 20;
	description = name;
	text[0] = "Protection: B.+9 / B.+4 / P.+15 / Df.+0 / M.+0";
	text[1] = NAME_Str_needed;
	count[1] = cond_value[1];
	text[2] = NAME_ADDON_MALUS_1H;
	count[2] = 4;
	text[3] = NAME_Bonus_HpMax;
	count[3] = 15;
	text[4] = NAME_SH_B_CHANCE_15;
	count[5] = value;
	text[5] = NAME_3KG;
};


func void equip_g3_01_old()
{
	b_sh_equip(self);
	b_shfs_equip_4();
	b_sh_hpraise(self,15);
	b_sworddef(self,9);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_15 = TRUE;
	};
};

func void unequip_g3_01_old()
{
	b_sh_unequip(self);
	b_shfs_unequip_4();
	b_sh_hpraise_unequip(self,15);
	b_sworddef(self,-9);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_15 = FALSE;
	};
};


instance ITSH_G3_02_V2(C_Item)
{
	name = "Worn shield";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 35;
	protection[PROT_EDGE] = 17;
	protection[PROT_BLUNT] = 7;
	protection[PROT_POINT] = 27;
	protection[PROT_FIRE] = 0;
	protection[PROT_MAGIC] = 0;
	visual = "ItSh_G3_02_v2.3ds";
	material = MAT_WOOD;
	on_equip = equip_g3_02_v2;
	on_unequip = unequip_g3_02_v2;
	cond_atr[1] = ATR_STRENGTH;
	cond_value[1] = 35;
	description = name;
	text[0] = "Protection: B.+17 / B.+7 / P.+27 / Df.+0 / M.+0";
	text[1] = NAME_Str_needed;
	count[1] = cond_value[1];
	text[2] = NAME_ADDON_MALUS_1H;
	count[2] = 5;
	text[3] = NAME_Bonus_HpMax;
	count[3] = 35;
	text[4] = NAME_SH_B_CHANCE_15;
	count[5] = value;
	text[5] = NAME_3P1KG;
};


func void equip_g3_02_v2()
{
	b_sh_equip(self);
	b_shfs_equip_5();
	b_sh_hpraise(self,35);
	b_sworddef(self,17);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_15 = TRUE;
	};
};

func void unequip_g3_02_v2()
{
	b_sh_unequip(self);
	b_shfs_unequip_5();
	b_sh_hpraise_unequip(self,35);
	b_sworddef(self,-17);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_15 = FALSE;
	};
};


instance ITSH_G3_03(C_Item)
{
	name = "Knight's wooden shield";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 550;
	protection[PROT_EDGE] = 25;
	protection[PROT_BLUNT] = 20;
	protection[PROT_POINT] = 45;
	protection[PROT_FIRE] = 0;
	protection[PROT_MAGIC] = 0;
	visual = "ItSh_G3_03.3ds";
	material = MAT_WOOD;
	on_equip = equip_g3_03;
	on_unequip = unequip_g3_03;
	cond_atr[1] = ATR_STRENGTH;
	cond_value[1] = 50;
	description = name;
	text[0] = "Protection: B.+25 / B.+20 / P.+45 / Df.+0 / M.+0";
	text[1] = NAME_Str_needed;
	count[1] = cond_value[1];
	text[2] = NAME_ADDON_MALUS_1H;
	count[2] = 7;
	text[3] = NAME_Bonus_HpMax;
	count[3] = 50;
	text[4] = NAME_SH_B_CHANCE_35;
	count[5] = value;
	text[5] = NAME_3KG;
};


func void equip_g3_03()
{
	b_sh_equip(self);
	b_shfs_equip_7();
	b_sh_hpraise(self,50);
	b_sworddef(self,25);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_35 = TRUE;
	};
};

func void unequip_g3_03()
{
	b_sh_unequip(self);
	b_shfs_unequip_7();
	b_sh_hpraise_unequip(self,50);
	b_sworddef(self,-25);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_35 = FALSE;
	};
};


instance ITSH_W2_E3_REDANIA(C_Item)
{
	name = "Excellent Knight's wooden shield";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 835;
	protection[PROT_EDGE] = 30;
	protection[PROT_BLUNT] = 25;
	protection[PROT_POINT] = 65;
	protection[PROT_FIRE] = 0;
	protection[PROT_MAGIC] = 0;
	visual = "ItSh_W2_E3_Redania.3ds";
	material = MAT_WOOD;
	on_equip = equip_w2_redania;
	on_unequip = unequip_w2_redania;
	cond_atr[1] = ATR_STRENGTH;
	cond_value[1] = 80;
	description = name;
	text[0] = "Protection: B.+30 / B.+25 / P.+65 / Df.+0 / M.+0";
	text[1] = NAME_Str_needed;
	count[1] = cond_value[1];
	text[2] = NAME_ADDON_MALUS_1H;
	count[2] = 10;
	text[3] = NAME_Bonus_HpMax;
	count[3] = 75;
	text[4] = NAME_SH_B_CHANCE_45;
	count[5] = value;
	text[5] = NAME_4P5KG;
};


func void equip_w2_redania()
{
	b_sh_equip(self);
	b_shfs_equip_10();
	b_sh_hpraise(self,75);
	b_sworddef(self,30);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_45 = TRUE;
	};
};

func void unequip_w2_redania()
{
	b_sh_unequip(self);
	b_shfs_unequip_10();
	b_sh_hpraise_unequip(self,75);
	b_sworddef(self,-30);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_45 = FALSE;
	};
};


instance ITSH_W2_E1_DETHMOLD(C_Item)
{
	name = "Knight's wooden greatshield";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 1135;
	protection[PROT_EDGE] = 40;
	protection[PROT_BLUNT] = 30;
	protection[PROT_POINT] = 75;
	protection[PROT_FIRE] = 0;
	protection[PROT_MAGIC] = 0;
	visual = "ItSh_W2_E1_Dethmold.3ds";
	material = MAT_WOOD;
	on_equip = equip_w2_dethmold;
	on_unequip = unequip_w2_dethmold;
	cond_atr[1] = ATR_STRENGTH;
	cond_value[1] = 110;
	description = name;
	text[0] = "Protection: B.+40 / B.+30 / P.+75 / Df.+0 / M.+0";
	text[1] = NAME_Str_needed;
	count[1] = cond_value[1];
	text[2] = NAME_ADDON_MALUS_1H;
	count[2] = 12;
	text[3] = NAME_Bonus_HpMax;
	count[3] = 100;
	text[4] = NAME_SH_B_CHANCE_65;
	count[5] = value;
	text[5] = NAME_6KG;
};


func void equip_w2_dethmold()
{
	b_sh_equip(self);
	b_shfs_equip_12();
	b_sh_hpraise(self,100);
	b_sworddef(self,40);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_65 = TRUE;
	};
};

func void unequip_w2_dethmold()
{
	b_sh_unequip(self);
	b_shfs_unequip_12();
	b_sh_hpraise_unequip(self,100);
	b_sworddef(self,-40);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_65 = FALSE;
	};
};


instance ITSH_G3_04(C_Item)
{
	name = "Worn Knight's shield";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 55;
	protection[PROT_EDGE] = 21;
	protection[PROT_BLUNT] = 16;
	protection[PROT_POINT] = 37;
	protection[PROT_FIRE] = 10;
	protection[PROT_MAGIC] = 5;
	visual = "ItSh_G3_04.3ds";
	material = MAT_WOOD;
	on_equip = equip_g3_04;
	on_unequip = unequip_g3_04;
	cond_atr[1] = ATR_STRENGTH;
	cond_value[1] = 55;
	description = name;
	text[0] = "Protection: B.+21 / B.+16 / P.+37 / Df.+10 / M.+5";
	text[1] = NAME_Str_needed;
	count[1] = cond_value[1];
	text[2] = NAME_ADDON_MALUS_1H;
	count[2] = 5;
	text[3] = NAME_Bonus_HpMax;
	count[3] = 50;
	text[4] = NAME_SH_B_CHANCE_25;
	count[5] = value;
	text[5] = NAME_3P6KG;
};


func void equip_g3_04()
{
	b_sh_equip(self);
	b_shfs_equip_5();
	b_sh_hpraise(self,50);
	b_sworddef(self,21);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_25 = TRUE;
	};
};

func void unequip_g3_04()
{
	b_sh_unequip(self);
	b_shfs_unequip_5();
	b_sh_hpraise_unequip(self,50);
	b_sworddef(self,-21);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_25 = FALSE;
	};
};


instance ITSH_G3_BROKEN(C_Item)
{
	name = "Broken shield";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 10;
	protection[PROT_EDGE] = 10;
	protection[PROT_BLUNT] = 5;
	protection[PROT_POINT] = 15;
	protection[PROT_FIRE] = 0;
	protection[PROT_MAGIC] = 0;
	visual = "ItSh_G3_Broken.3ds";
	material = MAT_WOOD;
	on_equip = equip_g3_broken;
	on_unequip = unequip_g3_broken;
	cond_atr[1] = ATR_STRENGTH;
	cond_value[1] = 10;
	description = name;
	text[0] = "Protection: B.+10 / B.+5 / P.+15 / Df.+0 / M.+0";
	text[1] = NAME_Str_needed;
	count[1] = cond_value[1];
	text[2] = NAME_ADDON_MALUS_1H;
	count[2] = 3;
	text[3] = NAME_Bonus_HpMax;
	count[3] = 25;
	text[4] = NAME_SH_B_CHANCE_15;
	count[5] = value;
	text[5] = NAME_2P1KG;
};


func void equip_g3_broken()
{
	b_sh_equip(self);
	b_shfs_equip_3();
	b_sh_hpraise(self,25);
	b_sworddef(self,10);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_15 = TRUE;
	};
};

func void unequip_g3_broken()
{
	b_sh_unequip(self);
	b_shfs_unequip_3();
	b_sh_hpraise_unequip(self,25);
	b_sworddef(self,-10);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_15 = FALSE;
	};
};


instance ITSH_SK_IRON(C_Item)
{
	name = "Iron shield";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 575;
	protection[PROT_EDGE] = 30;
	protection[PROT_BLUNT] = 20;
	protection[PROT_POINT] = 40;
	protection[PROT_FIRE] = 0;
	protection[PROT_MAGIC] = 0;
	visual = "ItSh_SK_Iron.3ds";
	material = MAT_WOOD;
	on_equip = equip_sk_iron;
	on_unequip = unequip_sk_iron;
	cond_atr[1] = ATR_STRENGTH;
	cond_value[1] = 55;
	description = name;
	text[0] = "Protection: B.+30 / B.+20 / P.+40 / Df.+0 / M.+0";
	text[1] = NAME_Str_needed;
	count[1] = cond_value[1];
	text[2] = NAME_ADDON_MALUS_1H;
	count[2] = 7;
	text[3] = NAME_Bonus_HpMax;
	count[3] = 30;
	text[4] = NAME_SH_B_CHANCE_35;
	count[5] = value;
	text[5] = NAME_4KG;
};


func void equip_sk_iron()
{
	b_sh_equip(self);
	b_shfs_equip_7();
	b_sh_hpraise(self,30);
	b_sworddef(self,30);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_35 = TRUE;
	};
};

func void unequip_sk_iron()
{
	b_sh_unequip(self);
	b_shfs_unequip_7();
	b_sh_hpraise_unequip(self,30);
	b_sworddef(self,-30);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_35 = FALSE;
	};
};


instance ITSH_SM_STEEL(C_Item)
{
	name = "Steel shield";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 875;
	protection[PROT_EDGE] = 35;
	protection[PROT_BLUNT] = 25;
	protection[PROT_POINT] = 55;
	protection[PROT_FIRE] = 0;
	protection[PROT_MAGIC] = 5;
	visual = "ItSh_SM_Steel.3ds";
	material = MAT_WOOD;
	on_equip = equip_sm_steel;
	on_unequip = unequip_sm_steel;
	cond_atr[1] = ATR_STRENGTH;
	cond_value[1] = 90;
	description = name;
	text[0] = "Protection: B.+35 / B.+25 / P.+55 / Df.+0 / M.+5";
	text[1] = NAME_Str_needed;
	count[1] = cond_value[1];
	text[2] = NAME_ADDON_MALUS_1H;
	count[2] = 12;
	text[3] = NAME_Bonus_HpMax;
	count[3] = 60;
	text[4] = NAME_SH_B_CHANCE_55;
	count[5] = value;
	text[5] = NAME_7KG;
};


func void equip_sm_steel()
{
	b_sh_equip(self);
	b_shfs_equip_12();
	b_sh_hpraise(self,60);
	b_sworddef(self,35);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_55 = TRUE;
	};
};

func void unequip_sm_steel()
{
	b_sh_unequip(self);
	b_shfs_unequip_12();
	b_sh_hpraise_unequip(self,60);
	b_sworddef(self,-35);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_55 = FALSE;
	};
};


instance ITSH_KORSHAN_A(C_Item)
{
	name = "Elegant ore shield";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 1240;
	protection[PROT_EDGE] = 40;
	protection[PROT_BLUNT] = 25;
	protection[PROT_POINT] = 50;
	protection[PROT_FIRE] = 5;
	protection[PROT_MAGIC] = 10;
	visual = "ItSh_Korshan_A.3ds";
	material = MAT_WOOD;
	on_equip = equip_korshan_a;
	on_unequip = unequip_korshan_a;
	cond_atr[1] = ATR_STRENGTH;
	cond_value[1] = 100;
	description = name;
	text[0] = "Protection: B.+40 / B.+25 / P.+50 / Df.+5 / M.+10";
	text[1] = NAME_Str_needed;
	count[1] = cond_value[1];
	text[2] = NAME_ADDON_MALUS_1H;
	count[2] = 10;
	text[3] = NAME_Bonus_HpMax;
	count[3] = 90;
	text[4] = NAME_SH_B_CHANCE_45;
	count[5] = value;
	text[5] = NAME_6KG;
};


func void equip_korshan_a()
{
	b_sh_equip(self);
	b_shfs_equip_10();
	b_sh_hpraise(self,90);
	b_sworddef(self,40);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_45 = TRUE;
	};
};

func void unequip_korshan_a()
{
	b_sh_unequip(self);
	b_shfs_unequip_10();
	b_sh_hpraise_unequip(self,90);
	b_sworddef(self,-40);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_45 = FALSE;
	};
};


instance ITSH_R_RUNE(C_Item)
{
	name = "Shield of the Priests";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 185;
	protection[PROT_EDGE] = 25;
	protection[PROT_BLUNT] = 20;
	protection[PROT_POINT] = 40;
	protection[PROT_FIRE] = 0;
	protection[PROT_MAGIC] = 50;
	visual = "ItSh_R_Rune.3ds";
	material = MAT_WOOD;
	on_equip = equip_r_rune;
	on_unequip = unequip_r_rune;
	cond_atr[1] = ATR_STRENGTH;
	cond_value[1] = 75;
	description = name;
	text[0] = "Protection: B.+25 / B.+20 / P.+40 / Df.+0 / M.+50";
	text[1] = NAME_Str_needed;
	count[1] = cond_value[1];
	text[2] = NAME_ADDON_MALUS_1H;
	count[2] = 10;
	text[3] = NAME_Bonus_HpMax;
	count[3] = 50;
	text[4] = NAME_SH_B_CHANCE_35;
	count[5] = value;
	text[5] = NAME_4KG;
};


func void equip_r_rune()
{
	b_sh_equip(self);
	b_shfs_equip_10();
	b_sh_hpraise(self,50);
	b_sworddef(self,25);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_35 = TRUE;
	};
};

func void unequip_r_rune()
{
	b_sh_unequip(self);
	b_shfs_unequip_10();
	b_sh_hpraise_unequip(self,50);
	b_sworddef(self,-25);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_35 = FALSE;
	};
};


instance ITSH_R_ROUND(C_Item)
{
	name = "Shield of the Warriors";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 215;
	protection[PROT_EDGE] = 30;
	protection[PROT_BLUNT] = 20;
	protection[PROT_POINT] = 40;
	protection[PROT_FIRE] = 10;
	protection[PROT_MAGIC] = 15;
	visual = "ItSh_R_Round.3ds";
	material = MAT_WOOD;
	on_equip = equip_r_round;
	on_unequip = unequip_r_round;
	cond_atr[1] = ATR_STRENGTH;
	cond_value[1] = 85;
	description = name;
	text[0] = "Protection: B.+30 / B.+20 / P.+40 / Df.+10 / M.+15";
	text[1] = NAME_Str_needed;
	count[1] = cond_value[1];
	text[2] = NAME_ADDON_MALUS_1H;
	count[2] = 7;
	text[3] = NAME_Bonus_HpMax;
	count[3] = 55;
	text[4] = NAME_SH_B_CHANCE_45;
	count[5] = value;
	text[5] = NAME_4KG;
};


func void equip_r_round()
{
	b_sh_equip(self);
	b_shfs_equip_7();
	b_sh_hpraise(self,55);
	b_sworddef(self,30);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_45 = TRUE;
	};
};

func void unequip_r_round()
{
	b_sh_unequip(self);
	b_shfs_unequip_7();
	b_sh_hpraise_unequip(self,55);
	b_sworddef(self,-30);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_45 = FALSE;
	};
};


instance ITSH_W2_E2_KAEDWEN(C_Item)
{
	name = "Old family shield";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 80;
	protection[PROT_EDGE] = 19;
	protection[PROT_BLUNT] = 14;
	protection[PROT_POINT] = 36;
	protection[PROT_FIRE] = 0;
	protection[PROT_MAGIC] = 0;
	visual = "ItSh_W2_E2_Kaedwen.3ds";
	material = MAT_WOOD;
	on_equip = equip_w2_e2_kaedwen;
	on_unequip = unequip_w2_e2_kaedwen;
	cond_atr[1] = ATR_STRENGTH;
	cond_value[1] = 35;
	description = name;
	text[0] = "Protection: B.+19 / B.+14 / P.+36 / Df.+0 / M.+0";
	text[1] = NAME_Str_needed;
	count[1] = cond_value[1];
	text[2] = NAME_ADDON_MALUS_1H;
	count[2] = 5;
	text[3] = NAME_Bonus_HpMax;
	count[3] = 25;
	text[4] = NAME_SH_B_CHANCE_25;
	count[5] = value;
	text[5] = NAME_2P5KG;
};


func void equip_w2_e2_kaedwen()
{
	b_sh_equip(self);
	b_shfs_equip_5();
	b_sh_hpraise(self,25);
	b_sworddef(self,19);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_25 = TRUE;
	};
};

func void unequip_w2_e2_kaedwen()
{
	b_sh_unequip(self);
	b_shfs_unequip_5();
	b_sh_hpraise_unequip(self,25);
	b_sworddef(self,-19);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_25 = FALSE;
	};
};


instance ITSH_KNIGHT_DS(C_Item)
{
	name = "Sacred shield";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	owner = Nov_608_Garwig;
	protection[PROT_EDGE] = 50;
	protection[PROT_BLUNT] = 45;
	protection[PROT_POINT] = 75;
	protection[PROT_FIRE] = 15;
	protection[PROT_MAGIC] = 25;
	visual = "ItSh_Knight_DS.3ds";
	material = MAT_WOOD;
	on_equip = equip_knight_ds;
	on_unequip = unequip_knight_ds;
	cond_atr[1] = ATR_STRENGTH;
	cond_value[1] = 125;
	description = "Shield of Lord Dominique";
	text[0] = "Protection: B.+50 / B.+45 / P.+75 / Df.+15 / M.+25";
	text[1] = NAME_Str_needed;
	count[1] = cond_value[1];
	text[2] = NAME_ADDON_MALUS_1H;
	count[2] = 10;
	text[3] = NAME_Bonus_HpMax;
	count[3] = 100;
	text[4] = NAME_SH_B_CHANCE_65;
	text[5] = "Weight 5 kg";
};


func void equip_knight_ds()
{
	b_sh_equip(self);
	b_shfs_equip_10();
	b_sh_hpraise(self,100);
	b_sworddef(self,50);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_65 = TRUE;
		if((hero.guild == GIL_PAL) && (DOMINICFREE == TRUE))
		{
			Wld_PlayEffect("spellFX_HealShrine",hero,hero,0,0,0,FALSE);
			Snd_Play("MFX_Heal_Cast");
		}
		else
		{
			Wld_PlayEffect("spellFX_Fear",hero,hero,0,0,0,FALSE);
			Snd_Play("MFX_FEAR_CAST");
		};
		DOMINICCURSE = TRUE;
	};
};

func void unequip_knight_ds()
{
	b_sh_unequip(self);
	b_shfs_unequip_10();
	b_sh_hpraise_unequip(self,100);
	b_sworddef(self,-50);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_65 = FALSE;
		DOMINICCURSE = FALSE;
	};
};


instance ITSH_CREST_DS(C_Item)
{
	name = "Elegant Knight's shield";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 1500;
	protection[PROT_EDGE] = 50;
	protection[PROT_BLUNT] = 40;
	protection[PROT_POINT] = 70;
	protection[PROT_FIRE] = 15;
	protection[PROT_MAGIC] = 25;
	visual = "ItSh_Crest_DS.3ds";
	material = MAT_WOOD;
	on_equip = equip_crest_ds;
	on_unequip = unequip_crest_ds;
	cond_atr[1] = ATR_STRENGTH;
	cond_value[1] = 125;
	description = name;
	text[0] = "Protection: B.+50 / B.+40 / P.+70 / Df.+15 / M.+25";
	text[1] = NAME_Str_needed;
	count[1] = cond_value[1];
	text[2] = NAME_ADDON_MALUS_1H;
	count[2] = 10;
	text[3] = NAME_Bonus_HpMax;
	count[3] = 125;
	text[4] = NAME_SH_B_CHANCE_55;
	count[5] = value;
	text[5] = NAME_7P5KG;
};


func void equip_crest_ds()
{
	b_sh_equip(self);
	b_shfs_equip_10();
	b_sh_hpraise(self,125);
	b_sworddef(self,50);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_55 = TRUE;
	};
};

func void unequip_crest_ds()
{
	b_sh_unequip(self);
	b_shfs_unequip_10();
	b_sh_hpraise_unequip(self,125);
	b_sworddef(self,-50);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_55 = FALSE;
	};
};


instance ITSH_DRAGON_DS(C_Item)
{
	name = "Dragonslayer's shield";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 1400;
	protection[PROT_EDGE] = 40;
	protection[PROT_BLUNT] = 30;
	protection[PROT_POINT] = 60;
	protection[PROT_FIRE] = 50;
	protection[PROT_MAGIC] = 25;
	visual = "ItSh_Dragon_DS.3ds";
	material = MAT_WOOD;
	on_equip = equip_dragon_ds;
	on_unequip = unequip_dragon_ds;
	cond_atr[1] = ATR_STRENGTH;
	cond_value[1] = 140;
	description = name;
	text[0] = "Protection: B.+40 / B.+30 / P.+60 / Df.+50 / M.+25";
	text[1] = NAME_Str_needed;
	count[1] = cond_value[1];
	text[2] = NAME_ADDON_MALUS_1H;
	count[2] = 15;
	text[3] = NAME_Bonus_HpMax;
	count[3] = 100;
	text[4] = NAME_SH_B_CHANCE_55;
	count[5] = value;
	text[5] = NAME_7P5KG;
};


func void equip_dragon_ds()
{
	b_sh_equip(self);
	b_shfs_equip_15();
	b_sh_hpraise(self,100);
	b_sworddef(self,40);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_55 = TRUE;
	};
};

func void unequip_dragon_ds()
{
	b_sh_unequip(self);
	b_shfs_unequip_15();
	b_sh_hpraise_unequip(self,100);
	b_sworddef(self,-40);
	if(Npc_IsPlayer(self))
	{
		SH_B_CHANCE_55 = FALSE;
	};
};

