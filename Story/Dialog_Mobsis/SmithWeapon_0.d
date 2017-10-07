
var int Erzwaffen;
var int Normalwaffen;
var int grdwaffen;
var int shields;

instance PC_SmithWeapon_End(C_Info)
{
	npc = PC_Hero;
	nr = 999;
	condition = PC_SmithWeapon_End_Condition;
	information = PC_SmithWeapon_End_Info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int PC_SmithWeapon_End_Condition()
{
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon)
	{
		return TRUE;
	};
};

func void PC_SmithWeapon_End_Info()
{
	b_endproductiondialog();
	Erzwaffen = FALSE;
	Normalwaffen = FALSE;
};


instance PC_NEEDCOMPLETEWORK(C_Info)
{
	npc = PC_Hero;
	nr = 1;
	condition = pc_needcompletework_condition;
	information = pc_needcompletework_info;
	permanent = TRUE;
	description = "You should finish the work you started";
};


func int pc_needcompletework_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (NOT_COMPLETE_SWORD == TRUE))
	{
		return TRUE;
	};
};

func void pc_needcompletework_info()
{
	b_endproductiondialog();
};


instance PC_Common(C_Info)
{
	npc = PC_Hero;
	condition = PC_Common_Condition;
	information = PC_Common_Info;
	permanent = TRUE;
	description = "Forge a regular blade";
};


func int PC_Common_Condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (Normalwaffen == FALSE) && (SHIELDS == FALSE) && (Erzwaffen == FALSE) && (GRDWAFFEN == FALSE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void PC_Common_Info()
{
	Normalwaffen = TRUE;
};


instance PC_Ore(C_Info)
{
	npc = PC_Hero;
	condition = PC_Ore_Condition;
	information = PC_Ore_Info;
	permanent = TRUE;
	description = "Forge an ore blade";
};


func int PC_Ore_Condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (Normalwaffen == FALSE) && (SHIELDS == FALSE) && (Erzwaffen == FALSE) && (GRDWAFFEN == FALSE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void PC_Ore_Info()
{
	Erzwaffen = TRUE;
};


instance PC_SHIELDS(C_Info)
{
	npc = PC_Hero;
	condition = pc_shields_condition;
	information = pc_shields_info;
	permanent = TRUE;
	description = "Forge Shield";
};


func int pc_shields_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (Normalwaffen == FALSE) && (SHIELDS == FALSE) && (Erzwaffen == FALSE) && (GRDWAFFEN == FALSE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_shields_info()
{
	SHIELDS = TRUE;
};


instance PC_UPGRADE_WEAPON(C_Info)
{
	npc = PC_Hero;
	condition = pc_upgrade_weapon_condition;
	information = pc_upgrade_weapon_info;
	permanent = TRUE;
	description = "Improve weapon";
};


func int pc_upgrade_weapon_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (Normalwaffen == FALSE) && (SHIELDS == FALSE) && (Erzwaffen == FALSE) && (GRDWAFFEN == FALSE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_upgrade_weapon_info()
{
	GRDWAFFEN = TRUE;
};


instance PC_CommonBACK(C_Info)
{
	npc = PC_Hero;
	nr = 99;
	condition = PC_CommonBACK_Condition;
	information = PC_CommonBACK_Info;
	permanent = TRUE;
	description = Dialog_Back;
};


func int PC_CommonBACK_Condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (Normalwaffen == TRUE) && (SHIELDS == FALSE) && (GRDWAFFEN == FALSE) && (Erzwaffen == FALSE))
	{
		return TRUE;
	};
};

func void PC_CommonBACK_Info()
{
	Normalwaffen = FALSE;
};


instance PC_OreBACK(C_Info)
{
	npc = PC_Hero;
	nr = 99;
	condition = PC_OreBACK_Condition;
	information = PC_OreBACK_Info;
	permanent = TRUE;
	description = Dialog_Back;
};


func int PC_OreBACK_Condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (Normalwaffen == FALSE) && (SHIELDS == FALSE) && (GRDWAFFEN == FALSE) && (Erzwaffen == TRUE))
	{
		return TRUE;
	};
};

func void PC_OreBACK_Info()
{
	Erzwaffen = FALSE;
};


instance PC_SHIELDSBACK(C_Info)
{
	npc = PC_Hero;
	nr = 99;
	condition = pc_shieldsback_condition;
	information = pc_shieldsback_info;
	permanent = TRUE;
	description = Dialog_Back;
};


func int pc_shieldsback_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (SHIELDS == TRUE) && (Normalwaffen == FALSE) && (GRDWAFFEN == FALSE) && (Erzwaffen == FALSE))
	{
		return TRUE;
	};
};

func void pc_shieldsback_info()
{
	SHIELDS = FALSE;
};


instance PC_UPGRADEBACK(C_Info)
{
	npc = PC_Hero;
	nr = 99;
	condition = pc_upgradeback_condition;
	information = pc_upgradeback_info;
	permanent = TRUE;
	description = Dialog_Back;
};


func int pc_upgradeback_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (GRDWAFFEN == TRUE) && (Normalwaffen == FALSE) && (SHIELDS == FALSE) && (Erzwaffen == FALSE))
	{
		return TRUE;
	};
};

func void pc_upgradeback_info()
{
	GRDWAFFEN = FALSE;
};


instance PC_ITMW_FIRSTBLADE_BLADE(C_Info)
{
	npc = PC_Hero;
	nr = 10;
	condition = pc_itmw_firstblade_blade_condition;
	information = pc_itmw_firstblade_blade_info;
	permanent = TRUE;
	description = "(1H) Blade (damage-40, range-75, strength-30) - 2x steel bars";
};


func int pc_itmw_firstblade_blade_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (PLAYER_TALENT_SMITH[0] == TRUE) && (Normalwaffen == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itmw_firstblade_blade_info()
{
	if(Npc_HasItems(hero,itmi_steelbar) >= 2)
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		CreateInvItems(hero,itmi_firstblade_blade,1);
		AI_Wait(hero,5);
		Print(PRINT_BLADEPROCESS);
		AI_PrintScreen(PRINT_BLADESUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	Normalwaffen = FALSE;
};


instance PC_ITMW_1HFINESWORD_BLADE(C_Info)
{
	npc = PC_Hero;
	nr = 9;
	condition = pc_itmw_1hfinesword_blade_condition;
	information = pc_itmw_1hfinesword_blade_info;
	permanent = TRUE;
	description = "(1H) Steel longsword (damage-50 range-90 strength-40) - 2x steel bars";
};


func int pc_itmw_1hfinesword_blade_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (PLAYER_TALENT_SMITH[9] == TRUE) && (Normalwaffen == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itmw_1hfinesword_blade_info()
{
	if(Npc_HasItems(hero,itmi_steelbar) >= 2)
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		CreateInvItems(hero,itmi_1hfinesword_blade,1);
		AI_Wait(hero,5);
		Print(PRINT_BLADEPROCESS);
		AI_PrintScreen(PRINT_BLADESUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	Normalwaffen = FALSE;
};


instance PC_ITMW_SOT_BLADE(C_Info)
{
	npc = PC_Hero;
	nr = 8;
	condition = pc_itmw_sot_blade_condition;
	information = pc_itmw_sot_blade_info;
	permanent = TRUE;
	description = "(1H) Sword Of Truth (damage-65 range-95 strength-55) - 2x steel bars";
};


func int pc_itmw_sot_blade_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (PLAYER_TALENT_SMITH[10] == TRUE) && (Normalwaffen == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itmw_sot_blade_info()
{
	if(Npc_HasItems(hero,itmi_steelbar) >= 2)
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		CreateInvItems(hero,itmi_sot_blade,1);
		AI_Wait(hero,5);
		Print(PRINT_BLADEPROCESS);
		AI_PrintScreen(PRINT_BLADESUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	Normalwaffen = FALSE;
};


instance PC_ITMW_FINEBASTARD_BLADE(C_Info)
{
	npc = PC_Hero;
	nr = 7;
	condition = pc_itmw_finebastard_blade_condition;
	information = pc_itmw_finebastard_blade_info;
	permanent = TRUE;
	description = "(1H) Fine bastard sword (damage-85 range-100 strength-70) - 3x steel bars";
};


func int pc_itmw_finebastard_blade_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (PLAYER_TALENT_SMITH[11] == TRUE) && (Normalwaffen == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itmw_finebastard_blade_info()
{
	if(Npc_HasItems(hero,itmi_steelbar) >= 3)
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,3);
		CreateInvItems(hero,itmi_finebastard_blade,1);
		AI_Wait(hero,5);
		Print(PRINT_BLADEPROCESS);
		AI_PrintScreen(PRINT_BLADESUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	Normalwaffen = FALSE;
};


instance PC_ITMW_ANDURIL_BLADE(C_Info)
{
	npc = PC_Hero;
	nr = 6;
	condition = pc_itmw_anduril_blade_condition;
	information = pc_itmw_anduril_blade_info;
	permanent = TRUE;
	description = "(1H) Elegant bastard sword (damage-100 range-110 strength-90) - 3x steel bars";
};


func int pc_itmw_anduril_blade_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (PLAYER_TALENT_SMITH[12] == TRUE) && (Normalwaffen == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itmw_anduril_blade_info()
{
	if(Npc_HasItems(hero,itmi_steelbar) >= 3)
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,3);
		CreateInvItems(hero,itmi_anduril_blade,1);
		AI_Wait(hero,5);
		Print(PRINT_BLADEPROCESS);
		AI_PrintScreen(PRINT_BLADESUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	Normalwaffen = FALSE;
};


instance PC_ITMW_ANDURIL_GRD1(C_Info)
{
	npc = PC_Hero;
	nr = 6;
	condition = pc_itmw_anduril_grd1_condition;
	information = pc_itmw_anduril_grd1_info;
	permanent = TRUE;
	description = "(1H) Elegant serrated bastard sword (reforge the blade) - 2x steel bars, 1x ore bar";
};


func int pc_itmw_anduril_grd1_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (PLAYER_TALENT_SMITH[12] == TRUE) && (GRDWAFFEN == TRUE) && (NOT_COMPLETE_SWORD == FALSE) && (Npc_HasItems(hero,itmw_anduril) >= 1) && (KNOWS_SMITHMASTERBOOK_LVL1 == TRUE))
	{
		return TRUE;
	};
};

func void pc_itmw_anduril_grd1_info()
{
	if((Npc_HasItems(hero,itmi_steelbar) >= 2) && (Npc_HasItems(hero,itmi_magicbar) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		Npc_RemoveInvItems(hero,itmi_magicbar,1);
		Npc_RemoveInvItems(hero,itmw_anduril,1);
		CreateInvItems(hero,itmw_anduril_grd1,1);
		AI_PrintScreen(PRINT_SmithSuccess,-1,52,FONT_SCREENBRIGHTLARGE,2);
		AI_EquipBestMeleeWeapon(hero);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	GRDWAFFEN = FALSE;
};


instance PC_ITMW_ANDURIL_GRD2(C_Info)
{
	npc = PC_Hero;
	nr = 6;
	condition = pc_itmw_anduril_grd2_condition;
	information = pc_itmw_anduril_grd2_info;
	permanent = TRUE;
	description = "(1H) Fine serrated bastard sword (serrate the blade) - 1x steel bar, 1x ore bar";
};


func int pc_itmw_anduril_grd2_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (PLAYER_TALENT_SMITH[12] == TRUE) && (GRDWAFFEN == TRUE) && (NOT_COMPLETE_SWORD == FALSE) && (Npc_HasItems(hero,itmw_anduril_grd1) >= 1) && (KNOWS_SMITHMASTERBOOK_LVL2 == TRUE))
	{
		return TRUE;
	};
};

func void pc_itmw_anduril_grd2_info()
{
	if((Npc_HasItems(hero,itmi_steelbar) >= 1) && (Npc_HasItems(hero,itmi_magicbar) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		Npc_RemoveInvItems(hero,itmi_magicbar,1);
		Npc_RemoveInvItems(hero,itmw_anduril_grd1,1);
		CreateInvItems(hero,itmw_anduril_grd2,1);
		AI_PrintScreen(PRINT_SmithSuccess,-1,52,FONT_SCREENBRIGHTLARGE,2);
		AI_EquipBestMeleeWeapon(hero);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	GRDWAFFEN = FALSE;
};


instance PC_ITMW_ANDURIL_GRD3(C_Info)
{
	npc = PC_Hero;
	nr = 6;
	condition = pc_itmw_anduril_grd3_condition;
	information = pc_itmw_anduril_grd3_info;
	permanent = TRUE;
	description = "(1H) Reinforced fine serrated bastard sword (improve serrated blade) - 1x steel bar, 1x ore bar";
};


func int pc_itmw_anduril_grd3_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (PLAYER_TALENT_SMITH[12] == TRUE) && (GRDWAFFEN == TRUE) && (NOT_COMPLETE_SWORD == FALSE) && (Npc_HasItems(hero,itmw_anduril_grd2) >= 1) && (KNOWS_SMITHMASTERBOOK_LVL3 == TRUE))
	{
		return TRUE;
	};
};

func void pc_itmw_anduril_grd3_info()
{
	if((Npc_HasItems(hero,itmi_steelbar) >= 1) && (Npc_HasItems(hero,itmi_magicbar) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		Npc_RemoveInvItems(hero,itmi_magicbar,1);
		Npc_RemoveInvItems(hero,itmw_anduril_grd2,1);
		CreateInvItems(hero,itmw_anduril_grd3,1);
		AI_PrintScreen(PRINT_SmithSuccess,-1,52,FONT_SCREENBRIGHTLARGE,2);
		AI_EquipBestMeleeWeapon(hero);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	GRDWAFFEN = FALSE;
};


instance PC_ITMW_FIRSTBLADE2H_BLADE(C_Info)
{
	npc = PC_Hero;
	nr = 5;
	condition = pc_itmw_firstblade2h_blade_condition;
	information = pc_itmw_firstblade2h_blade_info;
	permanent = TRUE;
	description = "(2H) Two-handed blade (damage-60 range-100 strength-50) - 4x steel bars";
};


func int pc_itmw_firstblade2h_blade_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (PLAYER_TALENT_SMITH[13] == TRUE) && (Normalwaffen == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itmw_firstblade2h_blade_info()
{
	if(Npc_HasItems(hero,itmi_steelbar) >= 4)
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,4);
		CreateInvItems(hero,itmi_firstblade2h_blade,1);
		AI_Wait(hero,5);
		Print(PRINT_BLADEPROCESS);
		AI_PrintScreen(PRINT_BLADESUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	Normalwaffen = FALSE;
};


instance PC_ITMW_2HFINESWORD_BLADE(C_Info)
{
	npc = PC_Hero;
	nr = 4;
	condition = pc_itmw_2hfinesword_blade_condition;
	information = pc_itmw_2hfinesword_blade_info;
	permanent = TRUE;
	description = "(2H) Steel two-hander (damage-80 range-140 strength-70) - 4x steel bars";
};


func int pc_itmw_2hfinesword_blade_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (PLAYER_TALENT_SMITH[15] == TRUE) && (Normalwaffen == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itmw_2hfinesword_blade_info()
{
	if(Npc_HasItems(hero,itmi_steelbar) >= 4)
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,4);
		CreateInvItems(hero,itmi_2hfinesword_blade,1);
		AI_Wait(hero,5);
		Print(PRINT_BLADEPROCESS);
		AI_PrintScreen(PRINT_BLADESUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	Normalwaffen = FALSE;
};


instance PC_ITMW_CLAYMORE_BLADE(C_Info)
{
	npc = PC_Hero;
	nr = 3;
	condition = pc_itmw_claymore_blade_condition;
	information = pc_itmw_claymore_blade_info;
	permanent = TRUE;
	description = "(2H) Claymore (damage-100 range-110 strength-90) - 4x steel bars";
};


func int pc_itmw_claymore_blade_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (PLAYER_TALENT_SMITH[14] == TRUE) && (Normalwaffen == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itmw_claymore_blade_info()
{
	if(Npc_HasItems(hero,itmi_steelbar) >= 4)
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,4);
		CreateInvItems(hero,itmi_claymore_blade,1);
		AI_Wait(hero,5);
		Print(PRINT_BLADEPROCESS);
		AI_PrintScreen(PRINT_BLADESUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	Normalwaffen = FALSE;
};


instance PC_ITMW_DEMONSLAYER_BLADE(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_itmw_demonslayer_blade_condition;
	information = pc_itmw_demonslayer_blade_info;
	permanent = TRUE;
	description = "(2H) Demonslayer (damage-125 range-135 strength-125) - 5x steel bars";
};


func int pc_itmw_demonslayer_blade_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (PLAYER_TALENT_SMITH[16] == TRUE) && (Normalwaffen == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itmw_demonslayer_blade_info()
{
	if(Npc_HasItems(hero,itmi_steelbar) >= 5)
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,5);
		CreateInvItems(hero,itmi_demonslayer_blade,1);
		AI_Wait(hero,5);
		Print(PRINT_BLADEPROCESS);
		AI_PrintScreen(PRINT_BLADESUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	Normalwaffen = FALSE;
};


instance PC_ITMW_FLAMEBERGE_BLADE(C_Info)
{
	npc = PC_Hero;
	nr = 1;
	condition = pc_itmw_flameberge_blade_condition;
	information = pc_itmw_flameberge_blade_info;
	permanent = TRUE;
	description = "(2H) Flamberge (damage-150 range-150 strength-150) - 5x steel bars";
};


func int pc_itmw_flameberge_blade_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (PLAYER_TALENT_SMITH[17] == TRUE) && (Normalwaffen == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itmw_flameberge_blade_info()
{
	if(Npc_HasItems(hero,itmi_steelbar) >= 5)
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,5);
		CreateInvItems(hero,itmi_flameberge_blade,1);
		AI_Wait(hero,5);
		Print(PRINT_BLADEPROCESS);
		AI_PrintScreen(PRINT_BLADESUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	Normalwaffen = FALSE;
};


instance PC_ITMW_FLAMEBERGE_GRD1(C_Info)
{
	npc = PC_Hero;
	nr = 6;
	condition = pc_itmw_flameberge_grd1_condition;
	information = pc_itmw_flameberge_grd1_info;
	permanent = TRUE;
	description = "(2H) Flamberge with jagged edge (add a defensive blade) - 2x steel bars";
};


func int pc_itmw_flameberge_grd1_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (PLAYER_TALENT_SMITH[17] == TRUE) && (GRDWAFFEN == TRUE) && (NOT_COMPLETE_SWORD == FALSE) && (Npc_HasItems(hero,itmw_flameberge) >= 1) && (KNOWS_SMITHMASTERBOOK_LVL1 == TRUE))
	{
		return TRUE;
	};
};

func void pc_itmw_flameberge_grd1_info()
{
	if(Npc_HasItems(hero,itmi_steelbar) >= 2)
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		Npc_RemoveInvItems(hero,itmw_flameberge,1);
		CreateInvItems(hero,itmw_flameberge_grd1,1);
		AI_PrintScreen(PRINT_SmithSuccess,-1,52,FONT_SCREENBRIGHTLARGE,2);
		AI_EquipBestMeleeWeapon(hero);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	GRDWAFFEN = FALSE;
};


instance PC_ITMW_FLAMEBERGE_GRD2(C_Info)
{
	npc = PC_Hero;
	nr = 6;
	condition = pc_itmw_flameberge_grd2_condition;
	information = pc_itmw_flameberge_grd2_info;
	permanent = TRUE;
	description = "(2H) Fine flamberge (reforge the blade into a serrated blade) - 2x steel bars, 2x ore bars";
};


func int pc_itmw_flameberge_grd2_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (PLAYER_TALENT_SMITH[17] == TRUE) && (GRDWAFFEN == TRUE) && (NOT_COMPLETE_SWORD == FALSE) && (Npc_HasItems(hero,itmw_flameberge_grd1) >= 1) && (KNOWS_SMITHMASTERBOOK_LVL2 == TRUE))
	{
		return TRUE;
	};
};

func void pc_itmw_flameberge_grd2_info()
{
	if((Npc_HasItems(hero,itmi_steelbar) >= 2) && (Npc_HasItems(hero,itmi_magicbar) >= 2))
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		Npc_RemoveInvItems(hero,itmi_magicbar,2);
		Npc_RemoveInvItems(hero,itmw_flameberge_grd1,1);
		CreateInvItems(hero,itmw_flameberge_grd2,1);
		AI_PrintScreen(PRINT_SmithSuccess,-1,52,FONT_SCREENBRIGHTLARGE,2);
		AI_EquipBestMeleeWeapon(hero);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	GRDWAFFEN = FALSE;
};


instance PC_ITMW_FLAMEBERGE_GRD3(C_Info)
{
	npc = PC_Hero;
	nr = 6;
	condition = pc_itmw_flameberge_grd3_condition;
	information = pc_itmw_flameberge_grd3_info;
	permanent = TRUE;
	description = "(2H) Fine hilted flamberge (with a refined battle grip) - 1x steel bar";
};


func int pc_itmw_flameberge_grd3_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (PLAYER_TALENT_SMITH[17] == TRUE) && (GRDWAFFEN == TRUE) && (NOT_COMPLETE_SWORD == FALSE) && (Npc_HasItems(hero,itmw_flameberge_grd2) >= 1) && (KNOWS_SMITHMASTERBOOK_LVL3 == TRUE))
	{
		return TRUE;
	};
};

func void pc_itmw_flameberge_grd3_info()
{
	if(Npc_HasItems(hero,itmi_steelbar) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		Npc_RemoveInvItems(hero,itmw_flameberge_grd2,1);
		CreateInvItems(hero,itmw_flameberge_grd3,1);
		AI_PrintScreen(PRINT_SmithSuccess,-1,52,FONT_SCREENBRIGHTLARGE,2);
		AI_EquipBestMeleeWeapon(hero);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	GRDWAFFEN = FALSE;
};


instance PC_ItMw_1H_Special_01(C_Info)
{
	npc = PC_Hero;
	condition = PC_ItMw_1H_Special_01_Condition;
	information = PC_ItMw_1H_Special_01_Info;
	permanent = TRUE;
	description = "Ore longsword - 2x steel bars, 1x ore bar";
};


func int PC_ItMw_1H_Special_01_Condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (PLAYER_TALENT_SMITH[WEAPON_1H_Special_01] == TRUE) && (Erzwaffen == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void PC_ItMw_1H_Special_01_Info()
{
	if((Npc_HasItems(hero,itmi_steelbar) >= 2) && (Npc_HasItems(hero,itmi_magicbar) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		Npc_RemoveInvItems(hero,itmi_magicbar,1);
		CreateInvItems(hero,itmi_1h_special_01_blade,1);
		AI_Wait(hero,5);
		Print(PRINT_BLADEPROCESS);
		AI_PrintScreen(PRINT_BLADESUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	Erzwaffen = FALSE;
};


instance PC_ItMw_2H_Special_01(C_Info)
{
	npc = PC_Hero;
	condition = PC_ItMw_2H_Special_01_Condition;
	information = PC_ItMw_2H_Special_01_Info;
	permanent = TRUE;
	description = "Ore two-hander - 3x steel bars, 2x ore bars";
};


func int PC_ItMw_2H_Special_01_Condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (PLAYER_TALENT_SMITH[WEAPON_2H_Special_01] == TRUE) && (Erzwaffen == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void PC_ItMw_2H_Special_01_Info()
{
	if((Npc_HasItems(hero,itmi_steelbar) >= 3) && (Npc_HasItems(hero,itmi_magicbar) >= 2))
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,3);
		Npc_RemoveInvItems(hero,itmi_magicbar,2);
		CreateInvItems(hero,itmi_2h_special_01_blade,1);
		AI_Wait(hero,5);
		Print(PRINT_BLADEPROCESS);
		AI_PrintScreen(PRINT_BLADESUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	Erzwaffen = FALSE;
};


instance PC_ItMw_1H_Special_02(C_Info)
{
	npc = PC_Hero;
	condition = PC_ItMw_1H_Special_02_Condition;
	information = PC_ItMw_1H_Special_02_Info;
	permanent = TRUE;
	description = "Ore bastard sword - 2x steel bars, 1x ore bar";
};


func int PC_ItMw_1H_Special_02_Condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (PLAYER_TALENT_SMITH[WEAPON_1H_Special_02] == TRUE) && (Erzwaffen == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void PC_ItMw_1H_Special_02_Info()
{
	if((Npc_HasItems(hero,itmi_steelbar) >= 2) && (Npc_HasItems(hero,itmi_magicbar) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		Npc_RemoveInvItems(hero,itmi_magicbar,1);
		CreateInvItems(hero,itmi_1h_special_02_blade,1);
		AI_Wait(hero,5);
		Print(PRINT_BLADEPROCESS);
		AI_PrintScreen(PRINT_BLADESUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	Erzwaffen = FALSE;
};


instance PC_ItMw_2H_Special_02(C_Info)
{
	npc = PC_Hero;
	condition = PC_ItMw_2H_Special_02_Condition;
	information = PC_ItMw_2H_Special_02_Info;
	permanent = TRUE;
	description = "Heavy ore two-hander - 3x steel bars, 2x ore bars";
};


func int PC_ItMw_2H_Special_02_Condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (PLAYER_TALENT_SMITH[WEAPON_2H_Special_02] == TRUE) && (Erzwaffen == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void PC_ItMw_2H_Special_02_Info()
{
	if((Npc_HasItems(hero,itmi_steelbar) >= 3) && (Npc_HasItems(hero,itmi_magicbar) >= 2))
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,3);
		Npc_RemoveInvItems(hero,itmi_magicbar,2);
		CreateInvItems(hero,itmi_2h_special_02_blade,1);
		AI_Wait(hero,5);
		Print(PRINT_BLADEPROCESS);
		AI_PrintScreen(PRINT_BLADESUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	Erzwaffen = FALSE;
};


instance PC_ItMw_1H_Special_03(C_Info)
{
	npc = PC_Hero;
	condition = PC_ItMw_1H_Special_03_Condition;
	information = PC_ItMw_1H_Special_03_Info;
	permanent = TRUE;
	description = "Orcish ore battle sword - 2x steel bars, 2x ore bars";
};


func int PC_ItMw_1H_Special_03_Condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (PLAYER_TALENT_SMITH[WEAPON_1H_Special_03] == TRUE) && (Erzwaffen == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void PC_ItMw_1H_Special_03_Info()
{
	if((Npc_HasItems(hero,itmi_steelbar) >= 2) && (Npc_HasItems(hero,itmi_magicbar) >= 2))
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		Npc_RemoveInvItems(hero,itmi_magicbar,2);
		CreateInvItems(hero,itmi_1h_special_03_blade,1);
		AI_Wait(hero,5);
		Print(PRINT_BLADEPROCESS);
		AI_PrintScreen(PRINT_BLADESUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	Erzwaffen = FALSE;
};


instance PC_ItMw_2H_Special_03(C_Info)
{
	npc = PC_Hero;
	condition = PC_ItMw_2H_Special_03_Condition;
	information = PC_ItMw_2H_Special_03_Info;
	permanent = TRUE;
	description = "Heavy orcish ore battle sword - 3x steel bars, 3x ore bars";
};


func int PC_ItMw_2H_Special_03_Condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (PLAYER_TALENT_SMITH[WEAPON_2H_Special_03] == TRUE) && (Erzwaffen == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void PC_ItMw_2H_Special_03_Info()
{
	if((Npc_HasItems(hero,itmi_steelbar) >= 3) && (Npc_HasItems(hero,itmi_magicbar) >= 3))
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,3);
		Npc_RemoveInvItems(hero,itmi_magicbar,3);
		CreateInvItems(hero,itmi_2h_special_03_blade,1);
		AI_Wait(hero,5);
		Print(PRINT_BLADEPROCESS);
		AI_PrintScreen(PRINT_BLADESUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	Erzwaffen = FALSE;
};


instance PC_ItMw_1H_Special_04(C_Info)
{
	npc = PC_Hero;
	condition = PC_ItMw_1H_Special_04_Condition;
	information = PC_ItMw_1H_Special_04_Info;
	permanent = TRUE;
	description = "Ore Dragonslayer - 4x steel bars, 3x ore bars, 5x dragon's blood";
};


func int PC_ItMw_1H_Special_04_Condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (PLAYER_TALENT_SMITH[WEAPON_1H_Special_04] == TRUE) && (Erzwaffen == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void PC_ItMw_1H_Special_04_Info()
{
	if((Npc_HasItems(hero,itmi_steelbar) >= 4) && (Npc_HasItems(hero,itmi_magicbar) >= 3) && (Npc_HasItems(hero,ItAt_DragonBlood) >= 5))
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,4);
		Npc_RemoveInvItems(hero,itmi_magicbar,3);
		Npc_RemoveInvItems(hero,ItAt_DragonBlood,5);
		CreateInvItems(hero,itmi_1h_special_04_blade,1);
		AI_Wait(hero,5);
		Print(PRINT_BLADEPROCESS);
		AI_PrintScreen(PRINT_BLADESUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	Erzwaffen = FALSE;
};


instance PC_ItMw_2H_Special_04(C_Info)
{
	npc = PC_Hero;
	condition = PC_ItMw_2H_Special_04_Condition;
	information = PC_ItMw_2H_Special_04_Info;
	permanent = TRUE;
	description = "Large ore Dragonslayer - 5x steel bars, 4x ore bars, 5x dragon's blood";
};


func int PC_ItMw_2H_Special_04_Condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (PLAYER_TALENT_SMITH[WEAPON_2H_Special_04] == TRUE) && (Erzwaffen == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void PC_ItMw_2H_Special_04_Info()
{
	if((Npc_HasItems(hero,itmi_steelbar) >= 5) && (Npc_HasItems(hero,itmi_magicbar) >= 4) && (Npc_HasItems(hero,ItAt_DragonBlood) >= 5))
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,5);
		Npc_RemoveInvItems(hero,itmi_magicbar,4);
		Npc_RemoveInvItems(hero,ItAt_DragonBlood,5);
		CreateInvItems(hero,itmi_2h_special_04_blade,1);
		AI_Wait(hero,5);
		Print(PRINT_BLADEPROCESS);
		AI_PrintScreen(PRINT_BLADESUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	Erzwaffen = FALSE;
};


instance PC_ITMW_1H_DEATHBRINGER(C_Info)
{
	npc = PC_Hero;
	condition = pc_itmw_1h_deathbringer_condition;
	information = pc_itmw_1h_deathbringer_info;
	permanent = TRUE;
	description = "Deathbringer - 4x steel bars, 4x ore bars, 6x dragon's blood";
};


func int pc_itmw_1h_deathbringer_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (PLAYER_TALENT_SMITH[18] == TRUE) && (Erzwaffen == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itmw_1h_deathbringer_info()
{
	if((Npc_HasItems(hero,itmi_steelbar) >= 4) && (Npc_HasItems(hero,itmi_magicbar) >= 4) && (Npc_HasItems(hero,ItAt_DragonBlood) >= 6))
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,4);
		Npc_RemoveInvItems(hero,itmi_magicbar,4);
		Npc_RemoveInvItems(hero,ItAt_DragonBlood,6);
		CreateInvItems(hero,itmi_1h_deathbringer_blade,1);
		AI_Wait(hero,5);
		Print(PRINT_BLADEPROCESS);
		AI_PrintScreen(PRINT_BLADESUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	Erzwaffen = FALSE;
};


instance PC_ITMW_2H_DEATHBRINGER(C_Info)
{
	npc = PC_Hero;
	condition = pc_itmw_2h_deathbringer_condition;
	information = pc_itmw_2h_deathbringer_info;
	permanent = TRUE;
	description = "Heavy Deathbringer - 5x steel bars, 5x ore bars, 7x dragon's blood";
};


func int pc_itmw_2h_deathbringer_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (PLAYER_TALENT_SMITH[19] == TRUE) && (Erzwaffen == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itmw_2h_deathbringer_info()
{
	if((Npc_HasItems(hero,itmi_steelbar) >= 5) && (Npc_HasItems(hero,itmi_magicbar) >= 5) && (Npc_HasItems(hero,ItAt_DragonBlood) >= 7))
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,5);
		Npc_RemoveInvItems(hero,itmi_magicbar,5);
		Npc_RemoveInvItems(hero,ItAt_DragonBlood,7);
		CreateInvItems(hero,itmi_2h_deathbringer_blade,1);
		AI_Wait(hero,5);
		Print(PRINT_BLADEPROCESS);
		AI_PrintScreen(PRINT_BLADESUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	Erzwaffen = FALSE;
};


instance PC_ITSH_HARAD_01(C_Info)
{
	npc = PC_Hero;
	condition = pc_itsh_harad_01_condition;
	information = pc_itsh_harad_01_info;
	permanent = TRUE;
	description = "<Shield> - x2 steel bars, x3 wooden bars";
};


func int pc_itsh_harad_01_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (PLAYER_TALENT_SMITH[20] == TRUE) && (SHIELDS == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itsh_harad_01_info()
{
	if((Npc_HasItems(hero,itmi_steelbar) >= 2) && (Npc_HasItems(hero,itmi_woodbar) >= 3))
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		Npc_RemoveInvItems(hero,itmi_woodbar,3);
		CreateInvItems(hero,itsh_reinforced_a,1);
		AI_Wait(hero,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_CRTSHSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		CMPLTHARSH_01 = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	SHIELDS = FALSE;
};


instance PC_ITSH_HARAD_02(C_Info)
{
	npc = PC_Hero;
	condition = pc_itsh_harad_02_condition;
	information = pc_itsh_harad_02_info;
	permanent = TRUE;
	description = "<Battle shield> - x2 steel bars, x4 wooden bars";
};


func int pc_itsh_harad_02_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (PLAYER_TALENT_SMITH[21] == TRUE) && (SHIELDS == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itsh_harad_02_info()
{
	if((Npc_HasItems(hero,itmi_steelbar) >= 2) && (Npc_HasItems(hero,itmi_woodbar) >= 4))
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		Npc_RemoveInvItems(hero,itmi_woodbar,4);
		CreateInvItems(hero,itsh_w2_e4,1);
		AI_Wait(hero,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_CRTSHSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		CMPLTHARSH_02 = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	SHIELDS = FALSE;
};


instance PC_ITSH_HARAD_03(C_Info)
{
	npc = PC_Hero;
	condition = pc_itsh_harad_03_condition;
	information = pc_itsh_harad_03_info;
	permanent = TRUE;
	description = "<Heavy steel shield> - x7 steel bars";
};


func int pc_itsh_harad_03_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (PLAYER_TALENT_SMITH[22] == TRUE) && (SHIELDS == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itsh_harad_03_info()
{
	if(Npc_HasItems(hero,itmi_steelbar) >= 7)
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,7);
		CreateInvItems(hero,itsh_w2_executioner,1);
		AI_Wait(hero,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_CRTSHSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		CMPLTHARSH_03 = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	SHIELDS = FALSE;
};


instance PC_ITSH_HARAD_04(C_Info)
{
	npc = PC_Hero;
	condition = pc_itsh_harad_04_condition;
	information = pc_itsh_harad_04_info;
	permanent = TRUE;
	description = "<Wooden tower shield> - x4 steel bars, x8 wooden bars";
};


func int pc_itsh_harad_04_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (PLAYER_TALENT_SMITH[23] == TRUE) && (SHIELDS == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itsh_harad_04_info()
{
	if((Npc_HasItems(hero,itmi_steelbar) >= 4) && (Npc_HasItems(hero,itmi_woodbar) >= 8))
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,4);
		Npc_RemoveInvItems(hero,itmi_woodbar,8);
		CreateInvItems(hero,itsh_twr_wood_sm,1);
		AI_Wait(hero,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_CRTSHSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		CMPLTHARSH_04 = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	SHIELDS = FALSE;
};


instance PC_ITSH_HARAD_05(C_Info)
{
	npc = PC_Hero;
	condition = pc_itsh_harad_05_condition;
	information = pc_itsh_harad_05_info;
	permanent = TRUE;
	description = "<Steel tower shield> - x12 steel bars";
};


func int pc_itsh_harad_05_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (PLAYER_TALENT_SMITH[24] == TRUE) && (SHIELDS == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itsh_harad_05_info()
{
	if(Npc_HasItems(hero,itmi_steelbar) >= 12)
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,12);
		CreateInvItems(hero,itsh_twr_war_da,1);
		AI_Wait(hero,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_CRTSHSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		CMPLTHARSH_05 = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	SHIELDS = FALSE;
};


instance PC_ITSH_BENNET_01(C_Info)
{
	npc = PC_Hero;
	condition = pc_itsh_bennet_01_condition;
	information = pc_itsh_bennet_01_info;
	permanent = TRUE;
	description = "<Ore shield> - x3 steel bars, x1 ore bar, x3 wooden bars";
};


func int pc_itsh_bennet_01_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (PLAYER_TALENT_SMITH[25] == TRUE) && (SHIELDS == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itsh_bennet_01_info()
{
	if((Npc_HasItems(hero,itmi_steelbar) >= 3) && (Npc_HasItems(hero,itmi_magicbar) >= 1) && (Npc_HasItems(hero,itmi_woodbar) >= 3))
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,3);
		Npc_RemoveInvItems(hero,itmi_magicbar,1);
		Npc_RemoveInvItems(hero,itmi_woodbar,3);
		CreateInvItems(hero,itsh_wolf_a,1);
		AI_Wait(hero,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_CRTSHSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		CMPLTBENSH_01 = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	SHIELDS = FALSE;
};


instance PC_ITSH_BENNET_02(C_Info)
{
	npc = PC_Hero;
	condition = pc_itsh_bennet_02_condition;
	information = pc_itsh_bennet_02_info;
	permanent = TRUE;
	description = "<Large ore shield> - x4 steel bars, x2 ore bars, x5 wooden bars";
};


func int pc_itsh_bennet_02_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (PLAYER_TALENT_SMITH[26] == TRUE) && (SHIELDS == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itsh_bennet_02_info()
{
	if((Npc_HasItems(hero,itmi_steelbar) >= 4) && (Npc_HasItems(hero,itmi_magicbar) >= 2) && (Npc_HasItems(hero,itmi_woodbar) >= 5))
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,4);
		Npc_RemoveInvItems(hero,itmi_magicbar,2);
		Npc_RemoveInvItems(hero,itmi_woodbar,5);
		CreateInvItems(hero,itsh_white_eye_a,1);
		AI_Wait(hero,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_CRTSHSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		CMPLTBENSH_02 = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	SHIELDS = FALSE;
};


instance PC_ITSH_BENNET_03(C_Info)
{
	npc = PC_Hero;
	condition = pc_itsh_bennet_03_condition;
	information = pc_itsh_bennet_03_info;
	permanent = TRUE;
	description = "<Excellent ore shield> - x3 steel bars, x3 ore bars, x4 wooden bars";
};


func int pc_itsh_bennet_03_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (PLAYER_TALENT_SMITH[27] == TRUE) && (SHIELDS == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itsh_bennet_03_info()
{
	if((Npc_HasItems(hero,itmi_steelbar) >= 3) && (Npc_HasItems(hero,itmi_magicbar) >= 3) && (Npc_HasItems(hero,itmi_woodbar) >= 4))
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,3);
		Npc_RemoveInvItems(hero,itmi_magicbar,3);
		Npc_RemoveInvItems(hero,itmi_woodbar,4);
		CreateInvItems(hero,itsh_long_a,1);
		AI_Wait(hero,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_CRTSHSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		CMPLTBENSH_03 = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	SHIELDS = FALSE;
};


instance PC_ITSH_BENNET_04(C_Info)
{
	npc = PC_Hero;
	condition = pc_itsh_bennet_04_condition;
	information = pc_itsh_bennet_04_info;
	permanent = TRUE;
	description = "<Pure ore shield> - x5 steel bars, x5 ore bars";
};


func int pc_itsh_bennet_04_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (PLAYER_TALENT_SMITH[28] == TRUE) && (SHIELDS == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itsh_bennet_04_info()
{
	if((Npc_HasItems(hero,itmi_steelbar) >= 5) && (Npc_HasItems(hero,itmi_magicbar) >= 5))
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,5);
		Npc_RemoveInvItems(hero,itmi_magicbar,5);
		CreateInvItems(hero,itsh_stalhrim_s_sm,1);
		AI_Wait(hero,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_CRTSHSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		CMPLTBENSH_04 = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	SHIELDS = FALSE;
};


instance PC_ITSH_BENNET_05(C_Info)
{
	npc = PC_Hero;
	condition = pc_itsh_bennet_05_condition;
	information = pc_itsh_bennet_05_info;
	permanent = TRUE;
	description = "<Pure ore tower shield> - x6 steel bars, x8 ore bars";
};


func int pc_itsh_bennet_05_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SmithWeapon) && (PLAYER_TALENT_SMITH[29] == TRUE) && (SHIELDS == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itsh_bennet_05_info()
{
	if((Npc_HasItems(hero,itmi_steelbar) >= 6) && (Npc_HasItems(hero,itmi_magicbar) >= 8))
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,6);
		Npc_RemoveInvItems(hero,itmi_magicbar,8);
		CreateInvItems(hero,itsh_stalhrim_b_sm,1);
		AI_Wait(hero,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_CRTSHSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		CMPLTBENSH_05 = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	SHIELDS = FALSE;
};

func void smithweapon_s1()
{
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
	{
		self.aivar[AIV_INVINCIBLE] = TRUE;
		PLAYER_MOBSI_PRODUCTION = MOBSI_SmithWeapon;
		AI_ProcessInfos(hero);
	};
};

func int b_useanvil()
{
	if((NOT_COMPLETE_SWORD == FALSE) || (Npc_IsPlayer(self) == FALSE))
	{
		return TRUE;
	}
	else
	{
		AI_PrintScreen(PRINT_WORKINPROGRESS,-1,50,FONT_ScreenSmall,2);
		AI_PlayAni(self,"T_DONTKNOW");
		return FALSE;
	};
};

