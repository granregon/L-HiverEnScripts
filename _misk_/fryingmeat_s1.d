
var int bezi_usestove;
var int bezi_usecamp;

func void fryingmeat_s1()
{
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
	{
		self.aivar[AIV_INVINCIBLE] = TRUE;
		PLAYER_MOBSI_PRODUCTION = MOBSI_CAMPFIRE;
		AI_ProcessInfos(hero);
	};
};


instance PC_FRYINGMEAT_END(C_Info)
{
	npc = PC_Hero;
	nr = 999;
	condition = pc_fryingmeat_end_condition;
	information = pc_fryingmeat_end_info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int pc_fryingmeat_end_condition()
{
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_CAMPFIRE)
	{
		return TRUE;
	};
};

func void pc_fryingmeat_end_info()
{
	BEZI_USECAMP = FALSE;
	BEZI_USESTOVE = FALSE;
	b_endproductiondialog();
};


instance PC_FRYINGMEAT_ADDON(C_Info)
{
	npc = PC_Hero;
	nr = 6;
	condition = pc_fryingmeat_addon_condition;
	information = pc_fryingmeat_addon_info;
	permanent = TRUE;
	description = "Roast 1 chunk of meat.";
};


func int pc_fryingmeat_addon_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_CAMPFIRE) && (Npc_HasItems(hero,ItFoMuttonRaw) >= 1) && (BEZI_USECAMP == TRUE) && (BEZI_USESTOVE == FALSE))
	{
		return TRUE;
	};
};

func void pc_fryingmeat_addon_info()
{
	CreateInvItems(hero,ItFoMutton,1);
	Npc_RemoveInvItems(hero,ItFoMuttonRaw,1);
	AI_PrintScreen("Roasting 1 chunk of meat...",-1,50,FONT_SCREENBRIGHTLARGE,1);
	AI_Wait(other,1);
	AI_PrintScreen("1 chunk of meat roasted!",-1,53,FONT_SCREENBRIGHTLARGE,2);
	Info_ClearChoices(pc_fryingmeat_addon);
};


instance PC_FRYINGMEAT_ADDON_X5(C_Info)
{
	npc = PC_Hero;
	nr = 5;
	condition = pc_fryingmeat_addon_x5_condition;
	information = pc_fryingmeat_addon_x5_info;
	permanent = TRUE;
	description = "Roast 5 chunks of meat.";
};


func int pc_fryingmeat_addon_x5_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_CAMPFIRE) && (Npc_HasItems(hero,ItFoMuttonRaw) >= 5) && (BEZI_USECAMP == TRUE) && (BEZI_USESTOVE == FALSE))
	{
		return TRUE;
	};
};

func void pc_fryingmeat_addon_x5_info()
{
	CreateInvItems(hero,ItFoMutton,5);
	Npc_RemoveInvItems(hero,ItFoMuttonRaw,5);
	AI_PrintScreen("Roasting 5 chunks of meat...",-1,50,FONT_SCREENBRIGHTLARGE,5);
	AI_Wait(other,5);
	AI_PrintScreen("5 chunks of meat roasted!",-1,53,FONT_SCREENBRIGHTLARGE,2);
	Info_ClearChoices(pc_fryingmeat_addon_x5);
};


instance PC_FRYINGMEAT_ADDON_X10(C_Info)
{
	npc = PC_Hero;
	nr = 4;
	condition = pc_fryingmeat_addon_x10_condition;
	information = pc_fryingmeat_addon_x10_info;
	permanent = TRUE;
	description = "Roast 10 chunks of meat.";
};


func int pc_fryingmeat_addon_x10_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_CAMPFIRE) && (Npc_HasItems(hero,ItFoMuttonRaw) >= 10) && (BEZI_USECAMP == TRUE) && (BEZI_USESTOVE == FALSE))
	{
		return TRUE;
	};
};

func void pc_fryingmeat_addon_x10_info()
{
	CreateInvItems(hero,ItFoMutton,10);
	Npc_RemoveInvItems(hero,ItFoMuttonRaw,10);
	AI_PrintScreen("Roasting 10 chunks of meat...",-1,50,FONT_SCREENBRIGHTLARGE,10);
	AI_Wait(other,10);
	AI_PrintScreen("10 chunks of meat roasted!",-1,53,FONT_SCREENBRIGHTLARGE,2);
	Info_ClearChoices(pc_fryingmeat_addon_x10);
};


instance PC_FRYINGMEAT_ADDON_ALL(C_Info)
{
	npc = PC_Hero;
	nr = 3;
	condition = pc_fryingmeat_addon_all_condition;
	information = pc_fryingmeat_addon_all_info;
	permanent = TRUE;
	description = "Roast all meat.";
};


func int pc_fryingmeat_addon_all_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_CAMPFIRE) && (Npc_HasItems(hero,ItFoMuttonRaw) >= 3) && (BEZI_USECAMP == TRUE) && (BEZI_USESTOVE == FALSE))
	{
		return TRUE;
	};
};

func void pc_fryingmeat_addon_all_info()
{
	var string obrabianie_skory;
	var string obrobione_skory;
	var int wszystkie_miesa;
	var float waittime;
	wszystkie_miesa = Npc_HasItems(hero,ItFoMuttonRaw);
	waittime = IntToFloat(wszystkie_miesa);
	Npc_RemoveInvItems(hero,ItFoMuttonRaw,wszystkie_miesa);
	if(wszystkie_miesa >= 20)
	{
		obrabianie_skory = "Roasting ";
		obrabianie_skory = ConcatStrings(obrabianie_skory,IntToString(wszystkie_miesa));
		obrabianie_skory = ConcatStrings(obrabianie_skory," chunks of meat...");
		AI_PrintScreen(obrabianie_skory,-1,50,FONT_SCREENBRIGHTLARGE,20);
		AI_Wait(hero,20);
	}
	else
	{
		obrabianie_skory = "Roasting ";
		obrabianie_skory = ConcatStrings(obrabianie_skory,IntToString(wszystkie_miesa));
		obrabianie_skory = ConcatStrings(obrabianie_skory," chunk of meat...");
		AI_PrintScreen(obrabianie_skory,-1,50,FONT_SCREENBRIGHTLARGE,wszystkie_miesa);
		AI_Wait(hero,waittime);
	};
	if((wszystkie_miesa == 3) || (wszystkie_miesa == 4))
	{
		obrobione_skory = "Roasted ";
		obrobione_skory = ConcatStrings(obrobione_skory,IntToString(wszystkie_miesa));
		obrobione_skory = ConcatStrings(obrobione_skory," chunks of meat!");
		AI_PrintScreen(obrobione_skory,-1,53,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		obrobione_skory = "Roasted ";
		obrobione_skory = ConcatStrings(obrobione_skory,IntToString(wszystkie_miesa));
		obrobione_skory = ConcatStrings(obrobione_skory," chunk of meat!");
		AI_PrintScreen(obrobione_skory,-1,53,FONT_SCREENBRIGHTLARGE,2);
	};
	CreateInvItems(hero,ItFoMutton,wszystkie_miesa);
	Info_ClearChoices(pc_fryingmeat_addon_all);
};


instance PC_FRYINGMEAT_STOVE(C_Info)
{
	npc = PC_Hero;
	nr = 10;
	condition = pc_fryingmeat_stove_condition;
	information = pc_fryingmeat_stove_info;
	permanent = TRUE;
	description = "Fry 1 chunk of meat.";
};


func int pc_fryingmeat_stove_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_CAMPFIRE) && (Npc_HasItems(hero,ItFoMuttonRaw) >= 1) && (BEZI_USESTOVE == TRUE) && (BEZI_USECAMP == FALSE))
	{
		return TRUE;
	};
};

func void pc_fryingmeat_stove_info()
{
	CreateInvItems(hero,ItFoMutton,1);
	Npc_RemoveInvItems(hero,ItFoMuttonRaw,1);
	AI_PrintScreen("Frying 1 chunk of meat...",-1,50,FONT_SCREENBRIGHTLARGE,1);
	AI_Wait(other,1);
	AI_PrintScreen("1 chunk of meat fryied!",-1,53,FONT_SCREENBRIGHTLARGE,2);
	Info_ClearChoices(pc_fryingmeat_stove);
};


instance PC_FRYINGMEAT_STOVE_X5(C_Info)
{
	npc = PC_Hero;
	nr = 9;
	condition = pc_fryingmeat_stove_x5_condition;
	information = pc_fryingmeat_stove_x5_info;
	permanent = TRUE;
	description = "Fry 5 chunks of meat.";
};


func int pc_fryingmeat_stove_x5_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_CAMPFIRE) && (Npc_HasItems(hero,ItFoMuttonRaw) >= 5) && (BEZI_USESTOVE == TRUE) && (BEZI_USECAMP == FALSE))
	{
		return TRUE;
	};
};

func void pc_fryingmeat_stove_x5_info()
{
	CreateInvItems(hero,ItFoMutton,5);
	Npc_RemoveInvItems(hero,ItFoMuttonRaw,5);
	AI_PrintScreen("Frying 5 chunks of meat...",-1,50,FONT_SCREENBRIGHTLARGE,5);
	AI_Wait(other,5);
	AI_PrintScreen("5 chunks of meat fryied!",-1,53,FONT_SCREENBRIGHTLARGE,2);
	Info_ClearChoices(pc_fryingmeat_stove_x5);
};


instance PC_FRYINGMEAT_STOVE_X10(C_Info)
{
	npc = PC_Hero;
	nr = 8;
	condition = pc_fryingmeat_stove_x10_condition;
	information = pc_fryingmeat_stove_x10_info;
	permanent = TRUE;
	description = "Fry 10 chunks of meat.";
};


func int pc_fryingmeat_stove_x10_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_CAMPFIRE) && (Npc_HasItems(hero,ItFoMuttonRaw) >= 10) && (BEZI_USESTOVE == TRUE) && (BEZI_USECAMP == FALSE))
	{
		return TRUE;
	};
};

func void pc_fryingmeat_stove_x10_info()
{
	CreateInvItems(hero,ItFoMutton,10);
	Npc_RemoveInvItems(hero,ItFoMuttonRaw,10);
	AI_PrintScreen("Frying 10 chunks of meat...",-1,50,FONT_SCREENBRIGHTLARGE,10);
	AI_Wait(other,10);
	AI_PrintScreen("0 chunks of meat fryied!",-1,53,FONT_SCREENBRIGHTLARGE,2);
	Info_ClearChoices(pc_fryingmeat_stove_x10);
};


instance PC_FRYINGMEAT_STOVE_ALL(C_Info)
{
	npc = PC_Hero;
	nr = 7;
	condition = pc_fryingmeat_addon_stove_condition;
	information = pc_fryingmeat_addon_stove_info;
	permanent = TRUE;
	description = "Fry all meat.";
};


func int pc_fryingmeat_addon_stove_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_CAMPFIRE) && (Npc_HasItems(hero,ItFoMuttonRaw) >= 3) && (BEZI_USESTOVE == TRUE) && (BEZI_USECAMP == FALSE))
	{
		return TRUE;
	};
};

func void pc_fryingmeat_addon_stove_info()
{
	var string obrobione_skory;
	var string obrabianie_skory;
	var int wszystkie_miesa;
	var float waittime;
	wszystkie_miesa = Npc_HasItems(hero,ItFoMuttonRaw);
	waittime = IntToFloat(wszystkie_miesa);
	Npc_RemoveInvItems(hero,ItFoMuttonRaw,wszystkie_miesa);
	if(wszystkie_miesa >= 20)
	{
		obrabianie_skory = "Frying ";
		obrabianie_skory = ConcatStrings(obrabianie_skory,IntToString(wszystkie_miesa));
		obrabianie_skory = ConcatStrings(obrabianie_skory," chunk of meat...");
		AI_PrintScreen(obrabianie_skory,-1,50,FONT_SCREENBRIGHTLARGE,20);
		AI_Wait(hero,20);
	}
	else
	{
		obrabianie_skory = "Frying ";
		obrabianie_skory = ConcatStrings(obrabianie_skory,IntToString(wszystkie_miesa));
		obrabianie_skory = ConcatStrings(obrabianie_skory," chunk of meat...");
		AI_PrintScreen(obrabianie_skory,-1,50,FONT_SCREENBRIGHTLARGE,wszystkie_miesa);
		AI_Wait(hero,waittime);
	};
	if((wszystkie_miesa == 3) || (wszystkie_miesa == 4))
	{
		obrobione_skory = "Fryied ";
		obrobione_skory = ConcatStrings(obrobione_skory,IntToString(wszystkie_miesa));
		obrobione_skory = ConcatStrings(obrobione_skory," chunks of meat!");
		AI_PrintScreen(obrobione_skory,-1,53,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		obrobione_skory = "Fryied ";
		obrobione_skory = ConcatStrings(obrobione_skory,IntToString(wszystkie_miesa));
		obrobione_skory = ConcatStrings(obrobione_skory," chunk of meat!");
		AI_PrintScreen(obrobione_skory,-1,53,FONT_SCREENBRIGHTLARGE,2);
	};
	CreateInvItems(hero,ItFoMutton,wszystkie_miesa);
	Info_ClearChoices(pc_fryingmeat_stove_all);
};

func int b_usestove()
{
	if(((Npc_HasItems(self,ItMi_Pan) >= 1) && (Npc_HasItems(self,ItFoMuttonRaw) >= 1)) || (Npc_IsPlayer(self) == FALSE))
	{
		BEZI_USECAMP = FALSE;
		BEZI_USESTOVE = TRUE;
		return TRUE;
	}
	else
	{
		if(Npc_HasItems(hero,ItMi_Pan) < 1)
		{
			AI_PrintScreen(PRINT_NEEDPAN,-1,54,FONT_ScreenSmall,1);
		};
		if(Npc_HasItems(hero,ItFoMuttonRaw) < 1)
		{
			AI_PrintScreen(PRINT_NOTHINGTOFRY,-1,50,FONT_ScreenSmall,1);
		};
		AI_PlayAni(self,"T_DONTKNOW");
		B_Say_Overlay(self,self,"$missingitem");
		return FALSE;
	};
};

func int b_usecampfire()
{
	if((Npc_HasItems(self,ItFoMuttonRaw) >= 1) || (Npc_IsPlayer(self) == FALSE))
	{
		BEZI_USESTOVE = FALSE;
		BEZI_USECAMP = TRUE;
		return TRUE;
	}
	else
	{
		if(Npc_HasItems(hero,ItFoMuttonRaw) < 1)
		{
			AI_PrintScreen(PRINT_NOTHINGTOFRY,-1,50,FONT_ScreenSmall,1);
		};
		AI_PlayAni(self,"T_DONTKNOW");
		B_Say_Overlay(self,self,"$missingitem");
		return FALSE;
	};
};

