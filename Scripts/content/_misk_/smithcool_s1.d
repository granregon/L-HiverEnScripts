
func void smithcool_s1()
{
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
	{
		self.aivar[AIV_INVINCIBLE] = TRUE;
		PLAYER_MOBSI_PRODUCTION = MOBSI_SMITHCOOL;
		AI_ProcessInfos(hero);
	};
};


instance PC_SMITHCOOL_END(C_Info)
{
	npc = PC_Hero;
	nr = 999;
	condition = pc_smithcool_end_condition;
	information = pc_smithcool_end_info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int pc_smithcool_end_condition()
{
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHCOOL)
	{
		return TRUE;
	};
};

func void pc_smithcool_end_info()
{
	b_endproductiondialog();
};


instance PC_SMITHCOOL_ADDON(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_smithcool_addon_condition;
	information = pc_smithcool_addon_info;
	permanent = TRUE;
	description = "Cool down a heated blade.";
};


func int pc_smithcool_addon_condition()
{
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHCOOL)
	{
		return TRUE;
	};
};

func void pc_smithcool_addon_info()
{
	if(Npc_HasItems(hero,itmi_flameberge_blade) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_flameberge_blade,1);
		CreateInvItems(hero,itmi_flameberge_blade_nh,1);
		AI_Wait(hero,3);
		AI_PrintScreen("Done!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else if(Npc_HasItems(hero,itmi_demonslayer_blade) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_demonslayer_blade,1);
		CreateInvItems(hero,itmi_demonslayer_blade_nh,1);
		AI_Wait(hero,3);
		AI_PrintScreen("Done!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else if(Npc_HasItems(hero,itmi_claymore_blade) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_claymore_blade,1);
		CreateInvItems(hero,itmi_claymore_blade_nh,1);
		AI_Wait(hero,3);
		AI_PrintScreen("Done!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else if(Npc_HasItems(hero,itmi_2hfinesword_blade) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_2hfinesword_blade,1);
		CreateInvItems(hero,itmi_2hfinesword_blade_nh,1);
		AI_Wait(hero,3);
		AI_PrintScreen("Done!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else if(Npc_HasItems(hero,itmi_firstblade2h_blade) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_firstblade2h_blade,1);
		CreateInvItems(hero,itmi_firstblade2h_blade_nh,1);
		AI_Wait(hero,3);
		AI_PrintScreen("Done!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else if(Npc_HasItems(hero,itmi_anduril_blade) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_anduril_blade,1);
		CreateInvItems(hero,itmi_anduril_blade_nh,1);
		AI_Wait(hero,3);
		AI_PrintScreen("Done!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else if(Npc_HasItems(hero,itmi_finebastard_blade) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_finebastard_blade,1);
		CreateInvItems(hero,itmi_finebastard_blade_nh,1);
		AI_Wait(hero,3);
		AI_PrintScreen("Done!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else if(Npc_HasItems(hero,itmi_sot_blade) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_sot_blade,1);
		CreateInvItems(hero,itmi_sot_blade_nh,1);
		AI_Wait(hero,3);
		AI_PrintScreen("Done!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else if(Npc_HasItems(hero,itmi_1hfinesword_blade) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_1hfinesword_blade,1);
		CreateInvItems(hero,itmi_1hfinesword_blade_nh,1);
		AI_Wait(hero,3);
		AI_PrintScreen("Done!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else if(Npc_HasItems(hero,itmi_firstblade_blade) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_firstblade_blade,1);
		CreateInvItems(hero,itmi_firstblade_blade_nh,1);
		AI_Wait(hero,3);
		AI_PrintScreen("Done!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else if(Npc_HasItems(hero,itmi_1h_special_01_blade) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_1h_special_01_blade,1);
		CreateInvItems(hero,itmi_1h_special_01_blade_nh,1);
		AI_Wait(hero,3);
		AI_PrintScreen("Done!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else if(Npc_HasItems(hero,itmi_2h_special_01_blade) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_2h_special_01_blade,1);
		CreateInvItems(hero,itmi_2h_special_01_blade_nh,1);
		AI_Wait(hero,3);
		AI_PrintScreen("Done!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else if(Npc_HasItems(hero,itmi_1h_special_02_blade) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_1h_special_02_blade,1);
		CreateInvItems(hero,itmi_1h_special_02_blade_nh,1);
		AI_Wait(hero,3);
		AI_PrintScreen("Done!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else if(Npc_HasItems(hero,itmi_2h_special_02_blade) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_2h_special_02_blade,1);
		CreateInvItems(hero,itmi_2h_special_02_blade_nh,1);
		AI_Wait(hero,3);
		AI_PrintScreen("Done!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else if(Npc_HasItems(hero,itmi_1h_special_03_blade) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_1h_special_03_blade,1);
		CreateInvItems(hero,itmi_1h_special_03_blade_nh,1);
		AI_Wait(hero,3);
		AI_PrintScreen("Done!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else if(Npc_HasItems(hero,itmi_2h_special_03_blade) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_2h_special_03_blade,1);
		CreateInvItems(hero,itmi_2h_special_03_blade_nh,1);
		AI_Wait(hero,3);
		AI_PrintScreen("Done!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else if(Npc_HasItems(hero,itmi_1h_special_04_blade) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_1h_special_04_blade,1);
		CreateInvItems(hero,itmi_1h_special_04_blade_nh,1);
		AI_Wait(hero,3);
		AI_PrintScreen("Done!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else if(Npc_HasItems(hero,itmi_2h_special_04_blade) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_2h_special_04_blade,1);
		CreateInvItems(hero,itmi_2h_special_04_blade_nh,1);
		AI_Wait(hero,3);
		AI_PrintScreen("Done!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else if(Npc_HasItems(hero,itmi_1h_deathbringer_blade) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_1h_deathbringer_blade,1);
		CreateInvItems(hero,itmi_1h_deathbringer_blade_nh,1);
		AI_Wait(hero,3);
		AI_PrintScreen("Done!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else if(Npc_HasItems(hero,itmi_2h_deathbringer_blade) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_2h_deathbringer_blade,1);
		CreateInvItems(hero,itmi_2h_deathbringer_blade_nh,1);
		AI_Wait(hero,3);
		AI_PrintScreen("Done!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else
	{
		B_Say_Overlay(self,self,"$MISSINGITEM");
		PrintScreen("Nothing to cool down!",-1,-1,FONT_ScreenSmall,2);
		b_endproductiondialog();
	};
};

func int b_usecool()
{
	if((Npc_IsPlayer(self) == FALSE) || (Npc_HasItems(hero,itmi_flameberge_blade) >= 1) || (Npc_HasItems(hero,itmi_demonslayer_blade) >= 1) || (Npc_HasItems(hero,itmi_claymore_blade) >= 1) || (Npc_HasItems(hero,itmi_2hfinesword_blade) >= 1) || (Npc_HasItems(hero,itmi_firstblade2h_blade) >= 1) || (Npc_HasItems(hero,itmi_anduril_blade) >= 1) || (Npc_HasItems(hero,itmi_finebastard_blade) >= 1) || (Npc_HasItems(hero,itmi_sot_blade) >= 1) || (Npc_HasItems(hero,itmi_1hfinesword_blade) >= 1) || (Npc_HasItems(hero,itmi_firstblade_blade) >= 1) || (Npc_HasItems(hero,itmi_1h_special_01_blade) >= 1) || (Npc_HasItems(hero,itmi_2h_special_01_blade) >= 1) || (Npc_HasItems(hero,itmi_1h_special_02_blade) >= 1) || (Npc_HasItems(hero,itmi_2h_special_02_blade) >= 1) || (Npc_HasItems(hero,itmi_1h_special_03_blade) >= 1) || (Npc_HasItems(hero,itmi_2h_special_03_blade) >= 1) || (Npc_HasItems(hero,itmi_1h_special_04_blade) >= 1) || (Npc_HasItems(hero,itmi_2h_special_04_blade) >= 1) || (Npc_HasItems(hero,itmi_1h_deathbringer_blade) >= 1) || (Npc_HasItems(hero,itmi_2h_deathbringer_blade) >= 1))
	{
		return TRUE;
	}
	else
	{
		AI_PrintScreen("Nothing to cool down!",-1,50,FONT_ScreenSmall,2);
		AI_PlayAni(self,"T_DONTKNOW");
		return FALSE;
	};
};

