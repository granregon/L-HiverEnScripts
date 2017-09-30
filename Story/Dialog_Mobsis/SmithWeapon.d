
var int grdarmor;
var int crtarmor;
var int cmpltwpn;

instance PC_SMITHARMOR_END(C_Info)
{
	npc = PC_Hero;
	nr = 999;
	condition = pc_smitharmor_end_condition;
	information = pc_smitharmor_end_info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int pc_smitharmor_end_condition()
{
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR)
	{
		return TRUE;
	};
};

func void pc_smitharmor_end_info()
{
	b_endproductiondialog();
	GRDARMOR = FALSE;
	CRTARMOR = FALSE;
};


instance PC_ARUPGRADE(C_Info)
{
	npc = PC_Hero;
	nr = 12;
	condition = pc_arupgrade_condition;
	information = pc_arupgrade_info;
	permanent = TRUE;
	description = "Improve equipment";
};


func int pc_arupgrade_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (GRDARMOR == FALSE) && (CMPLTWPN == FALSE) && (CRTARMOR == FALSE))
	{
		return TRUE;
	};
};

func void pc_arupgrade_info()
{
	GRDARMOR = TRUE;
};


instance PC_ARUPGRADEBACK(C_Info)
{
	npc = PC_Hero;
	nr = 99;
	condition = pc_arupgradeback_condition;
	information = pc_arupgradeback_info;
	permanent = TRUE;
	description = Dialog_Back;
};


func int pc_arupgradeback_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (GRDARMOR == TRUE) && (CMPLTWPN == FALSE) && (CRTARMOR == FALSE))
	{
		return TRUE;
	};
};

func void pc_arupgradeback_info()
{
	GRDARMOR = FALSE;
};


instance PC_ARCREATEBACK(C_Info)
{
	npc = PC_Hero;
	nr = 99;
	condition = pc_arcreateback_condition;
	information = pc_arcreateback_info;
	permanent = TRUE;
	description = Dialog_Back;
};


func int pc_arcreateback_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (GRDARMOR == FALSE) && (CMPLTWPN == FALSE) && (CRTARMOR == TRUE))
	{
		return TRUE;
	};
};

func void pc_arcreateback_info()
{
	CRTARMOR = FALSE;
};


instance PC_ARCREATE(C_Info)
{
	npc = PC_Hero;
	nr = 11;
	condition = pc_arcreate_condition;
	information = pc_arcreate_info;
	permanent = TRUE;
	description = "Forge armors";
};


func int pc_arcreate_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (GRDARMOR == FALSE) && (CMPLTWPN == FALSE) && (CRTARMOR == FALSE))
	{
		return TRUE;
	};
};

func void pc_arcreate_info()
{
	CRTARMOR = TRUE;
};


instance PC_ITAR_LHBO_ADDON(C_Info)
{
	nr = 4;
	npc = PC_Hero;
	condition = pc_itar_lhbo_addon_condition;
	information = pc_itar_lhbo_addon_info;
	permanent = TRUE;
	description = "Black ore armor (5x shadowbeast hides, 4x black ores, 5x textiles, 15x leathers, 12x steel bars)";
};


func int pc_itar_lhbo_addon_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (KNOWS_SLDBLACKORE == TRUE) && (CRTARMOR == TRUE) && (Npc_HasItems(hero,itar_lhbo_addon) == FALSE) && (PLAYER_TALENT_ARMOR[2] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_lhbo_addon_info()
{
	if((Npc_HasItems(self,ItAt_ShadowFur) >= 2) && (Npc_HasItems(self,ItMi_Zeitspalt_Addon) >= 4) && (Npc_HasItems(self,itmi_textile) >= 5) && (Npc_HasItems(self,itmi_leather) >= 15) && (Npc_HasItems(self,itmi_steelbar) >= 12))
	{
		Npc_RemoveInvItems(hero,ItAt_ShadowFur,2);
		Npc_RemoveInvItems(hero,ItMi_Zeitspalt_Addon,4);
		Npc_RemoveInvItems(hero,itmi_textile,5);
		Npc_RemoveInvItems(hero,itmi_leather,15);
		Npc_RemoveInvItems(hero,itmi_steelbar,12);
		CreateInvItems(hero,itar_lhbo_addon,1);
		AI_EquipArmor(hero,itar_lhbo_addon);
		Print(PRINT_CRTARSUCCESS);
		B_Say(self,self,"DIA_Buster_Hello_Impressive_15_00");
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
};


instance PC_ITAR_W2_TKNIGHT(C_Info)
{
	nr = 4;
	npc = PC_Hero;
	condition = pc_itar_w2_tknight_condition;
	information = pc_itar_w2_tknight_info;
	permanent = TRUE;
	description = "Royal Vengardian armor (8x textiles, 20x leathers, 14x steel bars)";
};


func int pc_itar_w2_tknight_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (KNOWS_W2KNIGHT == TRUE) && (CRTARMOR == TRUE) && (Npc_HasItems(hero,itar_w2_tknight) == FALSE) && (PLAYER_TALENT_ARMOR[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_w2_tknight_info()
{
	if((Npc_HasItems(self,itmi_textile) >= 8) && (Npc_HasItems(self,itmi_leather) >= 20) && (Npc_HasItems(self,itmi_steelbar) >= 14))
	{
		Npc_RemoveInvItems(hero,itmi_textile,8);
		Npc_RemoveInvItems(hero,itmi_leather,20);
		Npc_RemoveInvItems(hero,itmi_steelbar,14);
		CreateInvItems(hero,itar_w2_tknight,1);
		AI_Wait(hero,6);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_CRTARSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		AI_EquipArmor(hero,itar_w2_tknight);
		B_Say(self,self,"DIA_Buster_Hello_Impressive_15_00");
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
	CRTARMOR = FALSE;
};


instance PC_ITAR_W2_TKNIGHT_GRD1(C_Info)
{
	nr = 4;
	npc = PC_Hero;
	condition = pc_itar_w2_tknight_grd1_condition;
	information = pc_itar_w2_tknight_grd1_info;
	permanent = TRUE;
	description = "Royal Vengardian armor Lv. 2 (1x leather, 2x steel bars)";
};


func int pc_itar_w2_tknight_grd1_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (KNOWS_W2KNIGHT_GRD1TO2 == TRUE) && (GRDARMOR == TRUE) && (Npc_HasItems(hero,itar_w2_tknight) == TRUE) && (PLAYER_TALENT_ARMOR[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_w2_tknight_grd1_info()
{
	if((Npc_HasItems(self,itmi_leather) >= 1) && (Npc_HasItems(self,itmi_steelbar) >= 2))
	{
		Npc_RemoveInvItems(hero,itmi_leather,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		Npc_RemoveInvItems(hero,itar_w2_tknight,1);
		CreateInvItems(hero,itar_w2_tknight_grd1,1);
		AI_Wait(hero,6);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_CRTARSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		AI_EquipArmor(hero,itar_w2_tknight_grd1);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
	GRDARMOR = FALSE;
};


instance PC_ITAR_W2_TKNIGHT_GRD2(C_Info)
{
	nr = 4;
	npc = PC_Hero;
	condition = pc_itar_w2_tknight_grd2_condition;
	information = pc_itar_w2_tknight_grd2_info;
	permanent = TRUE;
	description = "Royal Vengardian armor Lv. 3 (1x leather, 2x steel bars)";
};


func int pc_itar_w2_tknight_grd2_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (KNOWS_W2KNIGHT_GRD1TO2 == TRUE) && (GRDARMOR == TRUE) && (Npc_HasItems(hero,itar_w2_tknight_grd1) == TRUE) && (PLAYER_TALENT_ARMOR[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_w2_tknight_grd2_info()
{
	if((Npc_HasItems(self,itmi_leather) >= 1) && (Npc_HasItems(self,itmi_steelbar) >= 2))
	{
		Npc_RemoveInvItems(hero,itmi_leather,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		Npc_RemoveInvItems(hero,itar_w2_tknight_grd1,1);
		CreateInvItems(hero,itar_w2_tknight_grd2,1);
		AI_Wait(hero,6);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_CRTARSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		AI_EquipArmor(hero,itar_w2_tknight_grd2);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
	GRDARMOR = FALSE;
};


instance PC_ITAR_W2_TKNIGHT_GRD3(C_Info)
{
	nr = 4;
	npc = PC_Hero;
	condition = pc_itar_w2_tknight_grd3_condition;
	information = pc_itar_w2_tknight_grd3_info;
	permanent = TRUE;
	description = "Royal Vengardian armor Lv. 4 (1x leather, 4x steel bars)";
};


func int pc_itar_w2_tknight_grd3_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (KNOWS_W2KNIGHT_GRD3TO4 == TRUE) && (GRDARMOR == TRUE) && (Npc_HasItems(hero,itar_w2_tknight_grd2) == TRUE) && (PLAYER_TALENT_ARMOR[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_w2_tknight_grd3_info()
{
	if((Npc_HasItems(self,itmi_leather) >= 1) && (Npc_HasItems(self,itmi_steelbar) >= 4))
	{
		Npc_RemoveInvItems(hero,itmi_leather,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,4);
		Npc_RemoveInvItems(hero,itar_w2_tknight_grd2,1);
		CreateInvItems(hero,itar_w2_tknight_grd3,1);
		AI_Wait(hero,6);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_CRTARSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		AI_EquipArmor(hero,itar_w2_tknight_grd3);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
	GRDARMOR = FALSE;
};


instance PC_ITAR_W2_TKNIGHT_GRD4(C_Info)
{
	nr = 4;
	npc = PC_Hero;
	condition = pc_itar_w2_tknight_grd4_condition;
	information = pc_itar_w2_tknight_grd4_info;
	permanent = TRUE;
	description = "Royal Vengardian armor Lv. 5 (3x leathers, 4x steel bars)";
};


func int pc_itar_w2_tknight_grd4_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (KNOWS_W2KNIGHT_GRD3TO4 == TRUE) && (GRDARMOR == TRUE) && (Npc_HasItems(hero,itar_w2_tknight_grd3) == TRUE) && (PLAYER_TALENT_ARMOR[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_w2_tknight_grd4_info()
{
	if((Npc_HasItems(self,itmi_leather) >= 3) && (Npc_HasItems(self,itmi_steelbar) >= 4))
	{
		Npc_RemoveInvItems(hero,itmi_leather,3);
		Npc_RemoveInvItems(hero,itmi_steelbar,4);
		Npc_RemoveInvItems(hero,itar_w2_tknight_grd3,1);
		CreateInvItems(hero,itar_w2_tknight_grd4,1);
		AI_Wait(hero,6);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_CRTARSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		AI_EquipArmor(hero,itar_w2_tknight_grd4);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
	GRDARMOR = FALSE;
};


instance PC_ITAR_W2_TKNIGHT_GRD5(C_Info)
{
	nr = 4;
	npc = PC_Hero;
	condition = pc_itar_w2_tknight_grd5_condition;
	information = pc_itar_w2_tknight_grd5_info;
	permanent = TRUE;
	description = "Royal Vengardian armor Lv. 6 (3x steel bars)";
};


func int pc_itar_w2_tknight_grd5_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (KNOWS_W2KNIGHT_GRD5TO7 == TRUE) && (GRDARMOR == TRUE) && (Npc_HasItems(hero,itar_w2_tknight_grd4) == TRUE) && (PLAYER_TALENT_ARMOR[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_w2_tknight_grd5_info()
{
	if(Npc_HasItems(self,itmi_steelbar) >= 3)
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,3);
		Npc_RemoveInvItems(hero,itar_w2_tknight_grd4,1);
		CreateInvItems(hero,itar_w2_tknight_grd5,1);
		AI_Wait(hero,6);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_CRTARSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		AI_EquipArmor(hero,itar_w2_tknight_grd5);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
	GRDARMOR = FALSE;
};


instance PC_ITAR_W2_TKNIGHT_GRD6(C_Info)
{
	nr = 4;
	npc = PC_Hero;
	condition = pc_itar_w2_tknight_grd6_condition;
	information = pc_itar_w2_tknight_grd6_info;
	permanent = TRUE;
	description = "Royal Vengardian armor Lv. 7 (2x leathers, 4x steel bars)";
};


func int pc_itar_w2_tknight_grd6_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (KNOWS_W2KNIGHT_GRD5TO7 == TRUE) && (GRDARMOR == TRUE) && (Npc_HasItems(hero,itar_w2_tknight_grd5) == TRUE) && (PLAYER_TALENT_ARMOR[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_w2_tknight_grd6_info()
{
	if((Npc_HasItems(self,itmi_leather) >= 2) && (Npc_HasItems(self,itmi_steelbar) >= 4))
	{
		Npc_RemoveInvItems(hero,itmi_leather,2);
		Npc_RemoveInvItems(hero,itmi_steelbar,4);
		Npc_RemoveInvItems(hero,itar_w2_tknight_grd5,1);
		CreateInvItems(hero,itar_w2_tknight_grd6,1);
		AI_Wait(hero,6);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_CRTARSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		AI_EquipArmor(hero,itar_w2_tknight_grd6);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
	GRDARMOR = FALSE;
};


instance PC_ITAR_W2_TKNIGHT_GRD7(C_Info)
{
	nr = 4;
	npc = PC_Hero;
	condition = pc_itar_w2_tknight_grd7_condition;
	information = pc_itar_w2_tknight_grd7_info;
	permanent = TRUE;
	description = "Royal Vengardian armor Lv. 8 (2x leathers, 5x steel bars)";
};


func int pc_itar_w2_tknight_grd7_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (KNOWS_W2KNIGHT_GRD5TO7 == TRUE) && (GRDARMOR == TRUE) && (Npc_HasItems(hero,itar_w2_tknight_grd6) == TRUE) && (PLAYER_TALENT_ARMOR[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_w2_tknight_grd7_info()
{
	if((Npc_HasItems(self,itmi_leather) >= 2) && (Npc_HasItems(self,itmi_steelbar) >= 5))
	{
		Npc_RemoveInvItems(hero,itmi_leather,2);
		Npc_RemoveInvItems(hero,itmi_steelbar,5);
		Npc_RemoveInvItems(hero,itar_w2_tknight_grd6,1);
		CreateInvItems(hero,itar_w2_tknight_grd7,1);
		AI_Wait(hero,6);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_CRTARSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		AI_EquipArmor(hero,itar_w2_tknight_grd7);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
	GRDARMOR = FALSE;
};


instance PC_ITAR_TROLL_ADDON(C_Info)
{
	nr = 4;
	npc = PC_Hero;
	condition = pc_itar_troll_addon_condition;
	information = pc_itar_troll_addon_info;
	permanent = TRUE;
	description = "Troll hide armor (1x troll hide, 3x textiles, 2x leathers, 1x steel bar)";
};


func int pc_itar_troll_addon_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (KNOWS_TROLLARCRFT == TRUE) && (CRTARMOR == TRUE) && (Npc_HasItems(hero,itar_troll_addon) == FALSE) && (PLAYER_TALENT_ARMOR[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_troll_addon_info()
{
	if((Npc_HasItems(hero,ItAt_TrollFur) >= 1) && (Npc_HasItems(self,itmi_textile) >= 3) && (Npc_HasItems(self,itmi_leather) >= 4) && (Npc_HasItems(self,itmi_steelbar) >= 1))
	{
		Npc_RemoveInvItems(hero,ItAt_TrollFur,1);
		Npc_RemoveInvItems(hero,itmi_textile,3);
		Npc_RemoveInvItems(hero,itmi_leather,4);
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		CreateInvItems(hero,itar_troll_addon,1);
		AI_EquipArmor(hero,itar_troll_addon);
		Print(PRINT_CRTARSUCCESS);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
};


instance PC_ITAR_SLD_G3_ADDON(C_Info)
{
	nr = 4;
	npc = PC_Hero;
	condition = pc_itar_sld_g3_addon_condition;
	information = pc_itar_sld_g3_addon_info;
	permanent = TRUE;
	description = "Myrtana mercenary armor (12x textiles, 8x leathers, 1x steel bar)";
};


func int pc_itar_sld_g3_addon_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (KNOWS_SLDG3 == TRUE) && (CRTARMOR == TRUE) && (Npc_HasItems(hero,itar_sld_g3_base) == FALSE) && (PLAYER_TALENT_ARMOR[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_sld_g3_addon_info()
{
	if((Npc_HasItems(self,itmi_textile) >= 12) && (Npc_HasItems(self,itmi_leather) >= 8) && (Npc_HasItems(self,itmi_steelbar) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_textile,12);
		Npc_RemoveInvItems(hero,itmi_leather,8);
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		CreateInvItems(hero,itar_sld_g3_base,1);
		AI_EquipArmor(hero,itar_sld_g3_base);
		Print(PRINT_CRTARSUCCESS);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
};


instance PC_ITAR_SLD_G3_ADDON_GRD1(C_Info)
{
	nr = 4;
	npc = PC_Hero;
	condition = pc_itar_sld_g3_addon_grd1_condition;
	information = pc_itar_sld_g3_addon_grd1_info;
	permanent = TRUE;
	description = "Myrtana mercenary armor Lv. 2 (3x leathers)";
};


func int pc_itar_sld_g3_addon_grd1_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (KNOWS_SLDG3_GRD1TO3 == TRUE) && (GRDARMOR == TRUE) && (Npc_HasItems(hero,itar_sld_g3_base) == TRUE) && (PLAYER_TALENT_ARMOR[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_sld_g3_addon_grd1_info()
{
	if(Npc_HasItems(self,itmi_leather) >= 3)
	{
		Npc_RemoveInvItems(hero,itmi_leather,3);
		Npc_RemoveInvItems(hero,itar_sld_g3_base,1);
		CreateInvItems(hero,itar_sld_g3_grd1,1);
		AI_Wait(hero,4);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_CRTARSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		AI_EquipArmor(hero,itar_sld_g3_grd1);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
	GRDARMOR = FALSE;
};


instance PC_ITAR_SLD_G3_ADDON_GRD2(C_Info)
{
	nr = 4;
	npc = PC_Hero;
	condition = pc_itar_sld_g3_addon_grd2_condition;
	information = pc_itar_sld_g3_addon_grd2_info;
	permanent = TRUE;
	description = "Myrtana mercenary armor Lv. 3 (2x leathers)";
};


func int pc_itar_sld_g3_addon_grd2_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (KNOWS_SLDG3_GRD1TO3 == TRUE) && (GRDARMOR == TRUE) && (Npc_HasItems(hero,itar_sld_g3_grd1) == TRUE) && (PLAYER_TALENT_ARMOR[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_sld_g3_addon_grd2_info()
{
	if(Npc_HasItems(self,itmi_leather) >= 2)
	{
		Npc_RemoveInvItems(hero,itmi_leather,2);
		Npc_RemoveInvItems(hero,itar_sld_g3_grd1,1);
		CreateInvItems(hero,itar_sld_g3_grd2,1);
		AI_Wait(hero,4);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_CRTARSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		AI_EquipArmor(hero,itar_sld_g3_grd2);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
	GRDARMOR = FALSE;
};


instance PC_ITAR_SLD_G3_ADDON_GRD3(C_Info)
{
	nr = 4;
	npc = PC_Hero;
	condition = pc_itar_sld_g3_addon_grd3_condition;
	information = pc_itar_sld_g3_addon_grd3_info;
	permanent = TRUE;
	description = "Myrtana mercenary armor Lv. 4 (1x leather, 2x steel bars)";
};


func int pc_itar_sld_g3_addon_grd3_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (KNOWS_SLDG3_GRD4TO5 == TRUE) && (GRDARMOR == TRUE) && (Npc_HasItems(hero,itar_sld_g3_grd2) == TRUE) && (PLAYER_TALENT_ARMOR[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_sld_g3_addon_grd3_info()
{
	if((Npc_HasItems(self,itmi_leather) >= 1) && (Npc_HasItems(self,itmi_steelbar) >= 2))
	{
		Npc_RemoveInvItems(hero,itmi_leather,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		Npc_RemoveInvItems(hero,itar_sld_g3_grd2,1);
		CreateInvItems(hero,itar_sld_g3_grd3,1);
		AI_Wait(hero,6);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_CRTARSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		AI_EquipArmor(hero,itar_sld_g3_grd3);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
	GRDARMOR = FALSE;
};


instance PC_ITAR_SLD_G3_ADDON_GRD4(C_Info)
{
	nr = 4;
	npc = PC_Hero;
	condition = pc_itar_sld_g3_addon_grd4_condition;
	information = pc_itar_sld_g3_addon_grd4_info;
	permanent = TRUE;
	description = "Myrtana mercenary armor Lv. 5(2x leathers, 7x steel bars)";
};


func int pc_itar_sld_g3_addon_grd4_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (KNOWS_SLDG3_GRD4TO5 == TRUE) && (GRDARMOR == TRUE) && (Npc_HasItems(hero,itar_sld_g3_grd3) == TRUE) && (PLAYER_TALENT_ARMOR[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_sld_g3_addon_grd4_info()
{
	if((Npc_HasItems(self,itmi_leather) >= 2) && (Npc_HasItems(self,itmi_steelbar) >= 7))
	{
		Npc_RemoveInvItems(hero,itmi_leather,2);
		Npc_RemoveInvItems(hero,itmi_steelbar,7);
		Npc_RemoveInvItems(hero,itar_sld_g3_grd3,1);
		CreateInvItems(hero,itar_sld_g3_grd4,1);
		AI_Wait(hero,6);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_CRTARSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		AI_EquipArmor(hero,itar_sld_g3_grd4);
		B_Say(self,self,"DIA_Buster_Hello_Impressive_15_00");
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
	GRDARMOR = FALSE;
};


instance PC_ITAR_SLD_G3_ADDON_GRD5(C_Info)
{
	nr = 4;
	npc = PC_Hero;
	condition = pc_itar_sld_g3_addon_grd5_condition;
	information = pc_itar_sld_g3_addon_grd5_info;
	permanent = TRUE;
	description = "Myrtana mercenary armor Lv. 6(1x leather, 2x steel bars)";
};


func int pc_itar_sld_g3_addon_grd5_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (KNOWS_SLDG3_GRD6TO7 == TRUE) && (GRDARMOR == TRUE) && (Npc_HasItems(hero,itar_sld_g3_grd4) == TRUE) && (PLAYER_TALENT_ARMOR[2] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_sld_g3_addon_grd5_info()
{
	if((Npc_HasItems(self,itmi_leather) >= 1) && (Npc_HasItems(self,itmi_steelbar) >= 2))
	{
		Npc_RemoveInvItems(hero,itmi_leather,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		Npc_RemoveInvItems(hero,itar_sld_g3_grd4,1);
		CreateInvItems(hero,itar_sld_g3_grd5,1);
		AI_Wait(hero,6);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_CRTARSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		AI_EquipArmor(hero,itar_sld_g3_grd5);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
	GRDARMOR = FALSE;
};


instance PC_ITAR_SLD_G3_ADDON_GRD6(C_Info)
{
	nr = 4;
	npc = PC_Hero;
	condition = pc_itar_sld_g3_addon_grd6_condition;
	information = pc_itar_sld_g3_addon_grd6_info;
	permanent = TRUE;
	description = "Myrtana mercenary armor Lv. 7(1x leather, 2x steel bars)";
};


func int pc_itar_sld_g3_addon_grd6_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (KNOWS_SLDG3_GRD6TO7 == TRUE) && (GRDARMOR == TRUE) && (Npc_HasItems(hero,itar_sld_g3_grd5) == TRUE) && (PLAYER_TALENT_ARMOR[2] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_sld_g3_addon_grd6_info()
{
	if((Npc_HasItems(self,itmi_leather) >= 1) && (Npc_HasItems(self,itmi_steelbar) >= 2))
	{
		Npc_RemoveInvItems(hero,itmi_leather,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		Npc_RemoveInvItems(hero,itar_sld_g3_grd5,1);
		CreateInvItems(hero,itar_sld_g3_grd6,1);
		AI_Wait(hero,6);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_CRTARSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		AI_EquipArmor(hero,itar_sld_g3_grd6);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
	GRDARMOR = FALSE;
};


instance PC_ITAR_BM_L(C_Info)
{
	nr = 4;
	npc = PC_Hero;
	condition = pc_itar_bm_l_condition;
	information = pc_itar_bm_l_info;
	permanent = TRUE;
	description = "Light battle-mage armor (1x black troll hide, 1x black pearl, 10x textiles, 12x leathers, 8x steel bars)";
};


func int pc_itar_bm_l_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (KNOWS_BATTLEMAGE == TRUE) && (CRTARMOR == TRUE) && (Npc_HasItems(hero,itar_bm_l) == FALSE) && (PLAYER_TALENT_ARMOR[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_bm_l_info()
{
	if((Npc_HasItems(self,ItAt_TrollBlackFur) >= 1) && (Npc_HasItems(self,ItMi_DarkPearl) >= 1) && (Npc_HasItems(self,itmi_leather) >= 12) && (Npc_HasItems(self,itmi_textile) >= 10) && (Npc_HasItems(self,itmi_steelbar) >= 8))
	{
		Npc_RemoveInvItems(hero,ItAt_TrollBlackFur,1);
		Npc_RemoveInvItems(hero,ItMi_DarkPearl,1);
		Npc_RemoveInvItems(hero,itmi_textile,10);
		Npc_RemoveInvItems(hero,itmi_leather,12);
		Npc_RemoveInvItems(hero,itmi_steelbar,8);
		CreateInvItems(hero,itar_bm_l,1);
		AI_EquipArmor(hero,itar_bm_l);
		Print(PRINT_CRTARSUCCESS);
		B_Say(self,self,"DIA_Buster_Hello_Impressive_15_00");
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
};


instance PC_ITAR_BM_M(C_Info)
{
	nr = 4;
	npc = PC_Hero;
	condition = pc_itar_bm_m_condition;
	information = pc_itar_bm_m_info;
	permanent = TRUE;
	description = "Light battle-mage armor -> Heavy battle-mage armor (2x steel bars)";
};


func int pc_itar_bm_m_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (Npc_HasItems(hero,itar_bm_l) >= 1) && (GRDARMOR == TRUE) && (PLAYER_TALENT_ARMOR[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_bm_m_info()
{
	if((Npc_HasItems(hero,itar_bm_l) >= 1) && (Npc_HasItems(self,itmi_steelbar) >= 2))
	{
		Npc_RemoveInvItems(hero,itar_bm_l,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		CreateInvItems(hero,itar_bm_m,1);
		AI_EquipArmor(hero,itar_bm_m);
		Print(PRINT_CRTARSUCCESS);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
};


instance PC_ITAR_GERALT_ADDON_GRD1(C_Info)
{
	nr = 4;
	npc = PC_Hero;
	condition = pc_itar_geralt_addon_grd1_condition;
	information = pc_itar_geralt_addon_grd1_info;
	permanent = TRUE;
	description = "Hunter's armor -> Enhanced hunter's armor (10x leathers, 3x skeleton bones)";
};


func int pc_itar_geralt_addon_grd1_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (Npc_HasItems(hero,itar_geralt_addon) >= 1) && (GRDARMOR == TRUE) && (PLAYER_TALENT_ARMOR[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_geralt_addon_grd1_info()
{
	if((Npc_HasItems(hero,itar_geralt_addon) >= 1) && (Npc_HasItems(self,itmi_leather) >= 10) && (Npc_HasItems(self,ItAt_SkeletonBone) >= 3))
	{
		Npc_RemoveInvItems(hero,itar_geralt_addon,1);
		Npc_RemoveInvItems(hero,itmi_leather,10);
		Npc_RemoveInvItems(hero,ItAt_SkeletonBone,3);
		CreateInvItems(hero,itar_geralt_addon_grd1,1);
		AI_EquipArmor(hero,itar_geralt_addon_grd1);
		Print(PRINT_GRDSUCCESS);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
};


instance PC_ITAR_GERALT_ADDON_GRD2(C_Info)
{
	nr = 4;
	npc = PC_Hero;
	condition = pc_itar_geralt_addon_grd2_condition;
	information = pc_itar_geralt_addon_grd2_info;
	permanent = TRUE;
	description = "Enhanced hunter's armor -> Reinforced hunter's armor (2x steel bars)";
};


func int pc_itar_geralt_addon_grd2_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (Npc_HasItems(hero,itar_geralt_addon_grd1) >= 1) && (GRDARMOR == TRUE) && (PLAYER_TALENT_ARMOR[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_geralt_addon_grd2_info()
{
	if((Npc_HasItems(hero,itar_geralt_addon_grd1) >= 1) && (Npc_HasItems(self,itmi_steelbar) >= 2))
	{
		Npc_RemoveInvItems(hero,itar_geralt_addon_grd1,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		CreateInvItems(hero,itar_geralt_addon_grd2,1);
		AI_EquipArmor(hero,itar_geralt_addon_grd2);
		Print(PRINT_GRDSUCCESS);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
};


instance PC_ITAR_GERALT_ADDON_GRD3(C_Info)
{
	nr = 4;
	npc = PC_Hero;
	condition = pc_itar_geralt_addon_grd3_condition;
	information = pc_itar_geralt_addon_grd3_info;
	permanent = TRUE;
	description = "Reinforced hunter's armor -> Heavy hunter's armor (2x steel bars)";
};


func int pc_itar_geralt_addon_grd3_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (Npc_HasItems(hero,itar_geralt_addon_grd2) >= 1) && (GRDARMOR == TRUE) && (PLAYER_TALENT_ARMOR[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_geralt_addon_grd3_info()
{
	if((Npc_HasItems(hero,itar_geralt_addon_grd2) >= 1) && (Npc_HasItems(self,itmi_steelbar) >= 2))
	{
		Npc_RemoveInvItems(hero,itar_geralt_addon_grd2,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		CreateInvItems(hero,itar_geralt_addon_grd3,1);
		AI_EquipArmor(hero,itar_geralt_addon_grd3);
		Print(PRINT_GRDSUCCESS);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
};


instance PC_ITAR_WMA_ASSN(C_Info)
{
	nr = 4;
	npc = PC_Hero;
	condition = pc_itar_wma_assn_condition;
	information = pc_itar_wma_assn_info;
	permanent = TRUE;
	description = "Master armor -> Assassin's armor (5x reptile skins, 1x steel bar)";
};


func int pc_itar_wma_assn_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (Npc_HasItems(hero,itar_wma_base) >= 1) && (GRDARMOR == TRUE) && (PLAYER_TALENT_ARMOR[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_wma_assn_info()
{
	if((Npc_HasItems(hero,itar_wma_base) >= 1) && (Npc_HasItems(self,itat_LurkerSkin) >= 5) && (Npc_HasItems(self,itmi_steelbar) >= 1))
	{
		Npc_RemoveInvItems(hero,itar_wma_base,1);
		Npc_RemoveInvItems(hero,itat_LurkerSkin,5);
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		CreateInvItems(hero,itar_wma_assn,1);
		AI_EquipArmor(hero,itar_wma_assn);
		Print(PRINT_GRDSUCCESS);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
};


instance PC_ITAR_WMA_ALHM(C_Info)
{
	nr = 4;
	npc = PC_Hero;
	condition = pc_itar_wma_alhm_condition;
	information = pc_itar_wma_alhm_info;
	permanent = TRUE;
	description = "Master armor -> Alchemist's vesture (5x rock crystals, 3x holy waters)";
};


func int pc_itar_wma_alhm_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (Npc_HasItems(hero,itar_wma_base) >= 1) && (GRDARMOR == TRUE) && (PLAYER_TALENT_ARMOR[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_wma_alhm_info()
{
	if((Npc_HasItems(hero,itar_wma_base) >= 1) && (Npc_HasItems(self,ItMi_Rockcrystal) >= 5) && (Npc_HasItems(self,ItMi_HolyWater) >= 3))
	{
		Npc_RemoveInvItems(hero,itar_wma_base,1);
		Npc_RemoveInvItems(hero,ItMi_Rockcrystal,5);
		Npc_RemoveInvItems(hero,ItMi_HolyWater,3);
		CreateInvItems(hero,itar_wma_alhm,1);
		AI_EquipArmor(hero,itar_wma_alhm);
		Print(PRINT_GRDSUCCESS);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
};


instance PC_ITAR_LEATHER_L_GRD1(C_Info)
{
	nr = 3;
	npc = PC_Hero;
	condition = pc_itar_leather_l_grd1_condition;
	information = pc_itar_leather_l_grd1_info;
	permanent = TRUE;
	description = "Leather armor -> Improved leather armor (2x troll skin)";
};


func int pc_itar_leather_l_grd1_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (Npc_HasItems(hero,ITAR_Leather_L) >= 1) && (GRDARMOR == TRUE) && (PLAYER_TALENT_ARMOR[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_leather_l_grd1_info()
{
	if((Npc_HasItems(hero,ITAR_Leather_L) >= 1) && (Npc_HasItems(self,ItAt_TrollFur) >= 2))
	{
		Npc_RemoveInvItems(hero,ITAR_Leather_L,1);
		Npc_RemoveInvItems(hero,ItAt_TrollFur,2);
		CreateInvItems(hero,itar_leather_l_grd1,1);
		AI_EquipArmor(hero,itar_leather_l_grd1);
		Print(PRINT_GRDSUCCESS);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
};


instance PC_ITAR_LEATHER_L_GRD2(C_Info)
{
	nr = 3;
	npc = PC_Hero;
	condition = pc_itar_leather_l_grd2_condition;
	information = pc_itar_leather_l_grd2_info;
	permanent = TRUE;
	description = "Improved leather armor -> Belted leather armor (7x leathers)";
};


func int pc_itar_leather_l_grd2_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (Npc_HasItems(hero,itar_leather_l_grd1) >= 1) && (GRDARMOR == TRUE) && (PLAYER_TALENT_ARMOR[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_leather_l_grd2_info()
{
	if((Npc_HasItems(hero,itar_leather_l_grd1) >= 1) && (Npc_HasItems(self,itmi_leather) >= 7))
	{
		Npc_RemoveInvItems(hero,itar_leather_l_grd1,1);
		Npc_RemoveInvItems(hero,itmi_leather,7);
		CreateInvItems(hero,itar_leather_l_grd2,1);
		AI_EquipArmor(hero,itar_leather_l_grd2);
		Print(PRINT_GRDSUCCESS);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
};


instance PC_ITAR_LEATHER_L_GRD3(C_Info)
{
	nr = 3;
	npc = PC_Hero;
	condition = pc_itar_leather_l_grd3_condition;
	information = pc_itar_leather_l_grd3_info;
	permanent = TRUE;
	description = "Belted leather armor -> Thickened leather armor (4x leathers)";
};


func int pc_itar_leather_l_grd3_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (Npc_HasItems(hero,itar_leather_l_grd2) >= 1) && (GRDARMOR == TRUE) && (PLAYER_TALENT_ARMOR[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_leather_l_grd3_info()
{
	if((Npc_HasItems(hero,itar_leather_l_grd2) >= 1) && (Npc_HasItems(self,itmi_leather) >= 4))
	{
		Npc_RemoveInvItems(hero,itar_leather_l_grd2,1);
		Npc_RemoveInvItems(hero,itmi_leather,4);
		CreateInvItems(hero,itar_leather_l_grd3,1);
		AI_EquipArmor(hero,itar_leather_l_grd3);
		Print(PRINT_GRDSUCCESS);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
};


instance PC_ITAR_LEATHER_L_GRD4(C_Info)
{
	nr = 3;
	npc = PC_Hero;
	condition = pc_itar_leather_l_grd4_condition;
	information = pc_itar_leather_l_grd4_info;
	permanent = TRUE;
	description = "Thickened leather armor -> Reinforced leather armor (5x leathers, 4x troll tusks)";
};


func int pc_itar_leather_l_grd4_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (Npc_HasItems(hero,itar_leather_l_grd3) >= 1) && (GRDARMOR == TRUE) && (PLAYER_TALENT_ARMOR[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_leather_l_grd4_info()
{
	if((Npc_HasItems(hero,itar_leather_l_grd3) >= 1) && (Npc_HasItems(self,itmi_leather) >= 5) && (Npc_HasItems(self,ItAt_TrollTooth) >= 4) && (PLAYER_TALENT_ARMOR[0] == TRUE))
	{
		Npc_RemoveInvItems(hero,itar_leather_l_grd3,1);
		Npc_RemoveInvItems(hero,itmi_leather,5);
		Npc_RemoveInvItems(hero,ItAt_TrollTooth,4);
		CreateInvItems(hero,itar_leather_l_grd4,1);
		AI_EquipArmor(hero,itar_leather_l_grd4);
		Print(PRINT_GRDSUCCESS);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
};


instance PC_ITAR_LEATHER_L_GRD5(C_Info)
{
	nr = 3;
	npc = PC_Hero;
	condition = pc_itar_leather_l_grd5_condition;
	information = pc_itar_leather_l_grd5_info;
	permanent = TRUE;
	description = "Reinforced leather armor -> Heavy leather armor (5x leathers, 4x troll tusks)";
};


func int pc_itar_leather_l_grd5_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (Npc_HasItems(hero,itar_leather_l_grd4) >= 1) && (GRDARMOR == TRUE) && (PLAYER_TALENT_ARMOR[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_leather_l_grd5_info()
{
	if((Npc_HasItems(hero,itar_leather_l_grd4) >= 1) && (Npc_HasItems(self,itmi_leather) >= 5) && (Npc_HasItems(self,ItAt_TrollTooth) >= 4))
	{
		Npc_RemoveInvItems(hero,itar_leather_l_grd4,1);
		Npc_RemoveInvItems(hero,itmi_leather,5);
		Npc_RemoveInvItems(hero,ItAt_TrollTooth,4);
		CreateInvItems(hero,itar_leather_l_grd5,1);
		AI_EquipArmor(hero,itar_leather_l_grd5);
		Print(PRINT_GRDSUCCESS);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
};

func void smitharmor_s1()
{
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
	{
		self.aivar[AIV_INVINCIBLE] = TRUE;
		PLAYER_MOBSI_PRODUCTION = MOBSI_SMITHARMOR;
		AI_ProcessInfos(hero);
	};
};


instance PC_WEAPONCOMPLETE(C_Info)
{
	npc = PC_Hero;
	nr = 13;
	condition = pc_weaponcomplete_condition;
	information = pc_weaponcomplete_info;
	permanent = TRUE;
	description = "Assemble weapons";
};


func int pc_weaponcomplete_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (GRDARMOR == FALSE) && (CMPLTWPN == FALSE) && (CRTARMOR == FALSE))
	{
		return TRUE;
	};
};

func void pc_weaponcomplete_info()
{
	CMPLTWPN = TRUE;
};


instance PC_WEAPONCOMPLETEBACK(C_Info)
{
	npc = PC_Hero;
	nr = 99;
	condition = pc_weaponcompleteback_condition;
	information = pc_weaponcompleteback_info;
	permanent = TRUE;
	description = Dialog_Back;
};


func int pc_weaponcompleteback_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (GRDARMOR == FALSE) && (CRTARMOR == FALSE) && (CMPLTWPN == TRUE))
	{
		return TRUE;
	};
};

func void pc_weaponcompleteback_info()
{
	CMPLTWPN = FALSE;
};


instance PC_ITMW_FIRSTBLADE_NS(C_Info)
{
	npc = PC_Hero;
	condition = pc_itmw_firstblade_ns_condition;
	information = pc_itmw_firstblade_ns_info;
	permanent = TRUE;
	description = "Assemble 'Sword' (1x steel bar, 1x textile)";
};


func int pc_itmw_firstblade_ns_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (CMPLTWPN == TRUE) && (Npc_HasItems(hero,itmi_firstblade_blade_nh) >= 1))
	{
		return TRUE;
	};
};

func void pc_itmw_firstblade_ns_info()
{
	if((Npc_HasItems(hero,itmi_firstblade_blade_nh) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >= 1) && (Npc_HasItems(hero,itmi_textile) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_firstblade_blade_nh,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		Npc_RemoveInvItems(hero,itmi_textile,1);
		CreateInvItems(hero,itmw_firstblade_ns,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen(PRINT_WPNNSSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = FALSE;
		CMPLT1HSWORD_01 = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};


instance PC_ITMW_1HFINESWORD_NS(C_Info)
{
	npc = PC_Hero;
	condition = pc_itmw_1hfinesword_ns_condition;
	information = pc_itmw_1hfinesword_ns_info;
	permanent = TRUE;
	description = "Assemble 'Steel longsword' (1x steel bar, 1x textile)";
};


func int pc_itmw_1hfinesword_ns_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (CMPLTWPN == TRUE) && (Npc_HasItems(hero,itmi_1hfinesword_blade_nh) >= 1))
	{
		return TRUE;
	};
};

func void pc_itmw_1hfinesword_ns_info()
{
	if((Npc_HasItems(hero,itmi_1hfinesword_blade_nh) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >= 1) && (Npc_HasItems(hero,itmi_textile) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_1hfinesword_blade_nh,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		Npc_RemoveInvItems(hero,itmi_textile,1);
		CreateInvItems(hero,itmw_1hfinesword_ns,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen(PRINT_WPNNSSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = FALSE;
		CMPLT1HSWORD_02 = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};


instance PC_ITMW_SOT_NS(C_Info)
{
	npc = PC_Hero;
	condition = pc_itmw_sot_ns_condition;
	information = pc_itmw_sot_ns_info;
	permanent = TRUE;
	description = "Assemble 'Sword Of Truth' (1x steel bar, 1x textile)";
};


func int pc_itmw_sot_ns_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (CMPLTWPN == TRUE) && (Npc_HasItems(hero,itmi_sot_blade_nh) >= 1))
	{
		return TRUE;
	};
};

func void pc_itmw_sot_ns_info()
{
	if((Npc_HasItems(hero,itmi_sot_blade_nh) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >= 1) && (Npc_HasItems(hero,itmi_leather) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_sot_blade_nh,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		Npc_RemoveInvItems(hero,itmi_leather,1);
		CreateInvItems(hero,itmw_sot_ns,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen(PRINT_WPNNSSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = FALSE;
		CMPLT1HSWORD_03 = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};


instance PC_ITMW_FINEBASTARD_NS(C_Info)
{
	npc = PC_Hero;
	condition = pc_itmw_finebastard_ns_condition;
	information = pc_itmw_finebastard_ns_info;
	permanent = TRUE;
	description = "Assemble 'Fine bastard sword' (1x steel bar, 1x textile)";
};


func int pc_itmw_finebastard_ns_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (CMPLTWPN == TRUE) && (Npc_HasItems(hero,itmi_finebastard_blade_nh) >= 1))
	{
		return TRUE;
	};
};

func void pc_itmw_finebastard_ns_info()
{
	if((Npc_HasItems(hero,itmi_finebastard_blade_nh) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >= 1) && (Npc_HasItems(hero,itmi_leather) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_finebastard_blade_nh,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		Npc_RemoveInvItems(hero,itmi_leather,1);
		CreateInvItems(hero,itmw_finebastard_ns,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen(PRINT_WPNNSSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = FALSE;
		CMPLT1HSWORD_04 = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};


instance PC_ITMW_ANDURIL_NS(C_Info)
{
	npc = PC_Hero;
	condition = pc_itmw_anduril_ns_condition;
	information = pc_itmw_anduril_ns_info;
	permanent = TRUE;
	description = "Assemble 'Elegant bastard sword' (1x steel bar, 1x textile)";
};


func int pc_itmw_anduril_ns_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (CMPLTWPN == TRUE) && (Npc_HasItems(hero,itmi_anduril_blade_nh) >= 1))
	{
		return TRUE;
	};
};

func void pc_itmw_anduril_ns_info()
{
	if((Npc_HasItems(hero,itmi_anduril_blade_nh) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >= 1) && (Npc_HasItems(hero,itmi_leather) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_anduril_blade_nh,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		Npc_RemoveInvItems(hero,itmi_leather,1);
		CreateInvItems(hero,itmw_anduril_ns,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen(PRINT_WPNNSSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = FALSE;
		CMPLT1HSWORD_05 = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};


instance PC_ITMW_FIRSTBLADE2H_NS(C_Info)
{
	npc = PC_Hero;
	condition = pc_itmw_firstblade2h_ns_condition;
	information = pc_itmw_firstblade2h_ns_info;
	permanent = TRUE;
	description = "Assemble 'Two-hander' (1x steel bar, 1x textile)";
};


func int pc_itmw_firstblade2h_ns_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (CMPLTWPN == TRUE) && (Npc_HasItems(hero,itmi_firstblade2h_blade_nh) >= 1))
	{
		return TRUE;
	};
};

func void pc_itmw_firstblade2h_ns_info()
{
	if((Npc_HasItems(hero,itmi_firstblade2h_blade_nh) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >= 1) && (Npc_HasItems(hero,itmi_textile) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_firstblade2h_blade_nh,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		Npc_RemoveInvItems(hero,itmi_textile,1);
		CreateInvItems(hero,itmw_firstblade2h_ns,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen(PRINT_WPNNSSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = FALSE;
		CMPLT2HSWORD_01 = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};


instance PC_ITMW_2HFINESWORD_NS(C_Info)
{
	npc = PC_Hero;
	condition = pc_itmw_2hfinesword_ns_condition;
	information = pc_itmw_2hfinesword_ns_info;
	permanent = TRUE;
	description = "Assemble 'Steel two-hander' (1x steel bar, 1x textile)";
};


func int pc_itmw_2hfinesword_ns_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (CMPLTWPN == TRUE) && (Npc_HasItems(hero,itmi_2hfinesword_blade_nh) >= 1))
	{
		return TRUE;
	};
};

func void pc_itmw_2hfinesword_ns_info()
{
	if((Npc_HasItems(hero,itmi_2hfinesword_blade_nh) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >= 1) && (Npc_HasItems(hero,itmi_textile) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_2hfinesword_blade_nh,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		Npc_RemoveInvItems(hero,itmi_textile,1);
		CreateInvItems(hero,itmw_2hfinesword_ns,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen(PRINT_WPNNSSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = FALSE;
		CMPLT2HSWORD_02 = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};


instance PC_ITMW_CLAYMORE_NS(C_Info)
{
	npc = PC_Hero;
	condition = pc_itmw_claymore_ns_condition;
	information = pc_itmw_claymore_ns_info;
	permanent = TRUE;
	description = "Assemble 'Claymore' (1x steel bar, 1x wooden bar)";
};


func int pc_itmw_claymore_ns_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (CMPLTWPN == TRUE) && (Npc_HasItems(hero,itmi_claymore_blade_nh) >= 1))
	{
		return TRUE;
	};
};

func void pc_itmw_claymore_ns_info()
{
	if((Npc_HasItems(hero,itmi_claymore_blade_nh) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >= 1) && (Npc_HasItems(hero,itmi_woodbar) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_claymore_blade_nh,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		Npc_RemoveInvItems(hero,itmi_woodbar,1);
		CreateInvItems(hero,itmw_claymore_ns,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen(PRINT_WPNNSSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = FALSE;
		CMPLT2HSWORD_03 = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};


instance PC_ITMW_DEMONSLAYER_NS(C_Info)
{
	npc = PC_Hero;
	condition = pc_itmw_demonslayer_ns_condition;
	information = pc_itmw_demonslayer_ns_info;
	permanent = TRUE;
	description = "Assemble 'Demonslayer' (2x steel bars, 1x textile)";
};


func int pc_itmw_demonslayer_ns_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (CMPLTWPN == TRUE) && (Npc_HasItems(hero,itmi_demonslayer_blade_nh) >= 1))
	{
		return TRUE;
	};
};

func void pc_itmw_demonslayer_ns_info()
{
	if((Npc_HasItems(hero,itmi_demonslayer_blade_nh) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >= 2) && (Npc_HasItems(hero,itmi_textile) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_demonslayer_blade_nh,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		Npc_RemoveInvItems(hero,itmi_textile,1);
		CreateInvItems(hero,itmw_demonslayer_ns,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen(PRINT_WPNNSSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = FALSE;
		CMPLT2HSWORD_04 = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};


instance PC_ITMW_FLAMEBERGE_NS(C_Info)
{
	npc = PC_Hero;
	condition = pc_itmw_flameberge_ns_condition;
	information = pc_itmw_flameberge_ns_info;
	permanent = TRUE;
	description = "Assemble 'Flamberge' (2x steel bars, 2x textiles)";
};


func int pc_itmw_flameberge_ns_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (CMPLTWPN == TRUE) && (Npc_HasItems(hero,itmi_flameberge_blade_nh) >= 1))
	{
		return TRUE;
	};
};

func void pc_itmw_flameberge_ns_info()
{
	if((Npc_HasItems(hero,itmi_flameberge_blade_nh) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >= 2) && (Npc_HasItems(hero,itmi_leather) >= 2))
	{
		Npc_RemoveInvItems(hero,itmi_flameberge_blade_nh,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		Npc_RemoveInvItems(hero,itmi_leather,2);
		CreateInvItems(hero,itmw_flameberge_ns,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen(PRINT_WPNNSSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = FALSE;
		CMPLT2HSWORD_05 = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};


instance PC_ITMW_1H_SPECIAL_01_NS(C_Info)
{
	npc = PC_Hero;
	condition = pc_itmw_1h_special_01_ns_condition;
	information = pc_itmw_1h_special_01_ns_info;
	permanent = TRUE;
	description = "Assemble 'Ore longsword' (1x steel bar, 1x textile)";
};


func int pc_itmw_1h_special_01_ns_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (CMPLTWPN == TRUE) && (Npc_HasItems(hero,itmi_1h_special_01_blade_nh) >= 1))
	{
		return TRUE;
	};
};

func void pc_itmw_1h_special_01_ns_info()
{
	if((Npc_HasItems(hero,itmi_1h_special_01_blade_nh) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >= 1) && (Npc_HasItems(hero,itmi_leather) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_1h_special_01_blade_nh,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		Npc_RemoveInvItems(hero,itmi_leather,1);
		CreateInvItems(hero,itmw_1h_special_01_ns,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen(PRINT_WPNNSSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = FALSE;
		CMPLT1HSPECSWORD_01 = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};


instance PC_ITMW_2H_SPECIAL_01_NS(C_Info)
{
	npc = PC_Hero;
	condition = pc_itmw_2h_special_01_ns_condition;
	information = pc_itmw_2h_special_01_ns_info;
	permanent = TRUE;
	description = "Assemble 'Ore two-hander' (1x steel bar, 1x textile, 1x textile)";
};


func int pc_itmw_2h_special_01_ns_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (CMPLTWPN == TRUE) && (Npc_HasItems(hero,itmi_2h_special_01_blade_nh) >= 1))
	{
		return TRUE;
	};
};

func void pc_itmw_2h_special_01_ns_info()
{
	if((Npc_HasItems(hero,itmi_2h_special_01_blade_nh) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >= 1) && (Npc_HasItems(hero,itmi_leather) >= 1) && (Npc_HasItems(hero,itmi_textile) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_2h_special_01_blade_nh,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		Npc_RemoveInvItems(hero,itmi_leather,1);
		Npc_RemoveInvItems(hero,itmi_textile,1);
		CreateInvItems(hero,itmw_2h_special_01_ns,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen(PRINT_WPNNSSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = FALSE;
		CMPLT2HSPECSWORD_01 = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};


instance PC_ITMW_1H_SPECIAL_02_NS(C_Info)
{
	npc = PC_Hero;
	condition = pc_itmw_1h_special_02_ns_condition;
	information = pc_itmw_1h_special_02_ns_info;
	permanent = TRUE;
	description = "Assemble 'Ore bastard sword' (1x steel bar, 1x leather)";
};


func int pc_itmw_1h_special_02_ns_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (CMPLTWPN == TRUE) && (Npc_HasItems(hero,itmi_1h_special_02_blade_nh) >= 1))
	{
		return TRUE;
	};
};

func void pc_itmw_1h_special_02_ns_info()
{
	if((Npc_HasItems(hero,itmi_1h_special_02_blade_nh) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >= 1) && (Npc_HasItems(hero,itmi_leather) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_1h_special_02_blade_nh,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		Npc_RemoveInvItems(hero,itmi_leather,1);
		CreateInvItems(hero,itmw_1h_special_02_ns,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen(PRINT_WPNNSSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = FALSE;
		CMPLT1HSPECSWORD_02 = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};


instance PC_ITMW_2H_SPECIAL_02_NS(C_Info)
{
	npc = PC_Hero;
	condition = pc_itmw_2h_special_02_ns_condition;
	information = pc_itmw_2h_special_02_ns_info;
	permanent = TRUE;
	description = "Assemble 'Heavy ore two-hander' (1x steel bar, 1x leather)";
};


func int pc_itmw_2h_special_02_ns_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (CMPLTWPN == TRUE) && (Npc_HasItems(hero,itmi_2h_special_02_blade_nh) >= 1))
	{
		return TRUE;
	};
};

func void pc_itmw_2h_special_02_ns_info()
{
	if((Npc_HasItems(hero,itmi_2h_special_02_blade_nh) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >= 1) && (Npc_HasItems(hero,itmi_leather) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_2h_special_02_blade_nh,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		Npc_RemoveInvItems(hero,itmi_leather,1);
		CreateInvItems(hero,itmw_2h_special_02_ns,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen(PRINT_WPNNSSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = FALSE;
		CMPLT2HSPECSWORD_02 = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};


instance PC_ITMW_1H_SPECIAL_03_NS(C_Info)
{
	npc = PC_Hero;
	condition = pc_itmw_1h_special_03_ns_condition;
	information = pc_itmw_1h_special_03_ns_info;
	permanent = TRUE;
	description = "Assemble 'Orcish ore battle sword' (1x steel bar, 1x leather, 1x black pearl)";
};


func int pc_itmw_1h_special_03_ns_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (CMPLTWPN == TRUE) && (Npc_HasItems(hero,itmi_1h_special_03_blade_nh) >= 1))
	{
		return TRUE;
	};
};

func void pc_itmw_1h_special_03_ns_info()
{
	if((Npc_HasItems(hero,itmi_1h_special_03_blade_nh) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >= 1) && (Npc_HasItems(hero,itmi_leather) >= 1) && (Npc_HasItems(hero,ItMi_DarkPearl) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_1h_special_03_blade_nh,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		Npc_RemoveInvItems(hero,itmi_leather,1);
		Npc_RemoveInvItems(hero,ItMi_DarkPearl,1);
		CreateInvItems(hero,itmw_1h_special_03_ns,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen(PRINT_WPNNSSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = FALSE;
		CMPLT1HSPECSWORD_03 = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};


instance PC_ITMW_2H_SPECIAL_03_NS(C_Info)
{
	npc = PC_Hero;
	condition = pc_itmw_2h_special_03_ns_condition;
	information = pc_itmw_2h_special_03_ns_info;
	permanent = TRUE;
	description = "Assemble 'Heavy orcish ore battle sword' (1x steel bar, 2x leathers)";
};


func int pc_itmw_2h_special_03_ns_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (CMPLTWPN == TRUE) && (Npc_HasItems(hero,itmi_2h_special_03_blade_nh) >= 1))
	{
		return TRUE;
	};
};

func void pc_itmw_2h_special_03_ns_info()
{
	if((Npc_HasItems(hero,itmi_2h_special_03_blade_nh) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >= 1) && (Npc_HasItems(hero,itmi_leather) >= 2))
	{
		Npc_RemoveInvItems(hero,itmi_2h_special_03_blade_nh,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		Npc_RemoveInvItems(hero,itmi_leather,2);
		CreateInvItems(hero,itmw_2h_special_03_ns,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen(PRINT_WPNNSSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = FALSE;
		CMPLT2HSPECSWORD_03 = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};


instance PC_ITMW_1H_SPECIAL_04_NS(C_Info)
{
	npc = PC_Hero;
	condition = pc_itmw_1h_special_04_ns_condition;
	information = pc_itmw_1h_special_04_ns_info;
	permanent = TRUE;
	description = "Assemble 'Ore Dragonslayer' (1x steel bar, 1x leather, 1x black pearl)";
};


func int pc_itmw_1h_special_04_ns_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (CMPLTWPN == TRUE) && (Npc_HasItems(hero,itmi_1h_special_04_blade_nh) >= 1))
	{
		return TRUE;
	};
};

func void pc_itmw_1h_special_04_ns_info()
{
	if((Npc_HasItems(hero,itmi_1h_special_04_blade_nh) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >= 1) && (Npc_HasItems(hero,itmi_leather) >= 1) && (Npc_HasItems(hero,ItMi_DarkPearl) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_1h_special_04_blade_nh,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		Npc_RemoveInvItems(hero,itmi_leather,1);
		Npc_RemoveInvItems(hero,ItMi_DarkPearl,1);
		CreateInvItems(hero,itmw_1h_special_04_ns,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen(PRINT_WPNNSSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = FALSE;
		CMPLT1HSPECSWORD_04 = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};


instance PC_ITMW_2H_SPECIAL_04_NS(C_Info)
{
	npc = PC_Hero;
	condition = pc_itmw_2h_special_04_ns_condition;
	information = pc_itmw_2h_special_04_ns_info;
	permanent = TRUE;
	description = "Assemble 'Large ore Dragonslayer' (2x steel bars, 2x leathers, 1x diamond, 1x amethyst)";
};


func int pc_itmw_2h_special_04_ns_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (CMPLTWPN == TRUE) && (Npc_HasItems(hero,itmi_2h_special_04_blade_nh) >= 1))
	{
		return TRUE;
	};
};

func void pc_itmw_2h_special_04_ns_info()
{
	if((Npc_HasItems(hero,itmi_2h_special_04_blade_nh) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >= 2) && (Npc_HasItems(hero,itmi_leather) >= 2) && (Npc_HasItems(hero,itmi_diamond) >= 1) && (Npc_HasItems(hero,itmi_amethyst) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_2h_special_04_blade_nh,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		Npc_RemoveInvItems(hero,itmi_leather,2);
		Npc_RemoveInvItems(hero,itmi_diamond,1);
		Npc_RemoveInvItems(hero,itmi_amethyst,1);
		CreateInvItems(hero,itmw_2h_special_04_ns,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen(PRINT_WPNNSSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = FALSE;
		CMPLT2HSPECSWORD_04 = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};


instance PC_ITMW_1H_DEATHBRINGER_NS(C_Info)
{
	npc = PC_Hero;
	condition = pc_itmw_1h_deathbringer_ns_condition;
	information = pc_itmw_1h_deathbringer_ns_info;
	permanent = TRUE;
	description = "Assemble 'Deathbringer' (2x steel bars, 2x leathers, 3x rubies)";
};


func int pc_itmw_1h_deathbringer_ns_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (CMPLTWPN == TRUE) && (Npc_HasItems(hero,itmi_1h_deathbringer_blade_nh) >= 1))
	{
		return TRUE;
	};
};

func void pc_itmw_1h_deathbringer_ns_info()
{
	if((Npc_HasItems(hero,itmi_1h_deathbringer_blade_nh) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >= 2) && (Npc_HasItems(hero,itmi_leather) >= 2) && (Npc_HasItems(hero,itmi_ruby) >= 3))
	{
		Npc_RemoveInvItems(hero,itmi_1h_deathbringer_blade_nh,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		Npc_RemoveInvItems(hero,itmi_leather,2);
		Npc_RemoveInvItems(hero,itmi_ruby,3);
		CreateInvItems(hero,itmw_1h_deathbringer_ns,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen(PRINT_WPNNSSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = FALSE;
		CMPLT1HSPECSWORD_05 = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};


instance PC_ITMW_2H_DEATHBRINGER_NS(C_Info)
{
	npc = PC_Hero;
	condition = pc_itmw_2h_deathbringer_ns_condition;
	information = pc_itmw_2h_deathbringer_ns_info;
	permanent = TRUE;
	description = "Assemble 'Heavy Deathbringer' (3x steel bars, 2x leathers, 3x rubies)";
};


func int pc_itmw_2h_deathbringer_ns_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (CMPLTWPN == TRUE) && (Npc_HasItems(hero,itmi_2h_deathbringer_blade_nh) >= 1))
	{
		return TRUE;
	};
};

func void pc_itmw_2h_deathbringer_ns_info()
{
	if((Npc_HasItems(hero,itmi_2h_deathbringer_blade_nh) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >= 3) && (Npc_HasItems(hero,itmi_leather) >= 2) && (Npc_HasItems(hero,itmi_ruby) >= 3))
	{
		Npc_RemoveInvItems(hero,itmi_2h_deathbringer_blade_nh,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,3);
		Npc_RemoveInvItems(hero,itmi_leather,2);
		Npc_RemoveInvItems(hero,itmi_ruby,3);
		CreateInvItems(hero,itmw_2h_deathbringer_ns,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen(PRINT_WPNNSSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = FALSE;
		CMPLT2HSPECSWORD_05 = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};


var C_Item MAGITM;
instance PC_KDFHOOD(C_Info)
{
	nr = 111;
	npc = PC_Hero;
	condition = pc_kdfhood_condition;
	information = pc_kdfhood_info;
	permanent = TRUE;
	description = "Put on/Take off hood";
};


func int pc_kdfhood_condition()
{
	MAGITM = Npc_GetEquippedArmor(hero);
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHARMOR) && (CMPLTWPN == FALSE) && (GRDARMOR == FALSE) && (CRTARMOR == FALSE) && ((Hlp_IsItem(magitm,ItAr_KDF_L) == TRUE) || (Hlp_IsItem(magitm,itar_kdf_l_wh) == TRUE) || (Hlp_IsItem(magitm,ItAr_KDF_H) == TRUE) || (Hlp_IsItem(magitm,itar_kdf_h_wh) == TRUE) || (Hlp_IsItem(magitm,itar_kdw_h) == TRUE) || (Hlp_IsItem(magitm,itar_kdw_h_wh) == TRUE)))
	{
		return TRUE;
	};
};

func void pc_kdfhood_info()
{
	MAGITM = Npc_GetEquippedArmor(hero);
	if(Hlp_IsItem(magitm,ItAr_KDF_L) == TRUE)
	{
		Npc_RemoveInvItems(hero,ItAr_KDF_L,1);
		CreateInvItems(hero,itar_kdf_l_wh,1);
		AI_EquipArmor(hero,itar_kdf_l_wh);
		b_endproductiondialog();
	};
	if(Hlp_IsItem(magitm,itar_kdf_l_wh) == TRUE)
	{
		Npc_RemoveInvItems(hero,itar_kdf_l_wh,1);
		CreateInvItems(hero,ItAr_KDF_L,1);
		AI_EquipArmor(hero,ItAr_KDF_L);
		b_endproductiondialog();
	};
	if(Hlp_IsItem(magitm,ItAr_KDF_H) == TRUE)
	{
		Npc_RemoveInvItems(hero,ItAr_KDF_H,1);
		CreateInvItems(hero,itar_kdf_h_wh,1);
		AI_EquipArmor(hero,itar_kdf_h_wh);
		b_endproductiondialog();
	};
	if(Hlp_IsItem(magitm,itar_kdf_h_wh) == TRUE)
	{
		Npc_RemoveInvItems(hero,itar_kdf_h_wh,1);
		CreateInvItems(hero,ItAr_KDF_H,1);
		AI_EquipArmor(hero,ItAr_KDF_H);
		b_endproductiondialog();
	};
	if(Hlp_IsItem(magitm,itar_kdw_h) == TRUE)
	{
		Npc_RemoveInvItems(hero,itar_kdw_h,1);
		CreateInvItems(hero,itar_kdw_h_wh,1);
		AI_EquipArmor(hero,itar_kdw_h_wh);
		b_endproductiondialog();
	};
	if(Hlp_IsItem(magitm,itar_kdw_h_wh) == TRUE)
	{
		Npc_RemoveInvItems(hero,itar_kdw_h_wh,1);
		CreateInvItems(hero,itar_kdw_h,1);
		AI_EquipArmor(hero,itar_kdw_h);
		b_endproductiondialog();
	};
};

