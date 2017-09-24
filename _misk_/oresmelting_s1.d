
func void oresmelting_s1()
{
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
	{
		self.aivar[AIV_INVINCIBLE] = TRUE;
		PLAYER_MOBSI_PRODUCTION = MOBSI_ORESMELTING;
		AI_ProcessInfos(hero);
	};
};


instance PC_ORESMELTING_END(C_Info)
{
	npc = PC_Hero;
	nr = 999;
	condition = pc_oresmelting_end_condition;
	information = pc_oresmelting_end_info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int pc_oresmelting_end_condition()
{
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_ORESMELTING)
	{
		return TRUE;
	};
};

func void pc_oresmelting_end_info()
{
	b_endproductiondialog();
};


instance PC_ORESMELTING_ADDON(C_Info)
{
	npc = PC_Hero;
	nr = 1;
	condition = pc_oresmelting_addon_condition;
	information = pc_oresmelting_addon_info;
	permanent = TRUE;
	description = "Create 1 steel bar (2x iron ores)";
};


func int pc_oresmelting_addon_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ORESMELTING) && (Npc_HasItems(hero,itmi_ironnugget_addon) >= 2))
	{
		return TRUE;
	};
};

func void pc_oresmelting_addon_info()
{
	if(Npc_HasItems(hero,itmi_ironnugget_addon) >= 2)
	{
		CreateInvItems(hero,itmi_steelbar,1);
		Npc_RemoveInvItems(hero,itmi_ironnugget_addon,2);
		AI_Wait(other,3);
		Print(PRINT_SMELTPROCESS);
		AI_PrintScreen("Received - 1x steel bar!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		Info_ClearChoices(pc_oresmelting_addon);
	};
};


instance PC_ORESMELTING_ADDON_X5(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_oresmelting_addon_x5_condition;
	information = pc_oresmelting_addon_x5_info;
	permanent = TRUE;
	description = "Create 5 steel bars (10x iron ores)";
};


func int pc_oresmelting_addon_x5_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ORESMELTING) && (Npc_HasItems(hero,itmi_ironnugget_addon) >= 10))
	{
		return TRUE;
	};
};

func void pc_oresmelting_addon_x5_info()
{
	if(Npc_HasItems(hero,itmi_ironnugget_addon) >= 10)
	{
		CreateInvItems(hero,itmi_steelbar,5);
		Npc_RemoveInvItems(hero,itmi_ironnugget_addon,10);
		AI_Wait(other,5);
		Print(PRINT_SMELTPROCESS);
		AI_PrintScreen("Received - 5x steel bars!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		Info_ClearChoices(pc_oresmelting_addon_x5);
	};
};


instance PC_ORESMELTING_ADDON_X10(C_Info)
{
	npc = PC_Hero;
	nr = 3;
	condition = pc_oresmelting_addon_x10_condition;
	information = pc_oresmelting_addon_x10_info;
	permanent = TRUE;
	description = "Create 10 steel bars (20x iron ores)";
};


func int pc_oresmelting_addon_x10_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ORESMELTING) && (Npc_HasItems(hero,itmi_ironnugget_addon) >= 20))
	{
		return TRUE;
	};
};

func void pc_oresmelting_addon_x10_info()
{
	if(Npc_HasItems(hero,itmi_ironnugget_addon) >= 20)
	{
		CreateInvItems(hero,itmi_steelbar,10);
		Npc_RemoveInvItems(hero,itmi_ironnugget_addon,20);
		AI_Wait(other,10);
		Print(PRINT_SMELTPROCESS);
		AI_PrintScreen("Received - 10x steel bars!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		Info_ClearChoices(pc_oresmelting_addon_x10);
	};
};


instance PC_MAGICORESMELTING_ADDON(C_Info)
{
	npc = PC_Hero;
	nr = 4;
	condition = pc_magicoresmelting_addon_condition;
	information = pc_magicoresmelting_addon_info;
	permanent = TRUE;
	description = "Create 1 ore bar (1x lump of ore, 2x iron ores)";
};


func int pc_magicoresmelting_addon_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ORESMELTING) && (Npc_HasItems(hero,itmi_ironnugget_addon) >= 2) && (Npc_HasItems(hero,ItMi_Nugget) >= 1))
	{
		return TRUE;
	};
};

func void pc_magicoresmelting_addon_info()
{
	if((Npc_HasItems(hero,itmi_ironnugget_addon) >= 2) && (Npc_HasItems(hero,ItMi_Nugget) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_ironnugget_addon,2);
		Npc_RemoveInvItems(hero,ItMi_Nugget,1);
		CreateInvItems(hero,itmi_magicbar,1);
		AI_Wait(other,3);
		Print(PRINT_SMELTPROCESS);
		AI_PrintScreen("Received - ore bar!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		Info_ClearChoices(pc_magicoresmelting_addon);
	};
};


instance PC_MAGICORESMELTING_ADDON_X5(C_Info)
{
	npc = PC_Hero;
	nr = 5;
	condition = pc_magicoresmelting_addon_x5_condition;
	information = pc_magicoresmelting_addon_x5_info;
	permanent = TRUE;
	description = "Create 5 ore bars (5x lumps of ore, 10x iron ores)";
};


func int pc_magicoresmelting_addon_x5_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ORESMELTING) && (Npc_HasItems(hero,itmi_ironnugget_addon) >= 10) && (Npc_HasItems(hero,ItMi_Nugget) >= 5))
	{
		return TRUE;
	};
};

func void pc_magicoresmelting_addon_x5_info()
{
	if((Npc_HasItems(hero,itmi_ironnugget_addon) >= 10) && (Npc_HasItems(hero,ItMi_Nugget) >= 5))
	{
		Npc_RemoveInvItems(hero,itmi_ironnugget_addon,10);
		Npc_RemoveInvItems(hero,ItMi_Nugget,5);
		CreateInvItems(hero,itmi_magicbar,5);
		AI_Wait(other,5);
		Print(PRINT_SMELTPROCESS);
		AI_PrintScreen("Received - 5x ore bars!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		Info_ClearChoices(pc_magicoresmelting_addon_x5);
	};
};


instance PC_MAGICORESMELTING_ADDON_X10(C_Info)
{
	npc = PC_Hero;
	nr = 6;
	condition = pc_magicoresmelting_addon_x10_condition;
	information = pc_magicoresmelting_addon_x10_info;
	permanent = TRUE;
	description = "Create 10 ore bars (10x lumps of ore, 20x iron ores)";
};


func int pc_magicoresmelting_addon_x10_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_ORESMELTING) && (Npc_HasItems(hero,itmi_ironnugget_addon) >= 20) && (Npc_HasItems(hero,ItMi_Nugget) >= 10))
	{
		return TRUE;
	};
};

func void pc_magicoresmelting_addon_x10_info()
{
	if((Npc_HasItems(hero,itmi_ironnugget_addon) >= 20) && (Npc_HasItems(hero,ItMi_Nugget) >= 10))
	{
		Npc_RemoveInvItems(hero,itmi_ironnugget_addon,20);
		Npc_RemoveInvItems(hero,ItMi_Nugget,10);
		CreateInvItems(hero,itmi_magicbar,10);
		AI_Wait(other,10);
		Print(PRINT_SMELTPROCESS);
		AI_PrintScreen("Received - 10x ore bars!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		Info_ClearChoices(pc_magicoresmelting_addon_x10);
	};
};

