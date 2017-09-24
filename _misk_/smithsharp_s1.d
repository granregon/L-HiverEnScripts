
func void smithsharp_s1()
{
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
	{
		self.aivar[AIV_INVINCIBLE] = TRUE;
		PLAYER_MOBSI_PRODUCTION = MOBSI_SMITHSHARP;
		AI_ProcessInfos(hero);
	};
};


instance PC_SMITHSHARP_END(C_Info)
{
	npc = PC_Hero;
	nr = 999;
	condition = pc_smithsharp_end_condition;
	information = pc_smithsharp_end_info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int pc_smithsharp_end_condition()
{
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHSHARP)
	{
		return TRUE;
	};
};

func void pc_smithsharp_end_info()
{
	b_endproductiondialog();
};


instance PC_SMITHSHARP_FIRSTBLADE(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_smithsharp_firstblade_condition;
	information = pc_smithsharp_firstblade_info;
	permanent = TRUE;
	description = "Sharpen <<Sword>>";
};


func int pc_smithsharp_firstblade_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHSHARP) && (Npc_HasItems(hero,itmw_firstblade_ns) >= 1))
	{
		return TRUE;
	};
};

func void pc_smithsharp_firstblade_info()
{
	if(Npc_HasItems(hero,itmw_firstblade_ns) >= 1)
	{
		CreateInvItems(hero,itmw_firstblade,1);
		Npc_RemoveInvItems(hero,itmw_firstblade_ns,1);
		AI_Wait(other,5);
		Print(PRINT_SHARPPROCESS);
		AI_PrintScreen("Sharpened - Sword!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};


instance PC_SMITHSHARP_1HFINESWORD(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_smithsharp_1hfinesword_condition;
	information = pc_smithsharp_1hfinesword_info;
	permanent = TRUE;
	description = "Sharpen <<Steel Longsword>>";
};


func int pc_smithsharp_1hfinesword_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHSHARP) && (Npc_HasItems(hero,itmw_1hfinesword_ns) >= 1))
	{
		return TRUE;
	};
};

func void pc_smithsharp_1hfinesword_info()
{
	if(Npc_HasItems(hero,itmw_1hfinesword_ns) >= 1)
	{
		CreateInvItems(hero,itmw_1hfinesword,1);
		Npc_RemoveInvItems(hero,itmw_1hfinesword_ns,1);
		AI_Wait(other,5);
		Print(PRINT_SHARPPROCESS);
		AI_PrintScreen("Sharpened - Steel longsword!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};


instance PC_SMITHSHARP_SOT(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_smithsharp_sot_condition;
	information = pc_smithsharp_sot_info;
	permanent = TRUE;
	description = "Sharpen <<Steel longsword>>";
};


func int pc_smithsharp_sot_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHSHARP) && (Npc_HasItems(hero,itmw_sot_ns) >= 1))
	{
		return TRUE;
	};
};

func void pc_smithsharp_sot_info()
{
	if(Npc_HasItems(hero,itmw_sot_ns) >= 1)
	{
		CreateInvItems(hero,itmw_sot,1);
		Npc_RemoveInvItems(hero,itmw_sot_ns,1);
		AI_Wait(other,5);
		Print(PRINT_SHARPPROCESS);
		AI_PrintScreen("Sharpened - Sword Of Truth!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};


instance PC_SMITHSHARP_FINEBASTARD(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_smithsharp_finebastard_condition;
	information = pc_smithsharp_finebastard_info;
	permanent = TRUE;
	description = "Sharpen <<Fine bastard blade>>";
};


func int pc_smithsharp_finebastard_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHSHARP) && (Npc_HasItems(hero,itmw_finebastard_ns) >= 1))
	{
		return TRUE;
	};
};

func void pc_smithsharp_finebastard_info()
{
	if(Npc_HasItems(hero,itmw_finebastard_ns) >= 1)
	{
		CreateInvItems(hero,itmw_finebastard,1);
		Npc_RemoveInvItems(hero,itmw_finebastard_ns,1);
		AI_Wait(other,5);
		Print(PRINT_SHARPPROCESS);
		AI_PrintScreen("Sharpened - Fine bastard blade!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};


instance PC_SMITHSHARP_ANDURIL(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_smithsharp_anduril_condition;
	information = pc_smithsharp_anduril_info;
	permanent = TRUE;
	description = "Sharpen <<Elegant bastard sword>>";
};


func int pc_smithsharp_anduril_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHSHARP) && (Npc_HasItems(hero,itmw_anduril_ns) >= 1))
	{
		return TRUE;
	};
};

func void pc_smithsharp_anduril_info()
{
	if(Npc_HasItems(hero,itmw_anduril_ns) >= 1)
	{
		CreateInvItems(hero,itmw_anduril,1);
		Npc_RemoveInvItems(hero,itmw_anduril_ns,1);
		AI_Wait(other,5);
		Print(PRINT_SHARPPROCESS);
		AI_PrintScreen("Sharpened - Elegant bastard sword!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};


instance PC_SMITHSHARP_FIRSTBLADE2H(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_smithsharp_firstblade2h_condition;
	information = pc_smithsharp_firstblade2h_info;
	permanent = TRUE;
	description = "Sharpen <<Two-handed blade>>";
};


func int pc_smithsharp_firstblade2h_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHSHARP) && (Npc_HasItems(hero,itmw_firstblade2h_ns) >= 1))
	{
		return TRUE;
	};
};

func void pc_smithsharp_firstblade2h_info()
{
	if(Npc_HasItems(hero,itmw_firstblade2h_ns) >= 1)
	{
		CreateInvItems(hero,itmw_firstblade2h,1);
		Npc_RemoveInvItems(hero,itmw_firstblade2h_ns,1);
		AI_Wait(other,5);
		Print(PRINT_SHARPPROCESS);
		AI_PrintScreen("Sharpened - Two-handed blade!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};


instance PC_SMITHSHARP_2HFINESWORD(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_smithsharp_2hfinesword_condition;
	information = pc_smithsharp_2hfinesword_info;
	permanent = TRUE;
	description = "Sharpen <<Steel two-hander>>";
};


func int pc_smithsharp_2hfinesword_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHSHARP) && (Npc_HasItems(hero,itmw_2hfinesword_ns) >= 1))
	{
		return TRUE;
	};
};

func void pc_smithsharp_2hfinesword_info()
{
	if(Npc_HasItems(hero,itmw_2hfinesword_ns) >= 1)
	{
		CreateInvItems(hero,itmw_2hfinesword,1);
		Npc_RemoveInvItems(hero,itmw_2hfinesword_ns,1);
		AI_Wait(other,5);
		Print(PRINT_SHARPPROCESS);
		AI_PrintScreen("Sharpened - Steel two-hander!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};


instance PC_SMITHSHARP_CLAYMORE(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_smithsharp_claymore_condition;
	information = pc_smithsharp_claymore_info;
	permanent = TRUE;
	description = "Sharpen <<Claymore>>";
};


func int pc_smithsharp_claymore_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHSHARP) && (Npc_HasItems(hero,itmw_claymore_ns) >= 1))
	{
		return TRUE;
	};
};

func void pc_smithsharp_claymore_info()
{
	if(Npc_HasItems(hero,itmw_claymore_ns) >= 1)
	{
		CreateInvItems(hero,itmw_claymore,1);
		Npc_RemoveInvItems(hero,itmw_claymore_ns,1);
		AI_Wait(other,5);
		Print(PRINT_SHARPPROCESS);
		AI_PrintScreen("Sharpened - Claymore!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};


instance PC_SMITHSHARP_DEMONSLAYER(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_smithsharp_demonslayer_condition;
	information = pc_smithsharp_demonslayer_info;
	permanent = TRUE;
	description = "Sharpen <<Demonslayer>>";
};


func int pc_smithsharp_demonslayer_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHSHARP) && (Npc_HasItems(hero,itmw_demonslayer_ns) >= 1))
	{
		return TRUE;
	};
};

func void pc_smithsharp_demonslayer_info()
{
	if(Npc_HasItems(hero,itmw_demonslayer_ns) >= 1)
	{
		CreateInvItems(hero,itmw_demonslayer,1);
		Npc_RemoveInvItems(hero,itmw_demonslayer_ns,1);
		AI_Wait(other,5);
		Print(PRINT_SHARPPROCESS);
		AI_PrintScreen("Sharpened - Demonslayer!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};


instance PC_SMITHSHARP_FLAMEBERGE(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_smithsharp_flameberge_condition;
	information = pc_smithsharp_flameberge_info;
	permanent = TRUE;
	description = "Sharpen <<Flamberge>>";
};


func int pc_smithsharp_flameberge_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHSHARP) && (Npc_HasItems(hero,itmw_flameberge_ns) >= 1))
	{
		return TRUE;
	};
};

func void pc_smithsharp_flameberge_info()
{
	if(Npc_HasItems(hero,itmw_flameberge_ns) >= 1)
	{
		CreateInvItems(hero,itmw_flameberge,1);
		Npc_RemoveInvItems(hero,itmw_flameberge_ns,1);
		AI_Wait(other,5);
		Print(PRINT_SHARPPROCESS);
		AI_PrintScreen("Sharpened - Flamberge!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};


instance PC_SMITHSHARP_1H_SPECIAL_01(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_smithsharp_1h_special_01_condition;
	information = pc_smithsharp_1h_special_01_info;
	permanent = TRUE;
	description = "Sharpen <<Ore longsword>>";
};


func int pc_smithsharp_1h_special_01_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHSHARP) && (Npc_HasItems(hero,itmw_1h_special_01_ns) >= 1))
	{
		return TRUE;
	};
};

func void pc_smithsharp_1h_special_01_info()
{
	if(Npc_HasItems(hero,itmw_1h_special_01_ns) >= 1)
	{
		CreateInvItems(hero,ItMw_1H_Special_01,1);
		Npc_RemoveInvItems(hero,itmw_1h_special_01_ns,1);
		AI_Wait(other,5);
		Print(PRINT_SHARPPROCESS);
		AI_PrintScreen("Sharpened - Ore longsword!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};


instance PC_SMITHSHARP_2H_SPECIAL_01(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_smithsharp_2h_special_01_condition;
	information = pc_smithsharp_2h_special_01_info;
	permanent = TRUE;
	description = "Sharpen <<Ore two-hander>>";
};


func int pc_smithsharp_2h_special_01_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHSHARP) && (Npc_HasItems(hero,itmw_2h_special_01_ns) >= 1))
	{
		return TRUE;
	};
};

func void pc_smithsharp_2h_special_01_info()
{
	if(Npc_HasItems(hero,itmw_2h_special_01_ns) >= 1)
	{
		CreateInvItems(hero,ItMw_2H_Special_01,1);
		Npc_RemoveInvItems(hero,itmw_2h_special_01_ns,1);
		AI_Wait(other,5);
		Print(PRINT_SHARPPROCESS);
		AI_PrintScreen("Sharpened - Ore two-hander!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};


instance PC_SMITHSHARP_1H_SPECIAL_02(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_smithsharp_1h_special_02_condition;
	information = pc_smithsharp_1h_special_02_info;
	permanent = TRUE;
	description = "Sharpen <<Ore bastard sword>>";
};


func int pc_smithsharp_1h_special_02_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHSHARP) && (Npc_HasItems(hero,itmw_1h_special_02_ns) >= 1))
	{
		return TRUE;
	};
};

func void pc_smithsharp_1h_special_02_info()
{
	if(Npc_HasItems(hero,itmw_1h_special_02_ns) >= 1)
	{
		CreateInvItems(hero,ItMw_1H_Special_02,1);
		Npc_RemoveInvItems(hero,itmw_1h_special_02_ns,1);
		AI_Wait(other,5);
		Print(PRINT_SHARPPROCESS);
		AI_PrintScreen("Sharpened - Ore bastard sword!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};


instance PC_SMITHSHARP_2H_SPECIAL_02(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_smithsharp_2h_special_02_condition;
	information = pc_smithsharp_2h_special_02_info;
	permanent = TRUE;
	description = "Sharpen <<Heavy ore two-hander>>";
};


func int pc_smithsharp_2h_special_02_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHSHARP) && (Npc_HasItems(hero,itmw_2h_special_02_ns) >= 1))
	{
		return TRUE;
	};
};

func void pc_smithsharp_2h_special_02_info()
{
	if(Npc_HasItems(hero,itmw_2h_special_02_ns) >= 1)
	{
		CreateInvItems(hero,ItMw_2H_Special_02,1);
		Npc_RemoveInvItems(hero,itmw_2h_special_02_ns,1);
		AI_Wait(other,5);
		Print(PRINT_SHARPPROCESS);
		AI_PrintScreen("Sharpened - Heavy ore two-hander!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};


instance PC_SMITHSHARP_1H_SPECIAL_03(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_smithsharp_1h_special_03_condition;
	information = pc_smithsharp_1h_special_03_info;
	permanent = TRUE;
	description = "Sharpen <<Orcish ore battle sword>>";
};


func int pc_smithsharp_1h_special_03_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHSHARP) && (Npc_HasItems(hero,itmw_1h_special_03_ns) >= 1))
	{
		return TRUE;
	};
};

func void pc_smithsharp_1h_special_03_info()
{
	if(Npc_HasItems(hero,itmw_1h_special_03_ns) >= 1)
	{
		CreateInvItems(hero,ItMw_1H_Special_03,1);
		Npc_RemoveInvItems(hero,itmw_1h_special_03_ns,1);
		AI_Wait(other,5);
		Print(PRINT_SHARPPROCESS);
		AI_PrintScreen("Sharpened - Orcish ore battle sword!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};


instance PC_SMITHSHARP_2H_SPECIAL_03(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_smithsharp_2h_special_03_condition;
	information = pc_smithsharp_2h_special_03_info;
	permanent = TRUE;
	description = "Sharpen <<Heavy orcish ore battle sword>>";
};


func int pc_smithsharp_2h_special_03_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHSHARP) && (Npc_HasItems(hero,itmw_2h_special_03_ns) >= 1))
	{
		return TRUE;
	};
};

func void pc_smithsharp_2h_special_03_info()
{
	if(Npc_HasItems(hero,itmw_2h_special_03_ns) >= 1)
	{
		CreateInvItems(hero,ItMw_2H_Special_03,1);
		Npc_RemoveInvItems(hero,itmw_2h_special_03_ns,1);
		AI_Wait(other,5);
		Print(PRINT_SHARPPROCESS);
		AI_PrintScreen("Sharpened - Heavy orcish ore battle sword!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};


instance PC_SMITHSHARP_1H_SPECIAL_04(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_smithsharp_1h_special_04_condition;
	information = pc_smithsharp_1h_special_04_info;
	permanent = TRUE;
	description = "Sharpen <<Ore Dragonslayer>>";
};


func int pc_smithsharp_1h_special_04_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHSHARP) && (Npc_HasItems(hero,itmw_1h_special_04_ns) >= 1))
	{
		return TRUE;
	};
};

func void pc_smithsharp_1h_special_04_info()
{
	if(Npc_HasItems(hero,itmw_1h_special_04_ns) >= 1)
	{
		CreateInvItems(hero,ItMw_1H_Special_04,1);
		Npc_RemoveInvItems(hero,itmw_1h_special_04_ns,1);
		AI_Wait(other,5);
		Print(PRINT_SHARPPROCESS);
		AI_PrintScreen("Sharpened - Ore Dragonslayer!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};


instance PC_SMITHSHARP_2H_SPECIAL_04(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_smithsharp_2h_special_04_condition;
	information = pc_smithsharp_2h_special_04_info;
	permanent = TRUE;
	description = "Sharpen <<Large ore Dragonslayer>>";
};


func int pc_smithsharp_2h_special_04_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHSHARP) && (Npc_HasItems(hero,itmw_2h_special_04_ns) >= 1))
	{
		return TRUE;
	};
};

func void pc_smithsharp_2h_special_04_info()
{
	if(Npc_HasItems(hero,itmw_2h_special_04_ns) >= 1)
	{
		CreateInvItems(hero,ItMw_2H_Special_04,1);
		Npc_RemoveInvItems(hero,itmw_2h_special_04_ns,1);
		AI_Wait(other,5);
		Print(PRINT_SHARPPROCESS);
		AI_PrintScreen("Sharpened - Large ore Dragonslayer!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};


instance PC_SMITHSHARP_1H_DEATHBRINGER(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_smithsharp_1h_deathbringer_condition;
	information = pc_smithsharp_1h_deathbringer_info;
	permanent = TRUE;
	description = "Sharpen <<Deathbringer>>";
};


func int pc_smithsharp_1h_deathbringer_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHSHARP) && (Npc_HasItems(hero,itmw_1h_deathbringer_ns) >= 1))
	{
		return TRUE;
	};
};

func void pc_smithsharp_1h_deathbringer_info()
{
	if(Npc_HasItems(hero,itmw_1h_deathbringer_ns) >= 1)
	{
		CreateInvItems(hero,itmw_1h_deathbringer,1);
		Npc_RemoveInvItems(hero,itmw_1h_deathbringer_ns,1);
		AI_Wait(other,5);
		Print(PRINT_SHARPPROCESS);
		AI_PrintScreen("Sharpened - Deathbringer!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};


instance PC_SMITHSHARP_2H_DEATHBRINGER(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_smithsharp_2h_deathbringer_condition;
	information = pc_smithsharp_2h_deathbringer_info;
	permanent = TRUE;
	description = "Sharpen <<Heavy Deathbringer>>";
};


func int pc_smithsharp_2h_deathbringer_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHSHARP) && (Npc_HasItems(hero,itmw_2h_deathbringer_ns) >= 1))
	{
		return TRUE;
	};
};

func void pc_smithsharp_2h_deathbringer_info()
{
	if(Npc_HasItems(hero,itmw_2h_deathbringer_ns) >= 1)
	{
		CreateInvItems(hero,itmw_2h_deathbringer,1);
		Npc_RemoveInvItems(hero,itmw_2h_deathbringer_ns,1);
		AI_Wait(other,5);
		Print(PRINT_SHARPPROCESS);
		AI_PrintScreen("Sharpened - Heavy Deathbringer!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};

