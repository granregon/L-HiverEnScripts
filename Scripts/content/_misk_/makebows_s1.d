
var int m_bows;
var int m_arrows;

func void makebows_s1()
{
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
	{
		self.aivar[AIV_INVINCIBLE] = TRUE;
		PLAYER_MOBSI_PRODUCTION = MOBSI_MAKEBOWS;
		AI_ProcessInfos(hero);
	};
};


instance PC_MAKEBOWS_END(C_Info)
{
	npc = PC_Hero;
	nr = 999;
	condition = pc_makebows_end_condition;
	information = pc_makebows_end_info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int pc_makebows_end_condition()
{
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_MAKEBOWS)
	{
		return TRUE;
	};
};

func void pc_makebows_end_info()
{
	b_endproductiondialog();
	M_ARROWS = FALSE;
	M_BOWS = FALSE;
};


instance PC_BOWS(C_Info)
{
	npc = PC_Hero;
	condition = pc_bows_condition;
	information = pc_bows_info;
	permanent = TRUE;
	description = "Craft bows";
};


func int pc_bows_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_MAKEBOWS) && (M_BOWS == FALSE) && (M_ARROWS == FALSE))
	{
		return TRUE;
	};
};

func void pc_bows_info()
{
	M_BOWS = TRUE;
};


instance PC_ARROWS(C_Info)
{
	npc = PC_Hero;
	condition = pc_arrows_condition;
	information = pc_arrows_info;
	permanent = TRUE;
	description = "Craft Arrows";
};


func int pc_arrows_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_MAKEBOWS) && (M_BOWS == FALSE) && (M_ARROWS == FALSE))
	{
		return TRUE;
	};
};

func void pc_arrows_info()
{
	M_ARROWS = TRUE;
};


instance PC_MAKEBOWS_BSPR_1(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_makebows_bspr_1_condition;
	information = pc_makebows_bspr_1_info;
	permanent = TRUE;
	description = "Craft 'Fine longbow' (2x wooden billet, 2x leather)";
};


func int pc_makebows_bspr_1_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_MAKEBOWS) && (M_BOWS == TRUE) && (M_ARROWS == FALSE) && (PLAYER_TALENT_BOWMAKE[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_makebows_bspr_1_info()
{
	if((Npc_HasItems(hero,itmi_woodbar_big) >= 2) && (Npc_HasItems(self,itmi_leather) >= 2))
	{
		CreateInvItems(hero,itrw_bow_d_r2,1);
		Npc_RemoveInvItems(hero,itmi_woodbar_big,2);
		Npc_RemoveInvItems(hero,itmi_leather,2);
		AI_Wait(other,6);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen("Bow crafted!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		CMPLTBOW_01 = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	M_BOWS = FALSE;
};


instance PC_MAKEBOWS_BSPR_2(C_Info)
{
	npc = PC_Hero;
	nr = 3;
	condition = pc_makebows_bspr_2_condition;
	information = pc_makebows_bspr_2_info;
	permanent = TRUE;
	description = "Craft 'Assassin's bow' (2x wooden billet, 3x leather)";
};


func int pc_makebows_bspr_2_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_MAKEBOWS) && (M_BOWS == TRUE) && (M_ARROWS == FALSE) && (PLAYER_TALENT_BOWMAKE[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_makebows_bspr_2_info()
{
	if((Npc_HasItems(hero,itmi_woodbar_big) >= 2) && (Npc_HasItems(self,itmi_leather) >= 3))
	{
		CreateInvItems(hero,itrw_bow_long_arabic,1);
		Npc_RemoveInvItems(hero,itmi_woodbar_big,2);
		Npc_RemoveInvItems(hero,itmi_leather,3);
		AI_Wait(other,6);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen("Bow crafted!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		CMPLTBOW_02 = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	M_BOWS = FALSE;
};


instance PC_MAKEBOWS_BSPR_3(C_Info)
{
	npc = PC_Hero;
	nr = 4;
	condition = pc_makebows_bspr_3_condition;
	information = pc_makebows_bspr_3_info;
	permanent = TRUE;
	description = "Craft 'War bow' (3x wooden billet, 3x leather)";
};


func int pc_makebows_bspr_3_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_MAKEBOWS) && (M_BOWS == TRUE) && (M_ARROWS == FALSE) && (PLAYER_TALENT_BOWMAKE[2] == TRUE))
	{
		return TRUE;
	};
};

func void pc_makebows_bspr_3_info()
{
	if((Npc_HasItems(hero,itmi_woodbar_big) >= 3) && (Npc_HasItems(self,itmi_leather) >= 3))
	{
		CreateInvItems(hero,itrw_bow_r2_sld,1);
		Npc_RemoveInvItems(hero,itmi_woodbar_big,3);
		Npc_RemoveInvItems(hero,itmi_leather,3);
		AI_Wait(other,6);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen("Bow crafted!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		CMPLTBOW_03 = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	M_BOWS = FALSE;
};


instance PC_MAKEBOWS_BSPR_4(C_Info)
{
	npc = PC_Hero;
	nr = 5;
	condition = pc_makebows_bspr_4_condition;
	information = pc_makebows_bspr_4_info;
	permanent = TRUE;
	description = "Craft 'Fine oak bow' (4x wooden billet, 2x leather)";
};


func int pc_makebows_bspr_4_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_MAKEBOWS) && (M_BOWS == TRUE) && (M_ARROWS == FALSE) && (PLAYER_TALENT_BOWMAKE[3] == TRUE))
	{
		return TRUE;
	};
};

func void pc_makebows_bspr_4_info()
{
	if((Npc_HasItems(hero,itmi_woodbar_big) >= 4) && (Npc_HasItems(self,itmi_leather) >= 2))
	{
		CreateInvItems(hero,itrw_g4_oak_bow_01,1);
		Npc_RemoveInvItems(hero,itmi_woodbar_big,4);
		Npc_RemoveInvItems(hero,itmi_leather,2);
		AI_Wait(other,6);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen("Bow crafted!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		CMPLTBOW_04 = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	M_BOWS = FALSE;
};


instance PC_MAKEBOWS_BSPR_5(C_Info)
{
	npc = PC_Hero;
	nr = 6;
	condition = pc_makebows_bspr_5_condition;
	information = pc_makebows_bspr_5_info;
	permanent = TRUE;
	description = "Craft 'Heavy steel bow' (2x wooden billet, 2x leather, 10x steel bar)";
};


func int pc_makebows_bspr_5_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_MAKEBOWS) && (M_BOWS == TRUE) && (M_ARROWS == FALSE) && (PLAYER_TALENT_BOWMAKE[4] == TRUE))
	{
		return TRUE;
	};
};

func void pc_makebows_bspr_5_info()
{
	if((Npc_HasItems(hero,itmi_woodbar_big) >= 2) && (Npc_HasItems(self,itmi_leather) >= 2) && (Npc_HasItems(hero,itmi_steelbar) >= 10))
	{
		CreateInvItems(hero,itrw_bow_r2_cobra,1);
		Npc_RemoveInvItems(hero,itmi_woodbar_big,2);
		Npc_RemoveInvItems(hero,itmi_leather,2);
		Npc_RemoveInvItems(hero,itmi_steelbar,10);
		AI_Wait(other,6);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen("Bow crafted!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		CMPLTBOW_05 = TRUE;
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	M_BOWS = FALSE;
};


instance PC_MAKEBOWS_ARROWS_X25(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_makebows_arrows_x25_condition;
	information = pc_makebows_arrows_x25_info;
	permanent = TRUE;
	description = "Craft 25 arrows (2x wooden bar, 1x steel bar)";
};


func int pc_makebows_arrows_x25_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_MAKEBOWS) && (M_ARROWS == TRUE) && (M_BOWS == FALSE) && (PLAYER_TALENT_BOWMAKE[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_makebows_arrows_x25_info()
{
	if((Npc_HasItems(hero,itmi_steelbar) >= 1) && (Npc_HasItems(hero,itmi_woodbar) >= 2))
	{
		CreateInvItems(hero,ItRw_Arrow,25);
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		Npc_RemoveInvItems(hero,itmi_woodbar,2);
		AI_Wait(other,5);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen("Arrows crafted!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	M_ARROWS = FALSE;
};


instance PC_MAKEBOWS_ARROWS_X50(C_Info)
{
	npc = PC_Hero;
	nr = 3;
	condition = pc_makebows_arrows_x50_condition;
	information = pc_makebows_arrows_x50_info;
	permanent = TRUE;
	description = "Craft 50 arrows (4x wooden bar, 2x steel bar)";
};


func int pc_makebows_arrows_x50_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_MAKEBOWS) && (M_ARROWS == TRUE) && (M_BOWS == FALSE) && (PLAYER_TALENT_BOWMAKE[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_makebows_arrows_x50_info()
{
	if((Npc_HasItems(hero,itmi_steelbar) >= 2) && (Npc_HasItems(hero,itmi_woodbar) >= 4))
	{
		CreateInvItems(hero,ItRw_Arrow,50);
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		Npc_RemoveInvItems(hero,itmi_woodbar,4);
		AI_Wait(other,10);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen("Arrows crafted!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	M_ARROWS = FALSE;
};


instance PC_MAKEBOWS_ARROWS_X100(C_Info)
{
	npc = PC_Hero;
	nr = 4;
	condition = pc_makebows_arrows_x100_condition;
	information = pc_makebows_arrows_x100_info;
	permanent = TRUE;
	description = "Craft 100 arrows (8x wooden bar, 4x steel bar)";
};


func int pc_makebows_arrows_x100_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_MAKEBOWS) && (M_ARROWS == TRUE) && (M_BOWS == FALSE) && (PLAYER_TALENT_BOWMAKE[2] == TRUE))
	{
		return TRUE;
	};
};

func void pc_makebows_arrows_x100_info()
{
	if((Npc_HasItems(hero,itmi_steelbar) >= 4) && (Npc_HasItems(hero,itmi_woodbar) >= 8))
	{
		CreateInvItems(hero,ItRw_Arrow,100);
		Npc_RemoveInvItems(hero,itmi_steelbar,4);
		Npc_RemoveInvItems(hero,itmi_woodbar,8);
		AI_Wait(other,15);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen("Arrows crafted!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		B_Say(hero,hero,"$BEZI_SKLADNIKI");
	};
	b_endproductiondialog();
	M_ARROWS = FALSE;
};

