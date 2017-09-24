
var int e_itms_base;
var int e_itms_master;
var int e_dust_base;
var int e_frnt_base;
var int e_itms_str;
var int e_itms_dex;
var int e_itms_hp;
var int e_itms_mp;
var int e_itms_arm;
var int e_itms_wpn;
var int e_itms_melee;
var int e_itms_range;
var int e_itms_wgt;

func void enchanting_s1()
{
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
	{
		self.aivar[AIV_INVINCIBLE] = TRUE;
		PLAYER_MOBSI_PRODUCTION = MOBSI_ENCHANT;
		AI_ProcessInfos(hero);
	};
};


instance PC_ENCHANTING_END(C_Info)
{
	npc = PC_Hero;
	nr = 999;
	condition = pc_enchanting_end_condition;
	information = pc_enchanting_end_info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int pc_enchanting_end_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_BASE == FALSE) && (E_ITMS_MASTER == FALSE) && (E_DUST_BASE == FALSE) && (E_FRNT_BASE == FALSE) && (E_ITMS_STR == FALSE) && (E_ITMS_DEX == FALSE) && (E_ITMS_HP == FALSE) && (E_ITMS_MP == FALSE) && (E_ITMS_ARM == FALSE) && (E_ITMS_WPN == FALSE) && (E_ITMS_MELEE == FALSE) && (E_ITMS_RANGE == FALSE) && (E_ITMS_WGT == FALSE))
	{
		return TRUE;
	};
};

func void pc_enchanting_end_info()
{
	b_endproductiondialog();
	E_ITMS_BASE = FALSE;
	E_ITMS_MASTER = FALSE;
	E_DUST_BASE = FALSE;
	E_FRNT_BASE = FALSE;
	E_ITMS_STR = FALSE;
	E_ITMS_DEX = FALSE;
	E_ITMS_HP = FALSE;
	E_ITMS_MP = FALSE;
	E_ITMS_ARM = FALSE;
	E_ITMS_WPN = FALSE;
	E_ITMS_MELEE = FALSE;
	E_ITMS_RANGE = FALSE;
	E_ITMS_WGT = FALSE;
};


instance PC_ENCHANTING_ITEMS(C_Info)
{
	npc = PC_Hero;
	nr = 1;
	condition = pc_enchanting_items_condition;
	information = pc_enchanting_items_info;
	permanent = TRUE;
	description = "Enchant items";
};


func int pc_enchanting_items_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_BASE == FALSE) && (E_ITMS_MASTER == FALSE) && (E_DUST_BASE == FALSE) && (E_FRNT_BASE == FALSE) && (E_ITMS_STR == FALSE) && (E_ITMS_DEX == FALSE) && (E_ITMS_HP == FALSE) && (E_ITMS_MP == FALSE) && (E_ITMS_ARM == FALSE) && (E_ITMS_WPN == FALSE) && (E_ITMS_MELEE == FALSE) && (E_ITMS_RANGE == FALSE) && (E_ITMS_WGT == FALSE))
	{
		return TRUE;
	};
};

func void pc_enchanting_items_info()
{
	E_ITMS_BASE = TRUE;
};


instance PC_ENCHANT_STOP(C_Info)
{
	npc = PC_Hero;
	nr = 99;
	condition = pc_enchant_stop_condition;
	information = pc_enchant_stop_info;
	permanent = TRUE;
	description = Dialog_Back;
};


func int pc_enchant_stop_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_BASE == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchant_stop_info()
{
	E_ITMS_BASE = FALSE;
};


instance PC_ENCHANTING_STR(C_Info)
{
	npc = PC_Hero;
	nr = 1;
	condition = pc_enchanting_str_condition;
	information = pc_enchanting_str_info;
	permanent = TRUE;
	description = "Strength enchantments";
};


func int pc_enchanting_str_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_STR == FALSE) && (E_ITMS_BASE == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_str_info()
{
	E_ITMS_STR = TRUE;
	E_ITMS_BASE = FALSE;
};


instance PC_STR_STOP(C_Info)
{
	npc = PC_Hero;
	nr = 99;
	condition = pc_str_stop_condition;
	information = pc_str_stop_info;
	permanent = TRUE;
	description = Dialog_Back;
};


func int pc_str_stop_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_STR == TRUE))
	{
		return TRUE;
	};
};

func void pc_str_stop_info()
{
	E_ITMS_BASE = TRUE;
	E_ITMS_STR = FALSE;
};


instance PC_ENCHANTING_RINGSTR_01(C_Info)
{
	npc = PC_Hero;
	nr = 1;
	condition = pc_enchanting_ringstr_01_condition;
	information = pc_enchanting_ringstr_01_info;
	permanent = TRUE;
	description = "Ring of lower fortitude +4 (1x silver ring, 1x ruby dust)";
};


func int pc_enchanting_ringstr_01_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_STR == TRUE) && (PLAYER_TALENT_ENCHANTING[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_ringstr_01_info()
{
	if((Npc_HasItems(hero,ItMi_SilverRing) >= 1) && (Npc_HasItems(hero,itmi_rubdust_01) >= 1))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverRing,1);
		Npc_RemoveInvItems(hero,itmi_rubdust_01,1);
		CreateInvItems(hero,itri_enchstr_01,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_STR = FALSE;
};


instance PC_ENCHANTING_RINGSTR_02(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_enchanting_ringstr_02_condition;
	information = pc_enchanting_ringstr_02_info;
	permanent = TRUE;
	description = "Ring of fortitude +7 (1x silver ring, 1x ruby dust, 1x rock crystal)";
};


func int pc_enchanting_ringstr_02_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_STR == TRUE) && (PLAYER_TALENT_ENCHANTING[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_ringstr_02_info()
{
	if((Npc_HasItems(hero,ItMi_SilverRing) >= 1) && (Npc_HasItems(hero,itmi_rubdust_01) >= 1) && (Npc_HasItems(hero,ItMi_Rockcrystal) >= 1))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverRing,1);
		Npc_RemoveInvItems(hero,itmi_rubdust_01,1);
		Npc_RemoveInvItems(hero,ItMi_Rockcrystal,1);
		CreateInvItems(hero,itri_enchstr_02,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_STR = FALSE;
};


instance PC_ENCHANTING_RINGSTR_03(C_Info)
{
	npc = PC_Hero;
	nr = 3;
	condition = pc_enchanting_ringstr_03_condition;
	information = pc_enchanting_ringstr_03_info;
	permanent = TRUE;
	description = "Ring of greater fortitude +10 (1x silver ring, 1x ruby dust, 1x rock crystal, 1x glacier quartz)";
};


func int pc_enchanting_ringstr_03_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_STR == TRUE) && (PLAYER_TALENT_ENCHANTING[2] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_ringstr_03_info()
{
	if((Npc_HasItems(hero,ItMi_SilverRing) >= 1) && (Npc_HasItems(hero,itmi_rubdust_01) >= 1) && (Npc_HasItems(hero,ItMi_Rockcrystal) >= 1) && (Npc_HasItems(hero,ItMi_Quartz) >= 1))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverRing,1);
		Npc_RemoveInvItems(hero,itmi_rubdust_01,1);
		Npc_RemoveInvItems(hero,ItMi_Rockcrystal,1);
		Npc_RemoveInvItems(hero,ItMi_Quartz,1);
		CreateInvItems(hero,itri_enchstr_03,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_STR = FALSE;
};


instance PC_ENCHANTING_AMULSTRG_01(C_Info)
{
	npc = PC_Hero;
	nr = 4;
	condition = pc_enchanting_amulstrg_01_condition;
	information = pc_enchanting_amulstrg_01_info;
	permanent = TRUE;
	description = "Amulet of lower fortitude +5 (1x silver necklace, 1x ruby dust)";
};


func int pc_enchanting_amulstrg_01_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_STR == TRUE) && (PLAYER_TALENT_ENCHANTING[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_amulstrg_01_info()
{
	if((Npc_HasItems(hero,ItMi_SilverNecklace) >= 1) && (Npc_HasItems(hero,itmi_rubdust_01) >= 1))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverNecklace,1);
		Npc_RemoveInvItems(hero,itmi_rubdust_01,1);
		CreateInvItems(hero,itam_enchstrg_01,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_STR = FALSE;
};


instance PC_ENCHANTING_AMULSTRG_02(C_Info)
{
	npc = PC_Hero;
	nr = 5;
	condition = pc_enchanting_amulstrg_02_condition;
	information = pc_enchanting_amulstrg_02_info;
	permanent = TRUE;
	description = "Amulet of fortitude +10 (1x silver necklace, 1x ruby dust, 1x rock crystal)";
};


func int pc_enchanting_amulstrg_02_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_STR == TRUE) && (PLAYER_TALENT_ENCHANTING[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_amulstrg_02_info()
{
	if((Npc_HasItems(hero,ItMi_SilverNecklace) >= 1) && (Npc_HasItems(hero,itmi_rubdust_01) >= 1) && (Npc_HasItems(hero,ItMi_Rockcrystal) >= 1))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverNecklace,1);
		Npc_RemoveInvItems(hero,itmi_rubdust_01,1);
		Npc_RemoveInvItems(hero,ItMi_Rockcrystal,1);
		CreateInvItems(hero,itam_enchstrg_02,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_STR = FALSE;
};


instance PC_ENCHANTING_AMULSTRG_03(C_Info)
{
	npc = PC_Hero;
	nr = 6;
	condition = pc_enchanting_amulstrg_03_condition;
	information = pc_enchanting_amulstrg_03_info;
	permanent = TRUE;
	description = "Amulet of greater fortitude +15 (1x silver necklace, 1x ruby dust, 1x rock crystal, 1x glacier quartz)";
};


func int pc_enchanting_amulstrg_03_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_STR == TRUE) && (PLAYER_TALENT_ENCHANTING[2] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_amulstrg_03_info()
{
	if((Npc_HasItems(hero,ItMi_SilverNecklace) >= 1) && (Npc_HasItems(hero,itmi_rubdust_01) >= 1) && (Npc_HasItems(hero,ItMi_Rockcrystal) >= 1) && (Npc_HasItems(hero,ItMi_Quartz) >= 1))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverNecklace,1);
		Npc_RemoveInvItems(hero,itmi_rubdust_01,1);
		Npc_RemoveInvItems(hero,ItMi_Rockcrystal,1);
		Npc_RemoveInvItems(hero,ItMi_Quartz,1);
		CreateInvItems(hero,itam_enchstrg_03,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_STR = FALSE;
};


instance PC_ENCHANTING_BELTSTR_01(C_Info)
{
	npc = PC_Hero;
	nr = 7;
	condition = pc_enchanting_beltstr_01_condition;
	information = pc_enchanting_beltstr_01_info;
	permanent = TRUE;
	description = "Belt of lower fortitude +5 (1x leather belt, 1x ruby dust)";
};


func int pc_enchanting_beltstr_01_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_STR == TRUE) && (PLAYER_TALENT_ENCHANTING[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_beltstr_01_info()
{
	if((Npc_HasItems(hero,itbe_addon_enchleather_01) >= 1) && (Npc_HasItems(hero,itmi_rubdust_01) >= 1))
	{
		Npc_RemoveInvItems(hero,itbe_addon_enchleather_01,1);
		Npc_RemoveInvItems(hero,itmi_rubdust_01,1);
		CreateInvItems(hero,itbe_addonenchstr_01,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_STR = FALSE;
};


instance PC_ENCHANTING_BELTSTR_02(C_Info)
{
	npc = PC_Hero;
	nr = 8;
	condition = pc_enchanting_beltstr_02_condition;
	information = pc_enchanting_beltstr_02_info;
	permanent = TRUE;
	description = "Belt of fortitude +10 (1x leather belt, 1x ruby dust, 1x rock crystal)";
};


func int pc_enchanting_beltstr_02_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_STR == TRUE) && (PLAYER_TALENT_ENCHANTING[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_beltstr_02_info()
{
	if((Npc_HasItems(hero,itbe_addon_enchleather_01) >= 1) && (Npc_HasItems(hero,itmi_rubdust_01) >= 1) && (Npc_HasItems(hero,ItMi_Rockcrystal) >= 1))
	{
		Npc_RemoveInvItems(hero,itbe_addon_enchleather_01,1);
		Npc_RemoveInvItems(hero,itmi_rubdust_01,1);
		Npc_RemoveInvItems(hero,ItMi_Rockcrystal,1);
		CreateInvItems(hero,itbe_addonenchstr_02,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_STR = FALSE;
};


instance PC_ENCHANTING_BELTSTR_03(C_Info)
{
	npc = PC_Hero;
	nr = 9;
	condition = pc_enchanting_beltstr_03_condition;
	information = pc_enchanting_beltstr_03_info;
	permanent = TRUE;
	description = "Belt of greater fortitude +15 (1x leather belt, 1x ruby dust, 1x rock crystal, 1x glacier quartz)";
};


func int pc_enchanting_beltstr_03_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_STR == TRUE) && (PLAYER_TALENT_ENCHANTING[2] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_beltstr_03_info()
{
	if((Npc_HasItems(hero,itbe_addon_enchleather_01) >= 1) && (Npc_HasItems(hero,itmi_rubdust_01) >= 1) && (Npc_HasItems(hero,ItMi_Rockcrystal) >= 1) && (Npc_HasItems(hero,ItMi_Quartz) >= 1))
	{
		Npc_RemoveInvItems(hero,itbe_addon_enchleather_01,1);
		Npc_RemoveInvItems(hero,itmi_rubdust_01,1);
		Npc_RemoveInvItems(hero,ItMi_Rockcrystal,1);
		Npc_RemoveInvItems(hero,ItMi_Quartz,1);
		CreateInvItems(hero,itbe_addonenchstr_03,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_STR = FALSE;
};


instance PC_ENCHANTING_DEX(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_enchanting_dex_condition;
	information = pc_enchanting_dex_info;
	permanent = TRUE;
	description = "Dexterity enchantments";
};


func int pc_enchanting_dex_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_DEX == FALSE) && (E_ITMS_BASE == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_dex_info()
{
	E_ITMS_DEX = TRUE;
	E_ITMS_BASE = FALSE;
};


instance PC_DEX_STOP(C_Info)
{
	npc = PC_Hero;
	nr = 98;
	condition = pc_dex_stop_condition;
	information = pc_dex_stop_info;
	permanent = TRUE;
	description = Dialog_Back;
};


func int pc_dex_stop_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_DEX == TRUE))
	{
		return TRUE;
	};
};

func void pc_dex_stop_info()
{
	E_ITMS_BASE = TRUE;
	E_ITMS_DEX = FALSE;
};


instance PC_ENCHANTING_RINGDEX_01(C_Info)
{
	npc = PC_Hero;
	nr = 1;
	condition = pc_enchanting_ringdex_01_condition;
	information = pc_enchanting_ringdex_01_info;
	permanent = TRUE;
	description = "Ring of lower agility +4 (1x silver ring, 1x emerald dust)";
};


func int pc_enchanting_ringdex_01_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_DEX == TRUE) && (PLAYER_TALENT_ENCHANTING[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_ringdex_01_info()
{
	if((Npc_HasItems(hero,ItMi_SilverRing) >= 1) && (Npc_HasItems(hero,itmi_emrlddust_01) >= 1))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverRing,1);
		Npc_RemoveInvItems(hero,itmi_emrlddust_01,1);
		CreateInvItems(hero,itri_enchdex_01,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_DEX = FALSE;
};


instance PC_ENCHANTING_RINGDEX_02(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_enchanting_ringdex_02_condition;
	information = pc_enchanting_ringdex_02_info;
	permanent = TRUE;
	description = "Ring of agility +7 (1x silver ring, 1x emerald dust, 1x rock crystal)";
};


func int pc_enchanting_ringdex_02_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_DEX == TRUE) && (PLAYER_TALENT_ENCHANTING[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_ringdex_02_info()
{
	if((Npc_HasItems(hero,ItMi_SilverRing) >= 1) && (Npc_HasItems(hero,itmi_emrlddust_01) >= 1) && (Npc_HasItems(hero,ItMi_Rockcrystal) >= 1))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverRing,1);
		Npc_RemoveInvItems(hero,itmi_emrlddust_01,1);
		Npc_RemoveInvItems(hero,ItMi_Rockcrystal,1);
		CreateInvItems(hero,itri_enchdex_02,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_DEX = FALSE;
};


instance PC_ENCHANTING_RINGDEX_03(C_Info)
{
	npc = PC_Hero;
	nr = 3;
	condition = pc_enchanting_ringdex_03_condition;
	information = pc_enchanting_ringdex_03_info;
	permanent = TRUE;
	description = "Ring of greater agility +10 (1x silver ring, 1x emerald dust, 1x rock crystal, 1x glacier quartz)";
};


func int pc_enchanting_ringdex_03_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_DEX == TRUE) && (PLAYER_TALENT_ENCHANTING[2] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_ringdex_03_info()
{
	if((Npc_HasItems(hero,ItMi_SilverRing) >= 1) && (Npc_HasItems(hero,itmi_emrlddust_01) >= 1) && (Npc_HasItems(hero,ItMi_Rockcrystal) >= 1) && (Npc_HasItems(hero,ItMi_Quartz) >= 1))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverRing,1);
		Npc_RemoveInvItems(hero,itmi_emrlddust_01,1);
		Npc_RemoveInvItems(hero,ItMi_Rockcrystal,1);
		Npc_RemoveInvItems(hero,ItMi_Quartz,1);
		CreateInvItems(hero,itri_enchdex_03,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_DEX = FALSE;
};


instance PC_ENCHANTING_AMULDEXR_01(C_Info)
{
	npc = PC_Hero;
	nr = 4;
	condition = pc_enchanting_amuldexr_01_condition;
	information = pc_enchanting_amuldexr_01_info;
	permanent = TRUE;
	description = "Amulet of lower agility +5 (1x silver necklace, 1x emerald dust)";
};


func int pc_enchanting_amuldexr_01_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_DEX == TRUE) && (PLAYER_TALENT_ENCHANTING[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_amuldexr_01_info()
{
	if((Npc_HasItems(hero,ItMi_SilverNecklace) >= 1) && (Npc_HasItems(hero,itmi_emrlddust_01) >= 1))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverNecklace,1);
		Npc_RemoveInvItems(hero,itmi_emrlddust_01,1);
		CreateInvItems(hero,itam_enchdexr_01,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_DEX = FALSE;
};


instance PC_ENCHANTING_AMULDEXR_02(C_Info)
{
	npc = PC_Hero;
	nr = 5;
	condition = pc_enchanting_amuldexr_02_condition;
	information = pc_enchanting_amuldexr_02_info;
	permanent = TRUE;
	description = "Amulet of agility +10 (1x silver necklace, 1x emerald dust, 1x rock crystal)";
};


func int pc_enchanting_amuldexr_02_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_DEX == TRUE) && (PLAYER_TALENT_ENCHANTING[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_amuldexr_02_info()
{
	if((Npc_HasItems(hero,ItMi_SilverNecklace) >= 1) && (Npc_HasItems(hero,itmi_emrlddust_01) >= 1) && (Npc_HasItems(hero,ItMi_Rockcrystal) >= 1))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverNecklace,1);
		Npc_RemoveInvItems(hero,itmi_emrlddust_01,1);
		Npc_RemoveInvItems(hero,ItMi_Rockcrystal,1);
		CreateInvItems(hero,itam_enchdexr_02,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_DEX = FALSE;
};


instance PC_ENCHANTING_AMULDEXR_03(C_Info)
{
	npc = PC_Hero;
	nr = 6;
	condition = pc_enchanting_amuldexr_03_condition;
	information = pc_enchanting_amuldexr_03_info;
	permanent = TRUE;
	description = "Amulet of greater agility +15 (1x silver necklace, 1x emerald dust, 1x rock crystal, 1x glacier quartz)";
};


func int pc_enchanting_amuldexr_03_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_DEX == TRUE) && (PLAYER_TALENT_ENCHANTING[2] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_amuldexr_03_info()
{
	if((Npc_HasItems(hero,ItMi_SilverNecklace) >= 1) && (Npc_HasItems(hero,itmi_emrlddust_01) >= 1) && (Npc_HasItems(hero,ItMi_Rockcrystal) >= 1) && (Npc_HasItems(hero,ItMi_Quartz) >= 1))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverNecklace,1);
		Npc_RemoveInvItems(hero,itmi_emrlddust_01,1);
		Npc_RemoveInvItems(hero,ItMi_Rockcrystal,1);
		Npc_RemoveInvItems(hero,ItMi_Quartz,1);
		CreateInvItems(hero,itam_enchdexr_03,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_DEX = FALSE;
};


instance PC_ENCHANTING_BELTDEX_01(C_Info)
{
	npc = PC_Hero;
	nr = 7;
	condition = pc_enchanting_beltdex_01_condition;
	information = pc_enchanting_beltdex_01_info;
	permanent = TRUE;
	description = "Belt of lower agility +5 (1x leather belt, 1x emerald dust)";
};


func int pc_enchanting_beltdex_01_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_DEX == TRUE) && (PLAYER_TALENT_ENCHANTING[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_beltdex_01_info()
{
	if((Npc_HasItems(hero,itbe_addon_enchleather_01) >= 1) && (Npc_HasItems(hero,itmi_emrlddust_01) >= 1))
	{
		Npc_RemoveInvItems(hero,itbe_addon_enchleather_01,1);
		Npc_RemoveInvItems(hero,itmi_emrlddust_01,1);
		CreateInvItems(hero,itbe_addonenchdex_01,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_DEX = FALSE;
};


instance PC_ENCHANTING_BELTDEX_02(C_Info)
{
	npc = PC_Hero;
	nr = 8;
	condition = pc_enchanting_beltdex_02_condition;
	information = pc_enchanting_beltdex_02_info;
	permanent = TRUE;
	description = "Belt of agility +10 (1x leather belt, 1x emerald dust, 1x rock crystal)";
};


func int pc_enchanting_beltdex_02_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_DEX == TRUE) && (PLAYER_TALENT_ENCHANTING[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_beltdex_02_info()
{
	if((Npc_HasItems(hero,itbe_addon_enchleather_01) >= 1) && (Npc_HasItems(hero,itmi_emrlddust_01) >= 1) && (Npc_HasItems(hero,ItMi_Rockcrystal) >= 1))
	{
		Npc_RemoveInvItems(hero,itbe_addon_enchleather_01,1);
		Npc_RemoveInvItems(hero,itmi_emrlddust_01,1);
		Npc_RemoveInvItems(hero,ItMi_Rockcrystal,1);
		CreateInvItems(hero,itbe_addonenchdex_02,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_DEX = FALSE;
};


instance PC_ENCHANTING_BELTDEX_03(C_Info)
{
	npc = PC_Hero;
	nr = 9;
	condition = pc_enchanting_beltdex_03_condition;
	information = pc_enchanting_beltdex_03_info;
	permanent = TRUE;
	description = "Belt of greater agility +15 (1x leather belt, 1x emerald dust, 1x rock crystal, 1x glacier quartz)";
};


func int pc_enchanting_beltdex_03_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_DEX == TRUE) && (PLAYER_TALENT_ENCHANTING[2] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_beltdex_03_info()
{
	if((Npc_HasItems(hero,itbe_addon_enchleather_01) >= 1) && (Npc_HasItems(hero,itmi_emrlddust_01) >= 1) && (Npc_HasItems(hero,ItMi_Rockcrystal) >= 1) && (Npc_HasItems(hero,ItMi_Quartz) >= 1))
	{
		Npc_RemoveInvItems(hero,itbe_addon_enchleather_01,1);
		Npc_RemoveInvItems(hero,itmi_emrlddust_01,1);
		Npc_RemoveInvItems(hero,ItMi_Rockcrystal,1);
		Npc_RemoveInvItems(hero,ItMi_Quartz,1);
		CreateInvItems(hero,itbe_addonenchdex_03,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_DEX = FALSE;
};


instance PC_ENCHANTING_HP(C_Info)
{
	npc = PC_Hero;
	nr = 3;
	condition = pc_enchanting_hp_condition;
	information = pc_enchanting_hp_info;
	permanent = TRUE;
	description = "Health enchantments";
};


func int pc_enchanting_hp_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_HP == FALSE) && (E_ITMS_BASE == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_hp_info()
{
	E_ITMS_HP = TRUE;
	E_ITMS_BASE = FALSE;
};


instance PC_HP_STOP(C_Info)
{
	npc = PC_Hero;
	nr = 99;
	condition = pc_hp_stop_condition;
	information = pc_hp_stop_info;
	permanent = TRUE;
	description = Dialog_Back;
};


func int pc_hp_stop_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_HP == TRUE))
	{
		return TRUE;
	};
};

func void pc_hp_stop_info()
{
	E_ITMS_BASE = TRUE;
	E_ITMS_HP = FALSE;
};


instance PC_ENCHANTING_RINGHP_01(C_Info)
{
	npc = PC_Hero;
	nr = 1;
	condition = pc_enchanting_ringhp_01_condition;
	information = pc_enchanting_ringhp_01_info;
	permanent = TRUE;
	description = "Ring of lower vitality +25 (1x silver ring, 1x amethyst dust, 1x amber dust, 1x aquamarine)";
};


func int pc_enchanting_ringhp_01_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_HP == TRUE) && (PLAYER_TALENT_ENCHANTING[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_ringhp_01_info()
{
	if((Npc_HasItems(hero,ItMi_SilverRing) >= 1) && (Npc_HasItems(hero,itmi_amthstdust_01) >= 1) && (Npc_HasItems(hero,itmi_ambrdust_01) >= 1) && (Npc_HasItems(hero,ItMi_Aquamarine) >= 1))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverRing,1);
		Npc_RemoveInvItems(hero,itmi_amthstdust_01,1);
		Npc_RemoveInvItems(hero,itmi_ambrdust_01,1);
		Npc_RemoveInvItems(hero,ItMi_Aquamarine,1);
		CreateInvItems(hero,itri_enchhp_01,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_HP = FALSE;
};


instance PC_ENCHANTING_RINGHP_02(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_enchanting_ringhp_02_condition;
	information = pc_enchanting_ringhp_02_info;
	permanent = TRUE;
	description = "Ring of vitality +50 (1x silver ring, 2x amethyst dust, 1x amber dust, 2x aquamarine)";
};


func int pc_enchanting_ringhp_02_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_HP == TRUE) && (PLAYER_TALENT_ENCHANTING[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_ringhp_02_info()
{
	if((Npc_HasItems(hero,ItMi_SilverRing) >= 1) && (Npc_HasItems(hero,itmi_amthstdust_01) >= 2) && (Npc_HasItems(hero,itmi_ambrdust_01) >= 1) && (Npc_HasItems(hero,ItMi_Aquamarine) >= 2))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverRing,1);
		Npc_RemoveInvItems(hero,itmi_amthstdust_01,2);
		Npc_RemoveInvItems(hero,itmi_ambrdust_01,1);
		Npc_RemoveInvItems(hero,ItMi_Aquamarine,2);
		CreateInvItems(hero,itri_enchhp_02,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_HP = FALSE;
};


instance PC_ENCHANTING_RINGHP_03(C_Info)
{
	npc = PC_Hero;
	nr = 3;
	condition = pc_enchanting_ringhp_03_condition;
	information = pc_enchanting_ringhp_03_info;
	permanent = TRUE;
	description = "Ring of greater vitality +75 (1x silver ring, 3x amethyst dust, 1x amber dust, 3x aquamarine)";
};


func int pc_enchanting_ringhp_03_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_HP == TRUE) && (PLAYER_TALENT_ENCHANTING[2] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_ringhp_03_info()
{
	if((Npc_HasItems(hero,ItMi_SilverRing) >= 1) && (Npc_HasItems(hero,itmi_amthstdust_01) >= 3) && (Npc_HasItems(hero,itmi_ambrdust_01) >= 1) && (Npc_HasItems(hero,ItMi_Aquamarine) >= 3))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverRing,1);
		Npc_RemoveInvItems(hero,itmi_amthstdust_01,3);
		Npc_RemoveInvItems(hero,itmi_ambrdust_01,1);
		Npc_RemoveInvItems(hero,ItMi_Aquamarine,3);
		CreateInvItems(hero,itri_enchhp_03,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_HP = FALSE;
};


instance PC_ENCHANTING_AMULHTP_01(C_Info)
{
	npc = PC_Hero;
	nr = 4;
	condition = pc_enchanting_amulhtp_01_condition;
	information = pc_enchanting_amulhtp_01_info;
	permanent = TRUE;
	description = "Amulet of lower vitality +50 (1x silver necklace, 1x amethyst dust, 1x amber dust, 1x aquamarine)";
};


func int pc_enchanting_amulhtp_01_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_HP == TRUE) && (PLAYER_TALENT_ENCHANTING[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_amulhtp_01_info()
{
	if((Npc_HasItems(hero,ItMi_SilverNecklace) >= 1) && (Npc_HasItems(hero,itmi_amthstdust_01) >= 1) && (Npc_HasItems(hero,itmi_ambrdust_01) >= 1) && (Npc_HasItems(hero,ItMi_Aquamarine) >= 1))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverNecklace,1);
		Npc_RemoveInvItems(hero,itmi_amthstdust_01,1);
		Npc_RemoveInvItems(hero,itmi_ambrdust_01,1);
		Npc_RemoveInvItems(hero,ItMi_Aquamarine,1);
		CreateInvItems(hero,itam_enchhtp_01,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_HP = FALSE;
};


instance PC_ENCHANTING_AMULHTP_02(C_Info)
{
	npc = PC_Hero;
	nr = 5;
	condition = pc_enchanting_amulhtp_02_condition;
	information = pc_enchanting_amulhtp_02_info;
	permanent = TRUE;
	description = "Amulet of vitality +100 (1x silver necklace, 2x amethyst dust, 1x amber dust, 2x aquamarine)";
};


func int pc_enchanting_amulhtp_02_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_HP == TRUE) && (PLAYER_TALENT_ENCHANTING[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_amulhtp_02_info()
{
	if((Npc_HasItems(hero,ItMi_SilverNecklace) >= 1) && (Npc_HasItems(hero,itmi_amthstdust_01) >= 2) && (Npc_HasItems(hero,itmi_ambrdust_01) >= 1) && (Npc_HasItems(hero,ItMi_Aquamarine) >= 2))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverNecklace,1);
		Npc_RemoveInvItems(hero,itmi_amthstdust_01,2);
		Npc_RemoveInvItems(hero,itmi_ambrdust_01,1);
		Npc_RemoveInvItems(hero,ItMi_Aquamarine,2);
		CreateInvItems(hero,itam_enchhtp_02,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_HP = FALSE;
};


instance PC_ENCHANTING_AMULHTP_03(C_Info)
{
	npc = PC_Hero;
	nr = 6;
	condition = pc_enchanting_amulhtp_03_condition;
	information = pc_enchanting_amulhtp_03_info;
	permanent = TRUE;
	description = "Amulet of greater vitality +150 (1x silver necklace, 3x amethyst dust, 1x amber dust, 3x aquamarine)";
};


func int pc_enchanting_amulhtp_03_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_HP == TRUE) && (PLAYER_TALENT_ENCHANTING[2] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_amulhtp_03_info()
{
	if((Npc_HasItems(hero,ItMi_SilverNecklace) >= 1) && (Npc_HasItems(hero,itmi_amthstdust_01) >= 3) && (Npc_HasItems(hero,itmi_ambrdust_01) >= 1) && (Npc_HasItems(hero,ItMi_Aquamarine) >= 3))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverNecklace,1);
		Npc_RemoveInvItems(hero,itmi_amthstdust_01,3);
		Npc_RemoveInvItems(hero,itmi_ambrdust_01,1);
		Npc_RemoveInvItems(hero,ItMi_Aquamarine,3);
		CreateInvItems(hero,itam_enchhtp_03,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_HP = FALSE;
};


instance PC_ENCHANTING_MP(C_Info)
{
	npc = PC_Hero;
	nr = 4;
	condition = pc_enchanting_mp_condition;
	information = pc_enchanting_mp_info;
	permanent = TRUE;
	description = "Enchantments of magic energy";
};


func int pc_enchanting_mp_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_MP == FALSE) && (E_ITMS_BASE == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_mp_info()
{
	E_ITMS_MP = TRUE;
	E_ITMS_BASE = FALSE;
};


instance PC_MP_STOP(C_Info)
{
	npc = PC_Hero;
	nr = 99;
	condition = pc_mp_stop_condition;
	information = pc_mp_stop_info;
	permanent = TRUE;
	description = Dialog_Back;
};


func int pc_mp_stop_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_MP == TRUE))
	{
		return TRUE;
	};
};

func void pc_mp_stop_info()
{
	E_ITMS_BASE = TRUE;
	E_ITMS_MP = FALSE;
};


instance PC_ENCHANTING_RINGMP_01(C_Info)
{
	npc = PC_Hero;
	nr = 1;
	condition = pc_enchanting_ringmp_01_condition;
	information = pc_enchanting_ringmp_01_info;
	permanent = TRUE;
	description = "Ring of lower energy +5 (1x silver ring, 1x sapphire dust)";
};


func int pc_enchanting_ringmp_01_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_MP == TRUE) && (PLAYER_TALENT_ENCHANTING[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_ringmp_01_info()
{
	if((Npc_HasItems(hero,ItMi_SilverRing) >= 1) && (Npc_HasItems(hero,itmi_spphrdust_01) >= 1))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverRing,1);
		Npc_RemoveInvItems(hero,itmi_spphrdust_01,1);
		CreateInvItems(hero,itri_enchmana_01,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_MP = FALSE;
};


instance PC_ENCHANTING_RINGMP_02(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_enchanting_ringmp_02_condition;
	information = pc_enchanting_ringmp_02_info;
	permanent = TRUE;
	description = "Ring of energy +10 (1x silver ring, 1x sapphire dust, 1x rock crystal)";
};


func int pc_enchanting_ringmp_02_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_MP == TRUE) && (PLAYER_TALENT_ENCHANTING[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_ringmp_02_info()
{
	if((Npc_HasItems(hero,ItMi_SilverRing) >= 1) && (Npc_HasItems(hero,itmi_spphrdust_01) >= 1) && (Npc_HasItems(hero,ItMi_Rockcrystal) >= 1))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverRing,1);
		Npc_RemoveInvItems(hero,itmi_spphrdust_01,1);
		Npc_RemoveInvItems(hero,ItMi_Rockcrystal,1);
		CreateInvItems(hero,itri_enchmana_02,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_MP = FALSE;
};


instance PC_ENCHANTING_RINGMP_03(C_Info)
{
	npc = PC_Hero;
	nr = 3;
	condition = pc_enchanting_ringmp_03_condition;
	information = pc_enchanting_ringmp_03_info;
	permanent = TRUE;
	description = "Ring of greater energy +15 (1x silver ring, 1x sapphire dust, 1x rock crystal, 1x glacier quartz)";
};


func int pc_enchanting_ringmp_03_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_MP == TRUE) && (PLAYER_TALENT_ENCHANTING[2] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_ringmp_03_info()
{
	if((Npc_HasItems(hero,ItMi_SilverRing) >= 1) && (Npc_HasItems(hero,itmi_spphrdust_01) >= 1) && (Npc_HasItems(hero,ItMi_Rockcrystal) >= 1) && (Npc_HasItems(hero,ItMi_Quartz) >= 1))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverRing,1);
		Npc_RemoveInvItems(hero,itmi_spphrdust_01,1);
		Npc_RemoveInvItems(hero,ItMi_Rockcrystal,1);
		Npc_RemoveInvItems(hero,ItMi_Quartz,1);
		CreateInvItems(hero,itri_enchmana_03,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_MP = FALSE;
};


instance PC_ENCHANTING_AMULMANA_01(C_Info)
{
	npc = PC_Hero;
	nr = 4;
	condition = pc_enchanting_amulmana_01_condition;
	information = pc_enchanting_amulmana_01_info;
	permanent = TRUE;
	description = "Amulet of lower energy +10 (1x silver necklace, 1x sapphire dust)";
};


func int pc_enchanting_amulmana_01_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_MP == TRUE) && (PLAYER_TALENT_ENCHANTING[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_amulmana_01_info()
{
	if((Npc_HasItems(hero,ItMi_SilverNecklace) >= 1) && (Npc_HasItems(hero,itmi_spphrdust_01) >= 1))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverNecklace,1);
		Npc_RemoveInvItems(hero,itmi_spphrdust_01,1);
		CreateInvItems(hero,itam_enchntmana_01,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_MP = FALSE;
};


instance PC_ENCHANTING_AMULMANA_02(C_Info)
{
	npc = PC_Hero;
	nr = 5;
	condition = pc_enchanting_amulmana_02_condition;
	information = pc_enchanting_amulmana_02_info;
	permanent = TRUE;
	description = "Amulet of energy +20 (1x silver necklace, 1x sapphire dust, 1x rock crystal)";
};


func int pc_enchanting_amulmana_02_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_MP == TRUE) && (PLAYER_TALENT_ENCHANTING[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_amulmana_02_info()
{
	if((Npc_HasItems(hero,ItMi_SilverNecklace) >= 1) && (Npc_HasItems(hero,itmi_spphrdust_01) >= 1) && (Npc_HasItems(hero,ItMi_Rockcrystal) >= 1))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverNecklace,1);
		Npc_RemoveInvItems(hero,itmi_spphrdust_01,1);
		Npc_RemoveInvItems(hero,ItMi_Rockcrystal,1);
		CreateInvItems(hero,itam_enchntmana_02,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_MP = FALSE;
};


instance PC_ENCHANTING_AMULMANA_03(C_Info)
{
	npc = PC_Hero;
	nr = 6;
	condition = pc_enchanting_amulmana_03_condition;
	information = pc_enchanting_amulmana_03_info;
	permanent = TRUE;
	description = "Amulet of greater energy +30 (1x silver necklace, 1x sapphire dust, 1x rock crystal, 1x glacier quartz)";
};


func int pc_enchanting_amulmana_03_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_MP == TRUE) && (PLAYER_TALENT_ENCHANTING[2] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_amulmana_03_info()
{
	if((Npc_HasItems(hero,ItMi_SilverNecklace) >= 1) && (Npc_HasItems(hero,itmi_spphrdust_01) >= 1) && (Npc_HasItems(hero,ItMi_Rockcrystal) >= 1) && (Npc_HasItems(hero,ItMi_Quartz) >= 1))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverNecklace,1);
		Npc_RemoveInvItems(hero,itmi_spphrdust_01,1);
		Npc_RemoveInvItems(hero,ItMi_Rockcrystal,1);
		Npc_RemoveInvItems(hero,ItMi_Quartz,1);
		CreateInvItems(hero,itam_enchntmana_03,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_MP = FALSE;
};


instance PC_ENCHANTING_ARM(C_Info)
{
	npc = PC_Hero;
	nr = 5;
	condition = pc_enchanting_arm_condition;
	information = pc_enchanting_arm_info;
	permanent = TRUE;
	description = "Enchantments of protection";
};


func int pc_enchanting_arm_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_ARM == FALSE) && (E_ITMS_BASE == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_arm_info()
{
	E_ITMS_ARM = TRUE;
	E_ITMS_BASE = FALSE;
};


instance PC_ARM_STOP(C_Info)
{
	npc = PC_Hero;
	nr = 99;
	condition = pc_arm_stop_condition;
	information = pc_arm_stop_info;
	permanent = TRUE;
	description = Dialog_Back;
};


func int pc_arm_stop_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_ARM == TRUE))
	{
		return TRUE;
	};
};

func void pc_arm_stop_info()
{
	E_ITMS_BASE = TRUE;
	E_ITMS_ARM = FALSE;
};


instance PC_ENCHANTING_RINGUNIDEF_01(C_Info)
{
	npc = PC_Hero;
	nr = 1;
	condition = pc_enchanting_ringunidef_01_condition;
	information = pc_enchanting_ringunidef_01_info;
	permanent = TRUE;
	description = "Ring of audacity +2 (1x silver ring, 1x diamond dust)";
};


func int pc_enchanting_ringunidef_01_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_ARM == TRUE) && (PLAYER_TALENT_ENCHANTING[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_ringunidef_01_info()
{
	if((Npc_HasItems(hero,ItMi_SilverRing) >= 1) && (Npc_HasItems(hero,itmi_dmnddust_01) >= 1))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverRing,1);
		Npc_RemoveInvItems(hero,itmi_dmnddust_01,1);
		CreateInvItems(hero,itri_enchunidef_01,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_ARM = FALSE;
};


instance PC_ENCHANTING_RINGUNIDEF_02(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_enchanting_ringunidef_02_condition;
	information = pc_enchanting_ringunidef_02_info;
	permanent = TRUE;
	description = "Ring of endurance +4 (1x silver ring, 1x diamond dust, 1x rock crystal)";
};


func int pc_enchanting_ringunidef_02_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_ARM == TRUE) && (PLAYER_TALENT_ENCHANTING[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_ringunidef_02_info()
{
	if((Npc_HasItems(hero,ItMi_SilverRing) >= 1) && (Npc_HasItems(hero,itmi_dmnddust_01) >= 1) && (Npc_HasItems(hero,ItMi_Rockcrystal) >= 1))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverRing,1);
		Npc_RemoveInvItems(hero,itmi_dmnddust_01,1);
		Npc_RemoveInvItems(hero,ItMi_Rockcrystal,1);
		CreateInvItems(hero,itri_enchunidef_02,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_ARM = FALSE;
};


instance PC_ENCHANTING_RINGUNIDEF_03(C_Info)
{
	npc = PC_Hero;
	nr = 3;
	condition = pc_enchanting_ringunidef_03_condition;
	information = pc_enchanting_ringunidef_03_info;
	permanent = TRUE;
	description = "Ring of immortality +6 (1x silver ring, 1x diamond dust, 1x rock crystal, 1x glacier quartz)";
};


func int pc_enchanting_ringunidef_03_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_ARM == TRUE) && (PLAYER_TALENT_ENCHANTING[2] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_ringunidef_03_info()
{
	if((Npc_HasItems(hero,ItMi_SilverRing) >= 1) && (Npc_HasItems(hero,itmi_dmnddust_01) >= 1) && (Npc_HasItems(hero,ItMi_Rockcrystal) >= 1) && (Npc_HasItems(hero,ItMi_Quartz) >= 1))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverRing,1);
		Npc_RemoveInvItems(hero,itmi_dmnddust_01,1);
		Npc_RemoveInvItems(hero,ItMi_Rockcrystal,1);
		Npc_RemoveInvItems(hero,ItMi_Quartz,1);
		CreateInvItems(hero,itri_enchunidef_03,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_ARM = FALSE;
};


instance PC_ENCHANTING_AMULUNIDEF_01(C_Info)
{
	npc = PC_Hero;
	nr = 4;
	condition = pc_enchanting_amulunidef_01_condition;
	information = pc_enchanting_amulunidef_01_info;
	permanent = TRUE;
	description = "Amulet of audacity +3 (1x silver necklace, 1x diamond dust)";
};


func int pc_enchanting_amulunidef_01_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_ARM == TRUE) && (PLAYER_TALENT_ENCHANTING[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_amulunidef_01_info()
{
	if((Npc_HasItems(hero,ItMi_SilverNecklace) >= 1) && (Npc_HasItems(hero,itmi_dmnddust_01) >= 1))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverNecklace,1);
		Npc_RemoveInvItems(hero,itmi_dmnddust_01,1);
		CreateInvItems(hero,itam_enchntunidef_01,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_ARM = FALSE;
};


instance PC_ENCHANTING_AMULUNIDEF_02(C_Info)
{
	npc = PC_Hero;
	nr = 5;
	condition = pc_enchanting_amulunidef_02_condition;
	information = pc_enchanting_amulunidef_02_info;
	permanent = TRUE;
	description = "Amulet of endurance +6 (1x silver necklace, 1x diamond dust, 1x rock crystal)";
};


func int pc_enchanting_amulunidef_02_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_ARM == TRUE) && (PLAYER_TALENT_ENCHANTING[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_amulunidef_02_info()
{
	if((Npc_HasItems(hero,ItMi_SilverNecklace) >= 1) && (Npc_HasItems(hero,itmi_dmnddust_01) >= 1) && (Npc_HasItems(hero,ItMi_Rockcrystal) >= 1))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverNecklace,1);
		Npc_RemoveInvItems(hero,itmi_dmnddust_01,1);
		Npc_RemoveInvItems(hero,ItMi_Rockcrystal,1);
		CreateInvItems(hero,itam_enchntunidef_02,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_ARM = FALSE;
};


instance PC_ENCHANTING_AMULUNIDEF_03(C_Info)
{
	npc = PC_Hero;
	nr = 6;
	condition = pc_enchanting_amulunidef_03_condition;
	information = pc_enchanting_amulunidef_03_info;
	permanent = TRUE;
	description = "Amulet of immortality +9 (1x silver necklace, 1x diamond dust, 1x rock crystal, 1x glacier quartz)";
};


func int pc_enchanting_amulunidef_03_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_ARM == TRUE) && (PLAYER_TALENT_ENCHANTING[2] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_amulunidef_03_info()
{
	if((Npc_HasItems(hero,ItMi_SilverNecklace) >= 1) && (Npc_HasItems(hero,itmi_dmnddust_01) >= 1) && (Npc_HasItems(hero,ItMi_Rockcrystal) >= 1) && (Npc_HasItems(hero,ItMi_Quartz) >= 1))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverNecklace,1);
		Npc_RemoveInvItems(hero,itmi_dmnddust_01,1);
		Npc_RemoveInvItems(hero,ItMi_Rockcrystal,1);
		Npc_RemoveInvItems(hero,ItMi_Quartz,1);
		CreateInvItems(hero,itam_enchntunidef_03,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_ARM = FALSE;
};


instance PC_ENCHANTING_WPN(C_Info)
{
	npc = PC_Hero;
	nr = 6;
	condition = pc_enchanting_wpn_condition;
	information = pc_enchanting_wpn_info;
	permanent = TRUE;
	description = "Enchantments of weapon skills";
};


func int pc_enchanting_wpn_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_WPN == FALSE) && (E_ITMS_BASE == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_wpn_info()
{
	E_ITMS_WPN = TRUE;
	E_ITMS_BASE = FALSE;
};


instance PC_WPN_STOP(C_Info)
{
	npc = PC_Hero;
	nr = 99;
	condition = pc_wpn_stop_condition;
	information = pc_wpn_stop_info;
	permanent = TRUE;
	description = Dialog_Back;
};


func int pc_wpn_stop_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_WPN == TRUE))
	{
		return TRUE;
	};
};

func void pc_wpn_stop_info()
{
	E_ITMS_BASE = TRUE;
	E_ITMS_WPN = FALSE;
};


instance PC_ENCHANTING_WPN_MELEE(C_Info)
{
	npc = PC_Hero;
	nr = 1;
	condition = pc_enchanting_melee_condition;
	information = pc_enchanting_melee_info;
	permanent = TRUE;
	description = "Melee combat";
};


func int pc_enchanting_melee_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_MELEE == FALSE) && (E_ITMS_WPN == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_melee_info()
{
	E_ITMS_MELEE = TRUE;
	E_ITMS_WPN = FALSE;
};


instance PC_MELEE_STOP(C_Info)
{
	npc = PC_Hero;
	nr = 99;
	condition = pc_melee_stop_condition;
	information = pc_melee_stop_info;
	permanent = TRUE;
	description = Dialog_Back;
};


func int pc_melee_stop_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_MELEE == TRUE))
	{
		return TRUE;
	};
};

func void pc_melee_stop_info()
{
	E_ITMS_WPN = TRUE;
	E_ITMS_MELEE = FALSE;
};


instance PC_ENCHANTING_RING1H_01(C_Info)
{
	npc = PC_Hero;
	nr = 1;
	condition = pc_enchanting_ring1h_01_condition;
	information = pc_enchanting_ring1h_01_info;
	permanent = TRUE;
	description = "Ring of one-hander beginner +4 (1x silver ring, 1x diamond dust)";
};


func int pc_enchanting_ring1h_01_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_MELEE == TRUE) && (PLAYER_TALENT_ENCHANTING[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_ring1h_01_info()
{
	if((Npc_HasItems(hero,ItMi_SilverRing) >= 1) && (Npc_HasItems(hero,itmi_dmnddust_01) >= 1))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverRing,1);
		Npc_RemoveInvItems(hero,itmi_dmnddust_01,1);
		CreateInvItems(hero,itri_addon_ench1h_01,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_MELEE = FALSE;
};


instance PC_ENCHANTING_RING1H_02(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_enchanting_ring1h_02_condition;
	information = pc_enchanting_ring1h_02_info;
	permanent = TRUE;
	description = "Ring of one-hander warrior +7 (1x silver ring, 1x diamond dust, 1x rock crystal)";
};


func int pc_enchanting_ring1h_02_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_MELEE == TRUE) && (PLAYER_TALENT_ENCHANTING[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_ring1h_02_info()
{
	if((Npc_HasItems(hero,ItMi_SilverRing) >= 1) && (Npc_HasItems(hero,itmi_dmnddust_01) >= 1) && (Npc_HasItems(hero,ItMi_Rockcrystal) >= 1))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverRing,1);
		Npc_RemoveInvItems(hero,itmi_dmnddust_01,1);
		Npc_RemoveInvItems(hero,ItMi_Rockcrystal,1);
		CreateInvItems(hero,itri_addon_ench1h_02,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_MELEE = FALSE;
};


instance PC_ENCHANTING_RING1H_03(C_Info)
{
	npc = PC_Hero;
	nr = 3;
	condition = pc_enchanting_ring1h_03_condition;
	information = pc_enchanting_ring1h_03_info;
	permanent = TRUE;
	description = "Ring of one-hander master +10 (1x silver ring, 1x diamond dust, 1x rock crystal, 1x glacier quartz)";
};


func int pc_enchanting_ring1h_03_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_MELEE == TRUE) && (PLAYER_TALENT_ENCHANTING[2] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_ring1h_03_info()
{
	if((Npc_HasItems(hero,ItMi_SilverRing) >= 1) && (Npc_HasItems(hero,itmi_dmnddust_01) >= 1) && (Npc_HasItems(hero,ItMi_Rockcrystal) >= 1) && (Npc_HasItems(hero,ItMi_Quartz) >= 1))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverRing,1);
		Npc_RemoveInvItems(hero,itmi_dmnddust_01,1);
		Npc_RemoveInvItems(hero,ItMi_Rockcrystal,1);
		Npc_RemoveInvItems(hero,ItMi_Quartz,1);
		CreateInvItems(hero,itri_addon_ench1h_02,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_MELEE = FALSE;
};


instance PC_ENCHANTING_RING2H_01(C_Info)
{
	npc = PC_Hero;
	nr = 4;
	condition = pc_enchanting_ring2h_01_condition;
	information = pc_enchanting_ring2h_01_info;
	permanent = TRUE;
	description = "Ring of two-hander beginner +4 (1x silver ring, 1x diamond dust)";
};


func int pc_enchanting_ring2h_01_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_MELEE == TRUE) && (PLAYER_TALENT_ENCHANTING[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_ring2h_01_info()
{
	if((Npc_HasItems(hero,ItMi_SilverRing) >= 1) && (Npc_HasItems(hero,itmi_dmnddust_01) >= 1))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverRing,1);
		Npc_RemoveInvItems(hero,itmi_dmnddust_01,1);
		CreateInvItems(hero,itri_addon_ench2h_01,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_MELEE = FALSE;
};


instance PC_ENCHANTING_RING2H_02(C_Info)
{
	npc = PC_Hero;
	nr = 5;
	condition = pc_enchanting_ring2h_02_condition;
	information = pc_enchanting_ring2h_02_info;
	permanent = TRUE;
	description = "Ring of two-hander warrior +7 (1x silver ring, 1x diamond dust, 1x rock crystal)";
};


func int pc_enchanting_ring2h_02_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_MELEE == TRUE) && (PLAYER_TALENT_ENCHANTING[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_ring2h_02_info()
{
	if((Npc_HasItems(hero,ItMi_SilverRing) >= 1) && (Npc_HasItems(hero,itmi_dmnddust_01) >= 1) && (Npc_HasItems(hero,ItMi_Rockcrystal) >= 1))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverRing,1);
		Npc_RemoveInvItems(hero,itmi_dmnddust_01,1);
		Npc_RemoveInvItems(hero,ItMi_Rockcrystal,1);
		CreateInvItems(hero,itri_addon_ench2h_02,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_MELEE = FALSE;
};


instance PC_ENCHANTING_RING2H_03(C_Info)
{
	npc = PC_Hero;
	nr = 6;
	condition = pc_enchanting_ring2h_03_condition;
	information = pc_enchanting_ring2h_03_info;
	permanent = TRUE;
	description = "Ring of two-hander master +10 (1x silver ring, 1x diamond dust, 1x rock crystal, 1x glacier quartz)";
};


func int pc_enchanting_ring2h_03_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_MELEE == TRUE) && (PLAYER_TALENT_ENCHANTING[2] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_ring2h_03_info()
{
	if((Npc_HasItems(hero,ItMi_SilverRing) >= 1) && (Npc_HasItems(hero,itmi_dmnddust_01) >= 1) && (Npc_HasItems(hero,ItMi_Rockcrystal) >= 1) && (Npc_HasItems(hero,ItMi_Quartz) >= 1))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverRing,1);
		Npc_RemoveInvItems(hero,itmi_dmnddust_01,1);
		Npc_RemoveInvItems(hero,ItMi_Rockcrystal,1);
		Npc_RemoveInvItems(hero,ItMi_Quartz,1);
		CreateInvItems(hero,itri_addon_ench2h_03,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_MELEE = FALSE;
};


instance PC_ENCHANTING_WPN_RANGE(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_enchanting_range_condition;
	information = pc_enchanting_range_info;
	permanent = TRUE;
	description = "Ranged combat";
};


func int pc_enchanting_range_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_RANGE == FALSE) && (E_ITMS_WPN == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_range_info()
{
	E_ITMS_RANGE = TRUE;
	E_ITMS_WPN = FALSE;
};


instance PC_RANGE_STOP(C_Info)
{
	npc = PC_Hero;
	nr = 99;
	condition = pc_range_stop_condition;
	information = pc_range_stop_info;
	permanent = TRUE;
	description = Dialog_Back;
};


func int pc_range_stop_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_RANGE == TRUE))
	{
		return TRUE;
	};
};

func void pc_range_stop_info()
{
	E_ITMS_WPN = TRUE;
	E_ITMS_RANGE = FALSE;
};


instance PC_ENCHANTING_RINGBW_01(C_Info)
{
	npc = PC_Hero;
	nr = 1;
	condition = pc_enchanting_ringbw_01_condition;
	information = pc_enchanting_ringbw_01_info;
	permanent = TRUE;
	description = "Ring of beginner hunter +3 (1x silver ring, 1x topaz dust)";
};


func int pc_enchanting_ringbw_01_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_RANGE == TRUE) && (PLAYER_TALENT_ENCHANTING[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_ringbw_01_info()
{
	if((Npc_HasItems(hero,ItMi_SilverRing) >= 1) && (Npc_HasItems(hero,itmi_tpzdust_01) >= 1))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverRing,1);
		Npc_RemoveInvItems(hero,itmi_tpzdust_01,1);
		CreateInvItems(hero,itri_addon_enchbows_01,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_RANGE = FALSE;
};


instance PC_ENCHANTING_RINGBW_02(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_enchanting_ringbw_02_condition;
	information = pc_enchanting_ringbw_02_info;
	permanent = TRUE;
	description = "Ring of skilled hunter +5 (1x silver ring, 1x topaz dust, 1x rock crystal)";
};


func int pc_enchanting_ringbw_02_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_RANGE == TRUE) && (PLAYER_TALENT_ENCHANTING[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_ringbw_02_info()
{
	if((Npc_HasItems(hero,ItMi_SilverRing) >= 1) && (Npc_HasItems(hero,itmi_tpzdust_01) >= 1) && (Npc_HasItems(hero,ItMi_Rockcrystal) >= 1))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverRing,1);
		Npc_RemoveInvItems(hero,itmi_tpzdust_01,1);
		Npc_RemoveInvItems(hero,ItMi_Rockcrystal,1);
		CreateInvItems(hero,itri_addon_enchbows_02,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_RANGE = FALSE;
};


instance PC_ENCHANTING_RINGBW_03(C_Info)
{
	npc = PC_Hero;
	nr = 3;
	condition = pc_enchanting_ringbw_03_condition;
	information = pc_enchanting_ringbw_03_info;
	permanent = TRUE;
	description = "Ring of master hunter +7 (1x silver ring, 1x topaz dust, 1x rock crystal, 1x glacier quartz)";
};


func int pc_enchanting_ringbw_03_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_RANGE == TRUE) && (PLAYER_TALENT_ENCHANTING[2] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_ringbw_03_info()
{
	if((Npc_HasItems(hero,ItMi_SilverRing) >= 1) && (Npc_HasItems(hero,itmi_tpzdust_01) >= 1) && (Npc_HasItems(hero,ItMi_Rockcrystal) >= 1) && (Npc_HasItems(hero,ItMi_Quartz) >= 1))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverRing,1);
		Npc_RemoveInvItems(hero,itmi_tpzdust_01,1);
		Npc_RemoveInvItems(hero,ItMi_Rockcrystal,1);
		Npc_RemoveInvItems(hero,ItMi_Quartz,1);
		CreateInvItems(hero,itri_addon_enchbows_03,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_RANGE = FALSE;
};


instance PC_ENCHANTING_RINGCB_01(C_Info)
{
	npc = PC_Hero;
	nr = 4;
	condition = pc_enchanting_ringcb_01_condition;
	information = pc_enchanting_ringcb_01_info;
	permanent = TRUE;
	description = "Ring of beginner crossbowman +3 (1x silver ring, 1x topaz dust)";
};


func int pc_enchanting_ringcb_01_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_RANGE == TRUE) && (PLAYER_TALENT_ENCHANTING[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_ringcb_01_info()
{
	if((Npc_HasItems(hero,ItMi_SilverRing) >= 1) && (Npc_HasItems(hero,itmi_tpzdust_01) >= 1))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverRing,1);
		Npc_RemoveInvItems(hero,itmi_tpzdust_01,1);
		CreateInvItems(hero,itri_addon_ench_b_01,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_RANGE = FALSE;
};


instance PC_ENCHANTING_RINGCB_02(C_Info)
{
	npc = PC_Hero;
	nr = 5;
	condition = pc_enchanting_ringcb_02_condition;
	information = pc_enchanting_ringcb_02_info;
	permanent = TRUE;
	description = "Ring of skilled crossbowman +5 (1x silver ring, 1x topaz dust, 1x rock crystal)";
};


func int pc_enchanting_ringcb_02_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_RANGE == TRUE) && (PLAYER_TALENT_ENCHANTING[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_ringcb_02_info()
{
	if((Npc_HasItems(hero,ItMi_SilverRing) >= 1) && (Npc_HasItems(hero,itmi_tpzdust_01) >= 1) && (Npc_HasItems(hero,ItMi_Rockcrystal) >= 1))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverRing,1);
		Npc_RemoveInvItems(hero,itmi_tpzdust_01,1);
		Npc_RemoveInvItems(hero,ItMi_Rockcrystal,1);
		CreateInvItems(hero,itri_addon_ench_b_02,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_RANGE = FALSE;
};


instance PC_ENCHANTING_RINGCB_03(C_Info)
{
	npc = PC_Hero;
	nr = 6;
	condition = pc_enchanting_ringcb_03_condition;
	information = pc_enchanting_ringcb_03_info;
	permanent = TRUE;
	description = "Ring of master crossbowman +7 (1x silver ring, 1x topaz dust, 1x rock crystal, 1x glacier quartz)";
};


func int pc_enchanting_ringcb_03_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_RANGE == TRUE) && (PLAYER_TALENT_ENCHANTING[2] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_ringcb_03_info()
{
	if((Npc_HasItems(hero,ItMi_SilverRing) >= 1) && (Npc_HasItems(hero,itmi_tpzdust_01) >= 1) && (Npc_HasItems(hero,ItMi_Rockcrystal) >= 1) && (Npc_HasItems(hero,ItMi_Quartz) >= 1))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverRing,1);
		Npc_RemoveInvItems(hero,itmi_tpzdust_01,1);
		Npc_RemoveInvItems(hero,ItMi_Rockcrystal,1);
		Npc_RemoveInvItems(hero,ItMi_Quartz,1);
		CreateInvItems(hero,itri_addon_ench_b_03,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_RANGE = FALSE;
};


instance PC_ENCHANTING_WGT(C_Info)
{
	npc = PC_Hero;
	nr = 7;
	condition = pc_enchanting_wgt_condition;
	information = pc_enchanting_wgt_info;
	permanent = TRUE;
	description = "Weight enchantments";
};


func int pc_enchanting_wgt_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_WGT == FALSE) && (E_ITMS_BASE == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_wgt_info()
{
	E_ITMS_WGT = TRUE;
	E_ITMS_BASE = FALSE;
};


instance PC_WGT_STOP(C_Info)
{
	npc = PC_Hero;
	nr = 99;
	condition = pc_wgt_stop_condition;
	information = pc_wgt_stop_info;
	permanent = TRUE;
	description = Dialog_Back;
};


func int pc_wgt_stop_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_WGT == TRUE))
	{
		return TRUE;
	};
};

func void pc_wgt_stop_info()
{
	E_ITMS_BASE = TRUE;
	E_ITMS_WGT = FALSE;
};


instance PC_ENCHANTING_RINGWGHT_01(C_Info)
{
	npc = PC_Hero;
	nr = 1;
	condition = pc_enchanting_ringwght_01_condition;
	information = pc_enchanting_ringwght_01_info;
	permanent = TRUE;
	description = "Ring of the wanderer +5 (1x silver ring, 1x ruby dust, 1x amber dust)";
};


func int pc_enchanting_ringwght_01_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_WGT == TRUE) && (PLAYER_TALENT_ENCHANTING[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_ringwght_01_info()
{
	if((Npc_HasItems(hero,ItMi_SilverRing) >= 1) && (Npc_HasItems(hero,itmi_rubdust_01) >= 1) && (Npc_HasItems(hero,itmi_ambrdust_01) >= 1))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverRing,1);
		Npc_RemoveInvItems(hero,itmi_rubdust_01,1);
		Npc_RemoveInvItems(hero,itmi_ambrdust_01,1);
		CreateInvItems(hero,itri_enchwght_01,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_WGT = FALSE;
};


instance PC_ENCHANTING_RINGWGHT_02(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_enchanting_ringwght_02_condition;
	information = pc_enchanting_ringwght_02_info;
	permanent = TRUE;
	description = "Ring of the traveller +10 (1x silver ring, 1x ruby dust, 2x amber dusts)";
};


func int pc_enchanting_ringwght_02_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_WGT == TRUE) && (PLAYER_TALENT_ENCHANTING[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_ringwght_02_info()
{
	if((Npc_HasItems(hero,ItMi_SilverRing) >= 1) && (Npc_HasItems(hero,itmi_rubdust_01) >= 1) && (Npc_HasItems(hero,itmi_ambrdust_01) >= 2))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverRing,1);
		Npc_RemoveInvItems(hero,itmi_rubdust_01,1);
		Npc_RemoveInvItems(hero,itmi_ambrdust_01,2);
		CreateInvItems(hero,itri_enchwght_02,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_WGT = FALSE;
};


instance PC_ENCHANTING_RINGWGHT_03(C_Info)
{
	npc = PC_Hero;
	nr = 3;
	condition = pc_enchanting_ringwght_03_condition;
	information = pc_enchanting_ringwght_03_info;
	permanent = TRUE;
	description = "Ring of the adventurer +15 (1x silver ring, 1x ruby dust, 3x amber dusts)";
};


func int pc_enchanting_ringwght_03_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_WGT == TRUE) && (PLAYER_TALENT_ENCHANTING[2] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_ringwght_03_info()
{
	if((Npc_HasItems(hero,ItMi_SilverRing) >= 1) && (Npc_HasItems(hero,itmi_rubdust_01) >= 1) && (Npc_HasItems(hero,itmi_ambrdust_01) >= 3))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverRing,1);
		Npc_RemoveInvItems(hero,itmi_rubdust_01,1);
		Npc_RemoveInvItems(hero,itmi_ambrdust_01,3);
		CreateInvItems(hero,itri_enchwght_03,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_WGT = FALSE;
};


instance PC_ENCHANTING_AMULWGHT_01(C_Info)
{
	npc = PC_Hero;
	nr = 4;
	condition = pc_enchanting_amulwght_01_condition;
	information = pc_enchanting_amulwght_01_info;
	permanent = TRUE;
	description = "Amulet of the wanderer +10 (1x silver necklace, 1x ruby dust, 1x amber dust)";
};


func int pc_enchanting_amulwght_01_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_WGT == TRUE) && (PLAYER_TALENT_ENCHANTING[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_amulwght_01_info()
{
	if((Npc_HasItems(hero,ItMi_SilverNecklace) >= 1) && (Npc_HasItems(hero,itmi_rubdust_01) >= 1) && (Npc_HasItems(hero,itmi_ambrdust_01) >= 1))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverNecklace,1);
		Npc_RemoveInvItems(hero,itmi_rubdust_01,1);
		Npc_RemoveInvItems(hero,itmi_ambrdust_01,1);
		CreateInvItems(hero,itam_enchtwght_01,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_WGT = FALSE;
};


instance PC_ENCHANTING_AMULWGHT_02(C_Info)
{
	npc = PC_Hero;
	nr = 5;
	condition = pc_enchanting_amulwght_02_condition;
	information = pc_enchanting_amulwght_02_info;
	permanent = TRUE;
	description = "Amulet of the traveller +20 (1x silver necklace, 1x ruby dust, 2x amber dusts)";
};


func int pc_enchanting_amulwght_02_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_WGT == TRUE) && (PLAYER_TALENT_ENCHANTING[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_amulwght_02_info()
{
	if((Npc_HasItems(hero,ItMi_SilverNecklace) >= 1) && (Npc_HasItems(hero,itmi_rubdust_01) >= 1) && (Npc_HasItems(hero,itmi_ambrdust_01) >= 2))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverNecklace,1);
		Npc_RemoveInvItems(hero,itmi_rubdust_01,1);
		Npc_RemoveInvItems(hero,itmi_ambrdust_01,2);
		CreateInvItems(hero,itam_enchtwght_02,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_WGT = FALSE;
};


instance PC_ENCHANTING_AMULWGHT_03(C_Info)
{
	npc = PC_Hero;
	nr = 6;
	condition = pc_enchanting_amulwght_03_condition;
	information = pc_enchanting_amulwght_03_info;
	permanent = TRUE;
	description = "Amulet of the adventurer +30 (1x silver necklace, 1x ruby dust, 3x amber dusts)";
};


func int pc_enchanting_amulwght_03_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_WGT == TRUE) && (PLAYER_TALENT_ENCHANTING[2] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_amulwght_03_info()
{
	if((Npc_HasItems(hero,ItMi_SilverNecklace) >= 1) && (Npc_HasItems(hero,itmi_rubdust_01) >= 1) && (Npc_HasItems(hero,itmi_ambrdust_01) >= 3))
	{
		Npc_RemoveInvItems(hero,ItMi_SilverNecklace,1);
		Npc_RemoveInvItems(hero,itmi_rubdust_01,1);
		Npc_RemoveInvItems(hero,itmi_ambrdust_01,3);
		CreateInvItems(hero,itam_enchtwght_03,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_WGT = FALSE;
};


instance PC_ENCHANTING_BELTWGHT_01(C_Info)
{
	npc = PC_Hero;
	nr = 7;
	condition = pc_enchanting_beltwght_01_condition;
	information = pc_enchanting_beltwght_01_info;
	permanent = TRUE;
	description = "Belt of the wanderer +15 (1x leather belt, 1x ruby dust, 1x amber dust)";
};


func int pc_enchanting_beltwght_01_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_WGT == TRUE) && (PLAYER_TALENT_ENCHANTING[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_beltwght_01_info()
{
	if((Npc_HasItems(hero,itbe_addon_enchleather_01) >= 1) && (Npc_HasItems(hero,itmi_rubdust_01) >= 1) && (Npc_HasItems(hero,itmi_ambrdust_01) >= 1))
	{
		Npc_RemoveInvItems(hero,itbe_addon_enchleather_01,1);
		Npc_RemoveInvItems(hero,itmi_rubdust_01,1);
		Npc_RemoveInvItems(hero,itmi_ambrdust_01,1);
		CreateInvItems(hero,itbe_addon_wght_15,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_WGT = FALSE;
};


instance PC_ENCHANTING_BELTWGHT_02(C_Info)
{
	npc = PC_Hero;
	nr = 8;
	condition = pc_enchanting_beltwght_02_condition;
	information = pc_enchanting_beltwght_02_info;
	permanent = TRUE;
	description = "Belt of the traveller +25 (1x leather belt, 1x ruby dust, 2x amber dusts)";
};


func int pc_enchanting_beltwght_02_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_WGT == TRUE) && (PLAYER_TALENT_ENCHANTING[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_beltwght_02_info()
{
	if((Npc_HasItems(hero,itbe_addon_enchleather_01) >= 1) && (Npc_HasItems(hero,itmi_rubdust_01) >= 1) && (Npc_HasItems(hero,itmi_ambrdust_01) >= 2))
	{
		Npc_RemoveInvItems(hero,itbe_addon_enchleather_01,1);
		Npc_RemoveInvItems(hero,itmi_rubdust_01,1);
		Npc_RemoveInvItems(hero,itmi_ambrdust_01,2);
		CreateInvItems(hero,itbe_addon_wght_25,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_WGT = FALSE;
};


instance PC_ENCHANTING_BELTWGHT_03(C_Info)
{
	npc = PC_Hero;
	nr = 9;
	condition = pc_enchanting_beltwght_03_condition;
	information = pc_enchanting_beltwght_03_info;
	permanent = TRUE;
	description = "Belt of the adventurer +35 (1x leather belt, 1x ruby dust, 3x amber dust)";
};


func int pc_enchanting_beltwght_03_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_WGT == TRUE) && (PLAYER_TALENT_ENCHANTING[2] == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_beltwght_03_info()
{
	if((Npc_HasItems(hero,itbe_addon_enchleather_01) >= 1) && (Npc_HasItems(hero,itmi_rubdust_01) >= 1) && (Npc_HasItems(hero,itmi_ambrdust_01) >= 3))
	{
		Npc_RemoveInvItems(hero,itbe_addon_enchleather_01,1);
		Npc_RemoveInvItems(hero,itmi_rubdust_01,1);
		Npc_RemoveInvItems(hero,itmi_ambrdust_01,3);
		CreateInvItems(hero,itbe_addon_wght_35,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_WGT = FALSE;
};


instance PC_ENCHANTING_DUST(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_enchanting_dust_condition;
	information = pc_enchanting_dust_info;
	permanent = TRUE;
	description = "Salvage gems";
};


func int pc_enchanting_dust_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_BASE == FALSE) && (E_ITMS_MASTER == FALSE) && (E_DUST_BASE == FALSE) && (E_FRNT_BASE == FALSE) && (E_ITMS_STR == FALSE) && (E_ITMS_DEX == FALSE) && (E_ITMS_HP == FALSE) && (E_ITMS_MP == FALSE) && (E_ITMS_ARM == FALSE) && (E_ITMS_WPN == FALSE) && (E_ITMS_MELEE == FALSE) && (E_ITMS_RANGE == FALSE) && (E_ITMS_WGT == FALSE))
	{
		return TRUE;
	};
};

func void pc_enchanting_dust_info()
{
	E_DUST_BASE = TRUE;
};


instance PC_DUST_STOP(C_Info)
{
	npc = PC_Hero;
	nr = 99;
	condition = pc_dust_stop_condition;
	information = pc_dust_stop_info;
	permanent = TRUE;
	description = Dialog_Back;
};


func int pc_dust_stop_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_DUST_BASE == TRUE))
	{
		return TRUE;
	};
};

func void pc_dust_stop_info()
{
	E_DUST_BASE = FALSE;
};


instance PC_ENCHANTING_DESTROYAMBER(C_Info)
{
	npc = PC_Hero;
	nr = 1;
	condition = pc_enchanting_destroyamber_condition;
	information = pc_enchanting_destroyamber_info;
	permanent = TRUE;
	description = "Salvage amber";
};


func int pc_enchanting_destroyamber_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_DUST_BASE == TRUE) && (Npc_HasItems(hero,itmi_amber) >= 1))
	{
		return TRUE;
	};
};

func void pc_enchanting_destroyamber_info()
{
	if(Npc_HasItems(hero,itmi_amber) >= 1)
	{
		CreateInvItems(hero,itmi_ambrdust_01,1);
		Npc_RemoveInvItems(hero,itmi_amber,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen("Received amber dust!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_DUST_BASE = FALSE;
};


instance PC_ENCHANTING_DESTROYAMETHYST(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_enchanting_destroyamethyst_condition;
	information = pc_enchanting_destroyamethyst_info;
	permanent = TRUE;
	description = "Salvage amethyst";
};


func int pc_enchanting_destroyamethyst_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_DUST_BASE == TRUE) && (Npc_HasItems(hero,itmi_amethyst) >= 1))
	{
		return TRUE;
	};
};

func void pc_enchanting_destroyamethyst_info()
{
	if(Npc_HasItems(hero,itmi_amethyst) >= 1)
	{
		CreateInvItems(hero,itmi_amthstdust_01,1);
		Npc_RemoveInvItems(hero,itmi_amethyst,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen("Received amethyst dust!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_DUST_BASE = FALSE;
};


instance PC_ENCHANTING_DESTROYTOPAZ(C_Info)
{
	npc = PC_Hero;
	nr = 3;
	condition = pc_enchanting_destroytopaz_condition;
	information = pc_enchanting_destroytopaz_info;
	permanent = TRUE;
	description = "Salvage topaz";
};


func int pc_enchanting_destroytopaz_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_DUST_BASE == TRUE) && (Npc_HasItems(hero,itmi_topaz) >= 1))
	{
		return TRUE;
	};
};

func void pc_enchanting_destroytopaz_info()
{
	if(Npc_HasItems(hero,itmi_topaz) >= 1)
	{
		CreateInvItems(hero,itmi_tpzdust_01,1);
		Npc_RemoveInvItems(hero,itmi_topaz,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen("Received topaz dust!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_DUST_BASE = FALSE;
};


instance PC_ENCHANTING_DESTROYRUBY(C_Info)
{
	npc = PC_Hero;
	nr = 4;
	condition = pc_enchanting_destroyruby_condition;
	information = pc_enchanting_destroyruby_info;
	permanent = TRUE;
	description = "Salvage ruby";
};


func int pc_enchanting_destroyruby_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_DUST_BASE == TRUE) && (Npc_HasItems(hero,itmi_ruby) >= 1))
	{
		return TRUE;
	};
};

func void pc_enchanting_destroyruby_info()
{
	if(Npc_HasItems(hero,itmi_ruby) >= 1)
	{
		CreateInvItems(hero,itmi_rubdust_01,1);
		Npc_RemoveInvItems(hero,itmi_ruby,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen("Received ruby dust!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_DUST_BASE = FALSE;
};


instance PC_ENCHANTING_DESTROYEMERALD(C_Info)
{
	npc = PC_Hero;
	nr = 5;
	condition = pc_enchanting_destroyemerald_condition;
	information = pc_enchanting_destroyemerald_info;
	permanent = TRUE;
	description = "Salvage emerald";
};


func int pc_enchanting_destroyemerald_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_DUST_BASE == TRUE) && (Npc_HasItems(hero,itmi_emerald) >= 1))
	{
		return TRUE;
	};
};

func void pc_enchanting_destroyemerald_info()
{
	if(Npc_HasItems(hero,itmi_emerald) >= 1)
	{
		CreateInvItems(hero,itmi_emrlddust_01,1);
		Npc_RemoveInvItems(hero,itmi_emerald,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen("Received emerald dust!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_DUST_BASE = FALSE;
};


instance PC_ENCHANTING_DESTROYSAPPHIRE(C_Info)
{
	npc = PC_Hero;
	nr = 6;
	condition = pc_enchanting_destroysapphire_condition;
	information = pc_enchanting_destroysapphire_info;
	permanent = TRUE;
	description = "Salvage sapphire";
};


func int pc_enchanting_destroysapphire_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_DUST_BASE == TRUE) && (Npc_HasItems(hero,itmi_sapphire) >= 1))
	{
		return TRUE;
	};
};

func void pc_enchanting_destroysapphire_info()
{
	if(Npc_HasItems(hero,itmi_sapphire) >= 1)
	{
		CreateInvItems(hero,itmi_spphrdust_01,1);
		Npc_RemoveInvItems(hero,itmi_sapphire,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen("Received sapphire dust!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_DUST_BASE = FALSE;
};


instance PC_ENCHANTING_DESTROYDIAMOND(C_Info)
{
	npc = PC_Hero;
	nr = 7;
	condition = pc_enchanting_destroydiamond_condition;
	information = pc_enchanting_destroydiamond_info;
	permanent = TRUE;
	description = "Salvage diamond";
};


func int pc_enchanting_destroydiamond_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_DUST_BASE == TRUE) && (Npc_HasItems(hero,itmi_diamond) >= 1))
	{
		return TRUE;
	};
};

func void pc_enchanting_destroydiamond_info()
{
	if(Npc_HasItems(hero,itmi_diamond) >= 1)
	{
		CreateInvItems(hero,itmi_dmnddust_01,1);
		Npc_RemoveInvItems(hero,itmi_diamond,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen("Received diamond dust!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_DUST_BASE = FALSE;
};


instance PC_ENCHANTING_FRAGMENTS(C_Info)
{
	npc = PC_Hero;
	nr = 3;
	condition = pc_enchanting_fragments_condition;
	information = pc_enchanting_fragments_info;
	permanent = TRUE;
	description = "Combine gem fragments";
};


func int pc_enchanting_fragments_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_BASE == FALSE) && (E_ITMS_MASTER == FALSE) && (E_DUST_BASE == FALSE) && (E_FRNT_BASE == FALSE) && (E_ITMS_STR == FALSE) && (E_ITMS_DEX == FALSE) && (E_ITMS_HP == FALSE) && (E_ITMS_MP == FALSE) && (E_ITMS_ARM == FALSE) && (E_ITMS_WPN == FALSE) && (E_ITMS_MELEE == FALSE) && (E_ITMS_RANGE == FALSE) && (E_ITMS_WGT == FALSE))
	{
		return TRUE;
	};
};

func void pc_enchanting_fragments_info()
{
	E_FRNT_BASE = TRUE;
};


instance PC_FRAGMENTS_STOP(C_Info)
{
	npc = PC_Hero;
	nr = 99;
	condition = pc_fragments_stop_condition;
	information = pc_fragments_stop_info;
	permanent = TRUE;
	description = Dialog_Back;
};


func int pc_fragments_stop_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_FRNT_BASE == TRUE))
	{
		return TRUE;
	};
};

func void pc_fragments_stop_info()
{
	E_FRNT_BASE = FALSE;
};


instance PC_ENCHANTING_CREATEAMBER(C_Info)
{
	npc = PC_Hero;
	nr = 1;
	condition = pc_enchanting_createamber_condition;
	information = pc_enchanting_createamber_info;
	permanent = TRUE;
	description = "Create amber (3x amber fragments)";
};


func int pc_enchanting_createamber_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_FRNT_BASE == TRUE) && (Npc_HasItems(hero,itmi_ambrfragments_01) >= 3))
	{
		return TRUE;
	};
};

func void pc_enchanting_createamber_info()
{
	if(Npc_HasItems(hero,itmi_ambrfragments_01) >= 3)
	{
		CreateInvItems(hero,itmi_amber,1);
		Npc_RemoveInvItems(hero,itmi_ambrfragments_01,3);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen("Amber created!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_FRNT_BASE = FALSE;
};


instance PC_ENCHANTING_CREATEAMETHYST(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_enchanting_createamethyst_condition;
	information = pc_enchanting_createamethyst_info;
	permanent = TRUE;
	description = "Create amethyst (3x amethyst fragments)";
};


func int pc_enchanting_createamethyst_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_FRNT_BASE == TRUE) && (Npc_HasItems(hero,itmi_amthstfragments_01) >= 3))
	{
		return TRUE;
	};
};

func void pc_enchanting_createamethyst_info()
{
	if(Npc_HasItems(hero,itmi_amthstfragments_01) >= 3)
	{
		CreateInvItems(hero,itmi_amethyst,1);
		Npc_RemoveInvItems(hero,itmi_amthstfragments_01,3);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen("Amethyst created!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_FRNT_BASE = FALSE;
};


instance PC_ENCHANTING_CREATETOPAZ(C_Info)
{
	npc = PC_Hero;
	nr = 3;
	condition = pc_enchanting_createtopaz_condition;
	information = pc_enchanting_createtopaz_info;
	permanent = TRUE;
	description = "Create topaz (3x topaz fragments)";
};


func int pc_enchanting_createtopaz_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_FRNT_BASE == TRUE) && (Npc_HasItems(hero,itmi_tpzfragments_01) >= 3))
	{
		return TRUE;
	};
};

func void pc_enchanting_createtopaz_info()
{
	if(Npc_HasItems(hero,itmi_tpzfragments_01) >= 3)
	{
		CreateInvItems(hero,itmi_topaz,1);
		Npc_RemoveInvItems(hero,itmi_tpzfragments_01,3);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen("Topaz created!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_FRNT_BASE = FALSE;
};


instance PC_ENCHANTING_CREATERUBY(C_Info)
{
	npc = PC_Hero;
	nr = 4;
	condition = pc_enchanting_createruby_condition;
	information = pc_enchanting_createruby_info;
	permanent = TRUE;
	description = "Create ruby (3x ruby fragments)";
};


func int pc_enchanting_createruby_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_FRNT_BASE == TRUE) && (Npc_HasItems(hero,itmi_rubfragments_01) >= 3))
	{
		return TRUE;
	};
};

func void pc_enchanting_createruby_info()
{
	if(Npc_HasItems(hero,itmi_rubfragments_01) >= 3)
	{
		CreateInvItems(hero,itmi_ruby,1);
		Npc_RemoveInvItems(hero,itmi_rubfragments_01,3);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen("Ruby created!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_FRNT_BASE = FALSE;
};


instance PC_ENCHANTING_CREATEEMERALD(C_Info)
{
	npc = PC_Hero;
	nr = 5;
	condition = pc_enchanting_createemerald_condition;
	information = pc_enchanting_createemerald_info;
	permanent = TRUE;
	description = "Create emerald (3x emerald fragments)";
};


func int pc_enchanting_createemerald_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_FRNT_BASE == TRUE) && (Npc_HasItems(hero,itmi_emrldfragments_01) >= 3))
	{
		return TRUE;
	};
};

func void pc_enchanting_createemerald_info()
{
	if(Npc_HasItems(hero,itmi_emrldfragments_01) >= 3)
	{
		CreateInvItems(hero,itmi_emerald,1);
		Npc_RemoveInvItems(hero,itmi_emrldfragments_01,3);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen("Emerald created!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_FRNT_BASE = FALSE;
};


instance PC_ENCHANTING_CREATESAPPHIRE(C_Info)
{
	npc = PC_Hero;
	nr = 6;
	condition = pc_enchanting_createsapphire_condition;
	information = pc_enchanting_createsapphire_info;
	permanent = TRUE;
	description = "Create sapphire (3x sapphire fragments)";
};


func int pc_enchanting_createsapphire_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_FRNT_BASE == TRUE) && (Npc_HasItems(hero,itmi_spphrfragments_01) >= 3))
	{
		return TRUE;
	};
};

func void pc_enchanting_createsapphire_info()
{
	if(Npc_HasItems(hero,itmi_spphrfragments_01) >= 3)
	{
		CreateInvItems(hero,itmi_sapphire,1);
		Npc_RemoveInvItems(hero,itmi_spphrfragments_01,3);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen("Sapphire created!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_FRNT_BASE = FALSE;
};


instance PC_ENCHANTING_CREATEDIAMOND(C_Info)
{
	npc = PC_Hero;
	nr = 7;
	condition = pc_enchanting_creatediamond_condition;
	information = pc_enchanting_creatediamond_info;
	permanent = TRUE;
	description = "Create diamond (3x diamond fragments)";
};


func int pc_enchanting_creatediamond_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_FRNT_BASE == TRUE) && (Npc_HasItems(hero,itmi_dmndfragments_01) >= 3))
	{
		return TRUE;
	};
};

func void pc_enchanting_creatediamond_info()
{
	if(Npc_HasItems(hero,itmi_dmndfragments_01) >= 3)
	{
		CreateInvItems(hero,itmi_diamond,1);
		Npc_RemoveInvItems(hero,itmi_dmndfragments_01,3);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen("Diamond created!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_FRNT_BASE = FALSE;
};


instance PC_ENCHANTING_MASTER(C_Info)
{
	npc = PC_Hero;
	nr = 4;
	condition = pc_enchanting_master_condition;
	information = pc_enchanting_master_info;
	permanent = TRUE;
	description = "Special enchantments";
};


func int pc_enchanting_master_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_BASE == FALSE) && (E_ITMS_MASTER == FALSE) && (E_DUST_BASE == FALSE) && (E_FRNT_BASE == FALSE) && (E_ITMS_STR == FALSE) && (E_ITMS_DEX == FALSE) && (E_ITMS_HP == FALSE) && (E_ITMS_MP == FALSE) && (E_ITMS_ARM == FALSE) && (E_ITMS_WPN == FALSE) && (E_ITMS_MELEE == FALSE) && (E_ITMS_RANGE == FALSE) && (E_ITMS_WGT == FALSE))
	{
		return TRUE;
	};
};

func void pc_enchanting_master_info()
{
	E_ITMS_MASTER = TRUE;
};


instance PC_MASTER_STOP(C_Info)
{
	npc = PC_Hero;
	nr = 99;
	condition = pc_master_stop_condition;
	information = pc_master_stop_info;
	permanent = TRUE;
	description = Dialog_Back;
};


func int pc_master_stop_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_MASTER == TRUE))
	{
		return TRUE;
	};
};

func void pc_master_stop_info()
{
	E_ITMS_MASTER = FALSE;
};


instance PC_ENCHANTING_RINGREGHP_01(C_Info)
{
	npc = PC_Hero;
	nr = 1;
	condition = pc_enchanting_ringreghp_01_condition;
	information = pc_enchanting_ringreghp_01_info;
	permanent = TRUE;
	description = "Ring of body regeneration (1x ring of life +75, 1x ruby dust, 3x rock crystal)";
};


func int pc_enchanting_ringreghp_01_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_MASTER == TRUE) && (PLAYER_TALENT_ENCHANTING[2] == TRUE) && (ENCHANT_SPECIAL_01 == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_ringreghp_01_info()
{
	if((Npc_HasItems(hero,itri_enchhp_03) >= 1) && (Npc_HasItems(hero,itmi_rubdust_01) >= 1) && (Npc_HasItems(hero,ItMi_Rockcrystal) >= 3))
	{
		Npc_RemoveInvItems(hero,itri_enchhp_03,1);
		Npc_RemoveInvItems(hero,itmi_rubdust_01,1);
		Npc_RemoveInvItems(hero,ItMi_Rockcrystal,3);
		CreateInvItems(hero,itri_enchreghp_01,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_MASTER = FALSE;
};


instance PC_ENCHANTING_RINGREGMP_01(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_enchanting_ringregmp_01_condition;
	information = pc_enchanting_ringregmp_01_info;
	permanent = TRUE;
	description = "Ring of mental restoration (1x ring of magic +15, 1x sapphire dust, 3x glacier quartz)";
};


func int pc_enchanting_ringregmp_01_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ENCHANT) && (E_ITMS_MASTER == TRUE) && (PLAYER_TALENT_ENCHANTING[2] == TRUE) && (ENCHANT_SPECIAL_02 == TRUE))
	{
		return TRUE;
	};
};

func void pc_enchanting_ringregmp_01_info()
{
	if((Npc_HasItems(hero,itri_enchmana_03) >= 1) && (Npc_HasItems(hero,itmi_spphrdust_01) >= 1) && (Npc_HasItems(hero,ItMi_Quartz) >= 3))
	{
		Npc_RemoveInvItems(hero,itri_enchmana_03,1);
		Npc_RemoveInvItems(hero,itmi_spphrdust_01,1);
		Npc_RemoveInvItems(hero,ItMi_Quartz,3);
		CreateInvItems(hero,itri_enchregmp_01,1);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_ENCHANTSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	E_ITMS_MASTER = FALSE;
};

