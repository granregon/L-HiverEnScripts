
func void woodsaw_s1()
{
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
	{
		self.aivar[AIV_INVINCIBLE] = TRUE;
		PLAYER_MOBSI_PRODUCTION = MOBSI_WOODSAW;
		AI_ProcessInfos(hero);
	};
};


instance PC_WOODSAW_END(C_Info)
{
	npc = PC_Hero;
	nr = 999;
	condition = pc_woodsaw_end_condition;
	information = pc_woodsaw_end_info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int pc_woodsaw_end_condition()
{
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_WOODSAW)
	{
		return TRUE;
	};
};

func void pc_woodsaw_end_info()
{
	b_endproductiondialog();
};


instance PC_WOODSAW_ADDON(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_woodsaw_addon_condition;
	information = pc_woodsaw_addon_info;
	permanent = TRUE;
	description = "Saw a billet down.";
};


func int pc_woodsaw_addon_condition()
{
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_WOODSAW)
	{
		return TRUE;
	};
};

func void pc_woodsaw_addon_info()
{
	if(Npc_HasItems(hero,itmi_woodbar_big) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_woodbar_big,1);
		CreateInvItems(hero,itmi_woodbar,2);
		AI_Wait(hero,3);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen("Received - wooden bars x2!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else
	{
		B_Say_Overlay(self,self,"$MISSINGITEM");
		PrintScreen("Billet missing!",-1,-1,FONT_ScreenSmall,2);
		b_endproductiondialog();
	};
};

