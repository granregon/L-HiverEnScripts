
func void leatherwork_s1()
{
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
	{
		self.aivar[AIV_INVINCIBLE] = TRUE;
		PLAYER_MOBSI_PRODUCTION = MOBSI_LEATHERWORK;
		AI_ProcessInfos(hero);
	};
};


instance PC_LEATHERWORK_END(C_Info)
{
	npc = PC_Hero;
	nr = 999;
	condition = pc_leatherwork_end_condition;
	information = pc_leatherwork_end_info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int pc_leatherwork_end_condition()
{
	if(PLAYER_MOBSI_PRODUCTION == MOBSI_LEATHERWORK)
	{
		return TRUE;
	};
};

func void pc_leatherwork_end_info()
{
	b_endproductiondialog();
};


instance PC_LEATHERWORK_SHEEP(C_Info)
{
	npc = PC_Hero;
	nr = 2;
	condition = pc_leatherwork_sheep_condition;
	information = pc_leatherwork_sheep_info;
	permanent = TRUE;
	description = "(1/1) Processing sheep skins";
};


func int pc_leatherwork_sheep_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_LEATHERWORK) && (PLAYER_TALENT_LEATHER == TRUE) && (Npc_HasItems(hero,ItAt_SheepFur) >= 1))
	{
		return TRUE;
	};
};

func void pc_leatherwork_sheep_info()
{
	Info_ClearChoices(pc_leatherwork_sheep);
	Info_AddChoice(pc_leatherwork_sheep,Dialog_Back,pc_leatherwork_sheep_back);
	Info_AddChoice(pc_leatherwork_sheep,"1 sheep skin",leatherwork_sheep_1);
	if(Npc_HasItems(hero,ItAt_SheepFur) >= 2)
	{
		Info_AddChoice(pc_leatherwork_sheep,"2 sheep skins",leatherwork_sheep_2);
	};
	if(Npc_HasItems(hero,ItAt_SheepFur) >= 5)
	{
		Info_AddChoice(pc_leatherwork_sheep,"5 sheep skins",leatherwork_sheep_5);
	};
	if(Npc_HasItems(hero,ItAt_SheepFur) >= 3)
	{
		Info_AddChoice(pc_leatherwork_sheep,"All sheep skins",leatherwork_sheep_all);
	};
};

func void pc_leatherwork_sheep_back()
{
	Info_ClearChoices(pc_leatherwork_sheep);
};

func void leatherwork_sheep_1()
{
	Npc_RemoveInvItems(hero,ItAt_SheepFur,1);
	PrintScreen("Processing 1 sheep skin...",-1,-1,FONT_SCREENBRIGHTLARGE,2);
	AI_Wait(hero,2);
	CreateInvItems(hero,itmi_leather,1);
	AI_PrintScreen("Received 1 leather!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	Info_ClearChoices(pc_leatherwork_sheep);
};

func void leatherwork_sheep_2()
{
	Npc_RemoveInvItems(hero,ItAt_SheepFur,2);
	PrintScreen("Processing 2 sheep skins...",-1,-1,FONT_SCREENBRIGHTLARGE,4);
	AI_Wait(hero,4);
	CreateInvItems(hero,itmi_leather,2);
	AI_PrintScreen("Received 2 leathrs!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	Info_ClearChoices(pc_leatherwork_sheep);
};

func void leatherwork_sheep_5()
{
	Npc_RemoveInvItems(hero,ItAt_SheepFur,5);
	PrintScreen("Processing 5 sheep skins...",-1,-1,FONT_SCREENBRIGHTLARGE,10);
	AI_Wait(hero,10);
	CreateInvItems(hero,itmi_leather,5);
	AI_PrintScreen("Received 5 leathrs!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	Info_ClearChoices(pc_leatherwork_sheep);
};

func void leatherwork_sheep_all()
{
	var string obrabianie_skory;
	var string obrobione_skory;
	var int wszystkie_skory;
	var int czekanie;
	var float waittime;
	wszystkie_skory = Npc_HasItems(hero,ItAt_SheepFur);
	Npc_RemoveInvItems(hero,ItAt_SheepFur,wszystkie_skory);
	czekanie = wszystkie_skory * 2;
	waittime = IntToFloat(czekanie);
	obrabianie_skory = "Processing ";
	obrabianie_skory = ConcatStrings(obrabianie_skory,IntToString(wszystkie_skory));
	obrabianie_skory = ConcatStrings(obrabianie_skory," leathers...");
	if(czekanie >= 20)
	{
		czekanie = 20;
		waittime = 20;
	};
	AI_PrintScreen(obrabianie_skory,-1,50,FONT_SCREENBRIGHTLARGE,czekanie);
	AI_Wait(hero,waittime);
	obrobione_skory = "Received ";
	obrobione_skory = ConcatStrings(obrobione_skory,IntToString(wszystkie_skory));
	obrobione_skory = ConcatStrings(obrobione_skory," leather!");
	AI_PrintScreen(obrobione_skory,-1,53,FONT_SCREENBRIGHTLARGE,2);
	CreateInvItems(hero,itmi_leather,wszystkie_skory);
	Info_ClearChoices(pc_leatherwork_sheep);
};


instance PC_LEATHERWORK_WOLF(C_Info)
{
	npc = PC_Hero;
	nr = 3;
	condition = pc_leatherwork_wolf_condition;
	information = pc_leatherwork_wolf_info;
	permanent = TRUE;
	description = "(1/1) Processing wolf skins";
};


func int pc_leatherwork_wolf_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_LEATHERWORK) && (PLAYER_TALENT_LEATHER == TRUE) && (Npc_HasItems(hero,ItAt_WolfFur) >= 1))
	{
		return TRUE;
	};
};

func void pc_leatherwork_wolf_info()
{
	Info_ClearChoices(pc_leatherwork_wolf);
	Info_AddChoice(pc_leatherwork_wolf,Dialog_Back,pc_leatherwork_wolf_back);
	Info_AddChoice(pc_leatherwork_wolf,"1 wolf skin",leatherwork_wolf_1);
	if(Npc_HasItems(hero,ItAt_WolfFur) >= 2)
	{
		Info_AddChoice(pc_leatherwork_wolf,"2 wolf skins",leatherwork_wolf_2);
	};
	if(Npc_HasItems(hero,ItAt_WolfFur) >= 5)
	{
		Info_AddChoice(pc_leatherwork_wolf,"5 wolf skins",leatherwork_wolf_5);
	};
	if(Npc_HasItems(hero,ItAt_WolfFur) >= 3)
	{
		Info_AddChoice(pc_leatherwork_wolf,"All wolf skins",leatherwork_wolf_all);
	};
};

func void pc_leatherwork_wolf_back()
{
	Info_ClearChoices(pc_leatherwork_wolf);
};

func void leatherwork_wolf_1()
{
	Npc_RemoveInvItems(hero,ItAt_WolfFur,1);
	PrintScreen("Processing 1 wolf skin...",-1,-1,FONT_SCREENBRIGHTLARGE,2);
	AI_Wait(hero,2);
	CreateInvItems(hero,itmi_leather,1);
	AI_PrintScreen("Received 1 leather!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	Info_ClearChoices(pc_leatherwork_wolf);
};

func void leatherwork_wolf_2()
{
	Npc_RemoveInvItems(hero,ItAt_WolfFur,2);
	PrintScreen("Processing 2 wolf skins...",-1,-1,FONT_SCREENBRIGHTLARGE,4);
	AI_Wait(hero,4);
	CreateInvItems(hero,itmi_leather,2);
	AI_PrintScreen("Received 2 leathers!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	Info_ClearChoices(pc_leatherwork_wolf);
};

func void leatherwork_wolf_5()
{
	Npc_RemoveInvItems(hero,ItAt_WolfFur,5);
	PrintScreen("Processing 5 wolf skins...",-1,-1,FONT_SCREENBRIGHTLARGE,10);
	AI_Wait(hero,10);
	CreateInvItems(hero,itmi_leather,5);
	AI_PrintScreen("Received 5 leathers!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	Info_ClearChoices(pc_leatherwork_wolf);
};

func void leatherwork_wolf_all()
{
	var string obrabianie_skory;
	var string obrobione_skory;
	var int wszystkie_skory;
	var int czekanie;
	var float waittime;
	wszystkie_skory = Npc_HasItems(hero,ItAt_WolfFur);
	Npc_RemoveInvItems(hero,ItAt_WolfFur,wszystkie_skory);
	czekanie = wszystkie_skory * 2;
	waittime = IntToFloat(czekanie);
	obrabianie_skory = "Processing ";
	obrabianie_skory = ConcatStrings(obrabianie_skory,IntToString(wszystkie_skory));
	obrabianie_skory = ConcatStrings(obrabianie_skory," wolf skins...");
	if(czekanie >= 20)
	{
		czekanie = 20;
		waittime = 20;
	};
	AI_PrintScreen(obrabianie_skory,-1,50,FONT_SCREENBRIGHTLARGE,czekanie);
	AI_Wait(hero,waittime);
	obrobione_skory = "Received ";
	obrobione_skory = ConcatStrings(obrobione_skory,IntToString(wszystkie_skory));
	obrobione_skory = ConcatStrings(obrobione_skory," leathers!");
	AI_PrintScreen(obrobione_skory,-1,53,FONT_SCREENBRIGHTLARGE,2);
	CreateInvItems(hero,itmi_leather,wszystkie_skory);
	Info_ClearChoices(pc_leatherwork_wolf);
};


instance PC_LEATHERWORK_KEILER(C_Info)
{
	npc = PC_Hero;
	nr = 4;
	condition = pc_leatherwork_keiler_condition;
	information = pc_leatherwork_keiler_info;
	permanent = TRUE;
	description = "(1/2) Processing boar skins";
};


func int pc_leatherwork_keiler_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_LEATHERWORK) && (PLAYER_TALENT_LEATHER == TRUE) && (Npc_HasItems(hero,ItAt_Addon_KeilerFur) >= 1))
	{
		return TRUE;
	};
};

func void pc_leatherwork_keiler_info()
{
	Info_ClearChoices(pc_leatherwork_keiler);
	Info_AddChoice(pc_leatherwork_keiler,Dialog_Back,pc_leatherwork_keiler_back);
	Info_AddChoice(pc_leatherwork_keiler,"1 boar skin",leatherwork_keiler_1);
	if(Npc_HasItems(hero,ItAt_Addon_KeilerFur) >= 2)
	{
		Info_AddChoice(pc_leatherwork_keiler,"2 boar skins",leatherwork_keiler_2);
	};
	if(Npc_HasItems(hero,ItAt_Addon_KeilerFur) >= 5)
	{
		Info_AddChoice(pc_leatherwork_keiler,"5 boar skins",leatherwork_keiler_5);
	};
	if(Npc_HasItems(hero,ItAt_Addon_KeilerFur) >= 3)
	{
		Info_AddChoice(pc_leatherwork_keiler,"All boar skins",leatherwork_keiler_all);
	};
};

func void pc_leatherwork_keiler_back()
{
	Info_ClearChoices(pc_leatherwork_keiler);
};

func void leatherwork_keiler_1()
{
	Npc_RemoveInvItems(hero,ItAt_Addon_KeilerFur,1);
	PrintScreen("Processing 1 boar skin...",-1,-1,FONT_SCREENBRIGHTLARGE,2);
	AI_Wait(hero,2);
	CreateInvItems(hero,itmi_leather,2);
	AI_PrintScreen("Received 2 leathers!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	Info_ClearChoices(pc_leatherwork_keiler);
};

func void leatherwork_keiler_2()
{
	Npc_RemoveInvItems(hero,ItAt_Addon_KeilerFur,2);
	PrintScreen("Processing 2 boar skins...",-1,-1,FONT_SCREENBRIGHTLARGE,4);
	AI_Wait(hero,4);
	CreateInvItems(hero,itmi_leather,4);
	AI_PrintScreen("Received 4 leathers!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	Info_ClearChoices(pc_leatherwork_keiler);
};

func void leatherwork_keiler_5()
{
	Npc_RemoveInvItems(hero,ItAt_Addon_KeilerFur,5);
	PrintScreen("Processing 5 boar skins...",-1,-1,FONT_SCREENBRIGHTLARGE,10);
	AI_Wait(hero,10);
	CreateInvItems(hero,itmi_leather,10);
	AI_PrintScreen("Received 10 leathers!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	Info_ClearChoices(pc_leatherwork_keiler);
};

func void leatherwork_keiler_all()
{
	var string obrabianie_skory;
	var string obrobione_skory;
	var int wszystkie_skory;
	var int liczba_skor;
	var int czekanie;
	var float waittime;
	wszystkie_skory = Npc_HasItems(hero,ItAt_Addon_KeilerFur);
	liczba_skor = wszystkie_skory * 2;
	Npc_RemoveInvItems(hero,ItAt_Addon_KeilerFur,wszystkie_skory);
	czekanie = wszystkie_skory * 2;
	waittime = IntToFloat(czekanie);
	obrabianie_skory = "Processing ";
	obrabianie_skory = ConcatStrings(obrabianie_skory,IntToString(wszystkie_skory));
	obrabianie_skory = ConcatStrings(obrabianie_skory," boar skins...");
	if(czekanie >= 20)
	{
		czekanie = 20;
		waittime = 20;
	};
	AI_PrintScreen(obrabianie_skory,-1,50,FONT_SCREENBRIGHTLARGE,czekanie);
	AI_Wait(hero,waittime);
	obrobione_skory = "Received ";
	obrobione_skory = ConcatStrings(obrobione_skory,IntToString(liczba_skor));
	obrobione_skory = ConcatStrings(obrobione_skory," leathers!");
	AI_PrintScreen(obrobione_skory,-1,53,FONT_SCREENBRIGHTLARGE,2);
	CreateInvItems(hero,itmi_leather,liczba_skor);
	Info_ClearChoices(pc_leatherwork_keiler);
};


instance PC_LEATHERWORK_WARG(C_Info)
{
	npc = PC_Hero;
	nr = 5;
	condition = pc_leatherwork_warg_condition;
	information = pc_leatherwork_warg_info;
	permanent = TRUE;
	description = "(1/2) Processing warg skins";
};


func int pc_leatherwork_warg_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_LEATHERWORK) && (PLAYER_TALENT_LEATHER == TRUE) && (Npc_HasItems(hero,ItAt_WargFur) >= 1))
	{
		return TRUE;
	};
};

func void pc_leatherwork_warg_info()
{
	Info_ClearChoices(pc_leatherwork_warg);
	Info_AddChoice(pc_leatherwork_warg,Dialog_Back,pc_leatherwork_warg_back);
	Info_AddChoice(pc_leatherwork_warg,"1 warg skin",leatherwork_warg_1);
	if(Npc_HasItems(hero,ItAt_WargFur) >= 2)
	{
		Info_AddChoice(pc_leatherwork_warg,"2 warg skins",leatherwork_warg_2);
	};
	if(Npc_HasItems(hero,ItAt_WargFur) >= 5)
	{
		Info_AddChoice(pc_leatherwork_warg,"5 warg skins",leatherwork_warg_5);
	};
	if(Npc_HasItems(hero,ItAt_WargFur) >= 3)
	{
		Info_AddChoice(pc_leatherwork_warg,"All warg skins",leatherwork_warg_all);
	};
};

func void pc_leatherwork_warg_back()
{
	Info_ClearChoices(pc_leatherwork_warg);
};

func void leatherwork_warg_1()
{
	Npc_RemoveInvItems(hero,ItAt_WargFur,1);
	PrintScreen("Processing 1 warg skin...",-1,-1,FONT_SCREENBRIGHTLARGE,2);
	AI_Wait(hero,2);
	CreateInvItems(hero,itmi_leather,2);
	AI_PrintScreen("Received 2 leathers!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	Info_ClearChoices(pc_leatherwork_warg);
};

func void leatherwork_warg_2()
{
	Npc_RemoveInvItems(hero,ItAt_WargFur,2);
	PrintScreen("Processing 2 warg skins...",-1,-1,FONT_SCREENBRIGHTLARGE,4);
	AI_Wait(hero,4);
	CreateInvItems(hero,itmi_leather,4);
	AI_PrintScreen("Received 4 leathers!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	Info_ClearChoices(pc_leatherwork_warg);
};

func void leatherwork_warg_5()
{
	Npc_RemoveInvItems(hero,ItAt_WargFur,5);
	PrintScreen("Processing 5 warg skins...",-1,-1,FONT_SCREENBRIGHTLARGE,10);
	AI_Wait(hero,10);
	CreateInvItems(hero,itmi_leather,10);
	AI_PrintScreen("Received 10 leathers!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	Info_ClearChoices(pc_leatherwork_warg);
};

func void leatherwork_warg_all()
{
	var string obrabianie_skory;
	var string obrobione_skory;
	var int wszystkie_skory;
	var int liczba_skor;
	var int czekanie;
	var float waittime;
	wszystkie_skory = Npc_HasItems(hero,ItAt_WargFur);
	liczba_skor = wszystkie_skory * 2;
	Npc_RemoveInvItems(hero,ItAt_WargFur,wszystkie_skory);
	czekanie = wszystkie_skory * 2;
	waittime = IntToFloat(czekanie);
	obrabianie_skory = "Processing ";
	obrabianie_skory = ConcatStrings(obrabianie_skory,IntToString(wszystkie_skory));
	obrabianie_skory = ConcatStrings(obrabianie_skory," warg skins...");
	if(czekanie >= 20)
	{
		czekanie = 20;
		waittime = 20;
	};
	AI_PrintScreen(obrabianie_skory,-1,50,FONT_SCREENBRIGHTLARGE,czekanie);
	AI_Wait(hero,waittime);
	obrobione_skory = "Received ";
	obrobione_skory = ConcatStrings(obrobione_skory,IntToString(liczba_skor));
	obrobione_skory = ConcatStrings(obrobione_skory," leathers!");
	AI_PrintScreen(obrobione_skory,-1,53,FONT_SCREENBRIGHTLARGE,2);
	CreateInvItems(hero,itmi_leather,liczba_skor);
	Info_ClearChoices(pc_leatherwork_warg);
};


instance PC_LEATHERWORK_SHARK(C_Info)
{
	npc = PC_Hero;
	nr = 6;
	condition = pc_leatherwork_shark_condition;
	information = pc_leatherwork_shark_info;
	permanent = TRUE;
	description = "(1/3) Processing swampshark skins";
};


func int pc_leatherwork_shark_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_LEATHERWORK) && (PLAYER_TALENT_LEATHER == TRUE) && (Npc_HasItems(hero,ItAt_SharkSkin) >= 1))
	{
		return TRUE;
	};
};

func void pc_leatherwork_shark_info()
{
	Info_ClearChoices(pc_leatherwork_shark);
	Info_AddChoice(pc_leatherwork_shark,Dialog_Back,pc_leatherwork_shark_back);
	Info_AddChoice(pc_leatherwork_shark,"1 swampshark skin",leatherwork_shark_1);
	if(Npc_HasItems(hero,ItAt_SharkSkin) >= 2)
	{
		Info_AddChoice(pc_leatherwork_shark,"2 swampshark skins",leatherwork_shark_2);
	};
	if(Npc_HasItems(hero,ItAt_SharkSkin) >= 5)
	{
		Info_AddChoice(pc_leatherwork_shark,"5 swampshark skins",leatherwork_shark_5);
	};
	if(Npc_HasItems(hero,ItAt_SharkSkin) >= 3)
	{
		Info_AddChoice(pc_leatherwork_shark,"All swampshark skins",leatherwork_shark_all);
	};
};

func void pc_leatherwork_shark_back()
{
	Info_ClearChoices(pc_leatherwork_shark);
};

func void leatherwork_shark_1()
{
	Npc_RemoveInvItems(hero,ItAt_SharkSkin,1);
	PrintScreen("Processing 1 swampshark skin...",-1,-1,FONT_SCREENBRIGHTLARGE,2);
	AI_Wait(hero,2);
	CreateInvItems(hero,itmi_leather,3);
	AI_PrintScreen("Received 3 leathers!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	Info_ClearChoices(pc_leatherwork_shark);
};

func void leatherwork_shark_2()
{
	Npc_RemoveInvItems(hero,ItAt_SharkSkin,2);
	PrintScreen("Processing 2 swampshark skins...",-1,-1,FONT_SCREENBRIGHTLARGE,4);
	AI_Wait(hero,4);
	CreateInvItems(hero,itmi_leather,6);
	AI_PrintScreen("Received 6 leathers!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	Info_ClearChoices(pc_leatherwork_shark);
};

func void leatherwork_shark_5()
{
	Npc_RemoveInvItems(hero,ItAt_SharkSkin,5);
	PrintScreen("Processing 5 swampshark skins...",-1,-1,FONT_SCREENBRIGHTLARGE,10);
	AI_Wait(hero,10);
	CreateInvItems(hero,itmi_leather,15);
	AI_PrintScreen("Received 15 leathers!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	Info_ClearChoices(pc_leatherwork_shark);
};

func void leatherwork_shark_all()
{
	var string obrabianie_skory;
	var string obrobione_skory;
	var int wszystkie_skory;
	var int liczba_skor;
	var int czekanie;
	var float waittime;
	wszystkie_skory = Npc_HasItems(hero,ItAt_SharkSkin);
	liczba_skor = wszystkie_skory * 3;
	Npc_RemoveInvItems(hero,ItAt_SharkSkin,wszystkie_skory);
	czekanie = wszystkie_skory * 2;
	waittime = IntToFloat(czekanie);
	obrabianie_skory = "Processing ";
	obrabianie_skory = ConcatStrings(obrabianie_skory,IntToString(wszystkie_skory));
	obrabianie_skory = ConcatStrings(obrabianie_skory," swampshark skins...");
	if(czekanie >= 20)
	{
		czekanie = 20;
		waittime = 20;
	};
	AI_PrintScreen(obrabianie_skory,-1,50,FONT_SCREENBRIGHTLARGE,czekanie);
	AI_Wait(hero,waittime);
	obrobione_skory = "Received ";
	obrobione_skory = ConcatStrings(obrobione_skory,IntToString(liczba_skor));
	obrobione_skory = ConcatStrings(obrobione_skory," leathers!");
	AI_PrintScreen(obrobione_skory,-1,53,FONT_SCREENBRIGHTLARGE,2);
	CreateInvItems(hero,itmi_leather,liczba_skor);
	Info_ClearChoices(pc_leatherwork_shark);
};


instance PC_LEATHERWORK_SHADOW(C_Info)
{
	npc = PC_Hero;
	nr = 7;
	condition = pc_leatherwork_shadow_condition;
	information = pc_leatherwork_shadow_info;
	permanent = TRUE;
	description = "(1/4) Processing shadobeast hides";
};


func int pc_leatherwork_shadow_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_LEATHERWORK) && (PLAYER_TALENT_LEATHER == TRUE) && (Npc_HasItems(hero,ItAt_ShadowFur) >= 1))
	{
		return TRUE;
	};
};

func void pc_leatherwork_shadow_info()
{
	Info_ClearChoices(pc_leatherwork_shadow);
	Info_AddChoice(pc_leatherwork_shadow,Dialog_Back,pc_leatherwork_shadow_back);
	Info_AddChoice(pc_leatherwork_shadow,"1 shadobeast hide",leatherwork_shadow_1);
	if(Npc_HasItems(hero,ItAt_ShadowFur) >= 2)
	{
		Info_AddChoice(pc_leatherwork_shadow,"2 shadobeast hides",leatherwork_shadow_2);
	};
	if(Npc_HasItems(hero,ItAt_ShadowFur) >= 5)
	{
		Info_AddChoice(pc_leatherwork_shadow,"5 shadobeast hides",leatherwork_shadow_5);
	};
	if(Npc_HasItems(hero,ItAt_ShadowFur) >= 3)
	{
		Info_AddChoice(pc_leatherwork_shadow,"All shadobeast hides",leatherwork_shadow_all);
	};
};

func void pc_leatherwork_shadow_back()
{
	Info_ClearChoices(pc_leatherwork_shadow);
};

func void leatherwork_shadow_1()
{
	Npc_RemoveInvItems(hero,ItAt_ShadowFur,1);
	PrintScreen("Processing 1 shadobeast hide...",-1,-1,FONT_SCREENBRIGHTLARGE,2);
	AI_Wait(hero,2);
	CreateInvItems(hero,itmi_leather,4);
	AI_PrintScreen("Received 4 leathers!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	Info_ClearChoices(pc_leatherwork_shadow);
};

func void leatherwork_shadow_2()
{
	Npc_RemoveInvItems(hero,ItAt_ShadowFur,2);
	PrintScreen("Processing 2 shadobeast hides...",-1,-1,FONT_SCREENBRIGHTLARGE,4);
	AI_Wait(hero,4);
	CreateInvItems(hero,itmi_leather,8);
	AI_PrintScreen("Received 8 leathers!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	Info_ClearChoices(pc_leatherwork_shadow);
};

func void leatherwork_shadow_5()
{
	Npc_RemoveInvItems(hero,ItAt_ShadowFur,5);
	PrintScreen("Processing 5 shadobeast hides...",-1,-1,FONT_SCREENBRIGHTLARGE,10);
	AI_Wait(hero,10);
	CreateInvItems(hero,itmi_leather,20);
	AI_PrintScreen("Received 20 leathers!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	Info_ClearChoices(pc_leatherwork_shadow);
};

func void leatherwork_shadow_all()
{
	var string obrobione_skory;
	var string obrabianie_skory;
	var int wszystkie_skory;
	var int liczba_skor;
	var int czekanie;
	var float waittime;
	wszystkie_skory = Npc_HasItems(hero,ItAt_ShadowFur);
	liczba_skor = wszystkie_skory * 4;
	Npc_RemoveInvItems(hero,ItAt_ShadowFur,wszystkie_skory);
	czekanie = wszystkie_skory * 2;
	waittime = IntToFloat(czekanie);
	obrabianie_skory = "Processing ";
	obrabianie_skory = ConcatStrings(obrabianie_skory,IntToString(wszystkie_skory));
	obrabianie_skory = ConcatStrings(obrabianie_skory," shadowbeast hides...");
	if(czekanie >= 20)
	{
		czekanie = 20;
		waittime = 20;
	};
	AI_PrintScreen(obrabianie_skory,-1,50,FONT_SCREENBRIGHTLARGE,czekanie);
	AI_Wait(hero,waittime);
	obrobione_skory = "Received ";
	obrobione_skory = ConcatStrings(obrobione_skory,IntToString(liczba_skor));
	obrobione_skory = ConcatStrings(obrobione_skory," leathers!");
	AI_PrintScreen(obrobione_skory,-1,53,FONT_SCREENBRIGHTLARGE,2);
	CreateInvItems(hero,itmi_leather,liczba_skor);
	Info_ClearChoices(pc_leatherwork_shadow);
};


instance PC_LEATHERWORK_TROLL(C_Info)
{
	npc = PC_Hero;
	nr = 8;
	condition = pc_leatherwork_troll_condition;
	information = pc_leatherwork_troll_info;
	permanent = TRUE;
	description = "(1/5) Processing troll hides";
};


func int pc_leatherwork_troll_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_LEATHERWORK) && (PLAYER_TALENT_LEATHER == TRUE) && (Npc_HasItems(hero,ItAt_TrollFur) >= 1))
	{
		return TRUE;
	};
};

func void pc_leatherwork_troll_info()
{
	Info_ClearChoices(pc_leatherwork_troll);
	Info_AddChoice(pc_leatherwork_troll,Dialog_Back,pc_leatherwork_troll_back);
	Info_AddChoice(pc_leatherwork_troll,"1 troll hide",leatherwork_troll_1);
	if(Npc_HasItems(hero,ItAt_TrollFur) >= 2)
	{
		Info_AddChoice(pc_leatherwork_troll,"2 troll hides",leatherwork_troll_2);
	};
	if(Npc_HasItems(hero,ItAt_TrollFur) >= 5)
	{
		Info_AddChoice(pc_leatherwork_troll,"5 troll hides",leatherwork_troll_5);
	};
	if(Npc_HasItems(hero,ItAt_TrollFur) >= 3)
	{
		Info_AddChoice(pc_leatherwork_troll,"All troll hides",leatherwork_troll_all);
	};
};

func void pc_leatherwork_troll_back()
{
	Info_ClearChoices(pc_leatherwork_troll);
};

func void leatherwork_troll_1()
{
	Npc_RemoveInvItems(hero,ItAt_TrollFur,1);
	PrintScreen("Processing 1 troll hide...",-1,-1,FONT_SCREENBRIGHTLARGE,2);
	AI_Wait(hero,2);
	CreateInvItems(hero,itmi_leather,5);
	AI_PrintScreen("Received 5 leathers!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	Info_ClearChoices(pc_leatherwork_troll);
};

func void leatherwork_troll_2()
{
	Npc_RemoveInvItems(hero,ItAt_TrollFur,2);
	PrintScreen("Processing 2 troll hides...",-1,-1,FONT_SCREENBRIGHTLARGE,4);
	AI_Wait(hero,4);
	CreateInvItems(hero,itmi_leather,10);
	AI_PrintScreen("Received 10 leathers!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	Info_ClearChoices(pc_leatherwork_troll);
};

func void leatherwork_troll_5()
{
	Npc_RemoveInvItems(hero,ItAt_TrollFur,5);
	PrintScreen("Processing 5 troll hides...",-1,-1,FONT_SCREENBRIGHTLARGE,10);
	AI_Wait(hero,10);
	CreateInvItems(hero,itmi_leather,25);
	AI_PrintScreen("Received 25 leathers!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	Info_ClearChoices(pc_leatherwork_troll);
};

func void leatherwork_troll_all()
{
	var string obrobione_skory;
	var string obrabianie_skory;
	var int wszystkie_skory;
	var int liczba_skor;
	var int czekanie;
	var float waittime;
	wszystkie_skory = Npc_HasItems(hero,ItAt_TrollFur);
	liczba_skor = wszystkie_skory * 5;
	Npc_RemoveInvItems(hero,ItAt_TrollFur,wszystkie_skory);
	czekanie = wszystkie_skory * 2;
	waittime = IntToFloat(czekanie);
	obrabianie_skory = "Processing ";
	obrabianie_skory = ConcatStrings(obrabianie_skory,IntToString(wszystkie_skory));
	obrabianie_skory = ConcatStrings(obrabianie_skory," troll hides...");
	if(czekanie >= 20)
	{
		czekanie = 20;
		waittime = 20;
	};
	AI_PrintScreen(obrabianie_skory,-1,50,FONT_SCREENBRIGHTLARGE,czekanie);
	AI_Wait(hero,waittime);
	obrobione_skory = "Received ";
	obrobione_skory = ConcatStrings(obrobione_skory,IntToString(liczba_skor));
	obrobione_skory = ConcatStrings(obrobione_skory," leathers!");
	AI_PrintScreen(obrobione_skory,-1,53,FONT_SCREENBRIGHTLARGE,2);
	CreateInvItems(hero,itmi_leather,liczba_skor);
	Info_ClearChoices(pc_leatherwork_troll);
};


instance PC_LEATHERWORK_TROLLBLACK(C_Info)
{
	npc = PC_Hero;
	nr = 9;
	condition = pc_leatherwork_trollblack_condition;
	information = pc_leatherwork_trollblack_info;
	permanent = TRUE;
	description = "(1/10) Processing black troll hides";
};


func int pc_leatherwork_trollblack_condition()
{
	if((PLAYER_MOBSI_PRODUCTION == MOBSI_LEATHERWORK) && (PLAYER_TALENT_LEATHER == TRUE) && (Npc_HasItems(hero,ItAt_TrollBlackFur) >= 1))
	{
		return TRUE;
	};
};

func void pc_leatherwork_trollblack_info()
{
	Info_ClearChoices(pc_leatherwork_trollblack);
	Info_AddChoice(pc_leatherwork_trollblack,Dialog_Back,pc_leatherwork_trollblack_back);
	Info_AddChoice(pc_leatherwork_trollblack,"1 black troll hide",leatherwork_trollblack_1);
	if(Npc_HasItems(hero,ItAt_TrollBlackFur) >= 2)
	{
		Info_AddChoice(pc_leatherwork_trollblack,"2 black troll hides",leatherwork_trollblack_2);
	};
	if(Npc_HasItems(hero,ItAt_TrollBlackFur) >= 5)
	{
		Info_AddChoice(pc_leatherwork_trollblack,"5 black troll hides",leatherwork_trollblack_5);
	};
	if(Npc_HasItems(hero,ItAt_TrollBlackFur) >= 3)
	{
		Info_AddChoice(pc_leatherwork_trollblack,"All black troll hides",leatherwork_trollblack_all);
	};
};

func void pc_leatherwork_trollblack_back()
{
	Info_ClearChoices(pc_leatherwork_trollblack);
};

func void leatherwork_trollblack_1()
{
	Npc_RemoveInvItems(hero,ItAt_TrollBlackFur,1);
	PrintScreen("Processing 1 black troll hide...",-1,-1,FONT_SCREENBRIGHTLARGE,3);
	AI_Wait(hero,3);
	CreateInvItems(hero,itmi_leather,10);
	AI_PrintScreen("Received 10 leather!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	Info_ClearChoices(pc_leatherwork_trollblack);
};

func void leatherwork_trollblack_2()
{
	Npc_RemoveInvItems(hero,ItAt_TrollBlackFur,2);
	PrintScreen("Processing 2 black troll hides...",-1,-1,FONT_SCREENBRIGHTLARGE,6);
	AI_Wait(hero,6);
	CreateInvItems(hero,itmi_leather,20);
	AI_PrintScreen("Received 20 leathers!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	Info_ClearChoices(pc_leatherwork_trollblack);
};

func void leatherwork_trollblack_5()
{
	Npc_RemoveInvItems(hero,ItAt_TrollBlackFur,5);
	PrintScreen("Processing 5 black troll hides...",-1,-1,FONT_SCREENBRIGHTLARGE,15);
	AI_Wait(hero,15);
	CreateInvItems(hero,itmi_leather,50);
	AI_PrintScreen("Received 50 leathers!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	Info_ClearChoices(pc_leatherwork_trollblack);
};

func void leatherwork_trollblack_all()
{
	var string obrabianie_skory;
	var string obrobione_skory;
	var int wszystkie_skory;
	var int liczba_skor;
	var int czekanie;
	var float waittime;
	wszystkie_skory = Npc_HasItems(hero,ItAt_TrollBlackFur);
	liczba_skor = wszystkie_skory * 10;
	Npc_RemoveInvItems(hero,ItAt_TrollBlackFur,wszystkie_skory);
	czekanie = wszystkie_skory * 3;
	waittime = IntToFloat(czekanie);
	obrabianie_skory = "Processing ";
	obrabianie_skory = ConcatStrings(obrabianie_skory,IntToString(wszystkie_skory));
	obrabianie_skory = ConcatStrings(obrabianie_skory," black troll hides...");
	if(czekanie >= 25)
	{
		czekanie = 25;
		waittime = 25;
	};
	AI_PrintScreen(obrabianie_skory,-1,50,FONT_SCREENBRIGHTLARGE,czekanie);
	AI_Wait(hero,waittime);
	obrobione_skory = "Received ";
	obrobione_skory = ConcatStrings(obrobione_skory,IntToString(liczba_skor));
	obrobione_skory = ConcatStrings(obrobione_skory," leathers!");
	AI_PrintScreen(obrobione_skory,-1,53,FONT_SCREENBRIGHTLARGE,2);
	CreateInvItems(hero,itmi_leather,liczba_skor);
	Info_ClearChoices(pc_leatherwork_trollblack);
};

func int b_uselwbench()
{
	if(PLAYER_TALENT_LEATHER == TRUE)
	{
		if((Npc_HasItems(hero,ItAt_SheepFur) == 0) && (Npc_HasItems(hero,ItAt_WolfFur) == 0) && (Npc_HasItems(hero,ItAt_WargFur) == 0) && (Npc_HasItems(hero,ItAt_ShadowFur) == 0) && (Npc_HasItems(hero,ItAt_SharkSkin) == 0) && (Npc_HasItems(hero,ItAt_Addon_KeilerFur) == 0) && (Npc_HasItems(hero,ItAt_TrollFur) == 0) && (Npc_HasItems(hero,ItAt_TrollBlackFur) == 0))
		{
			AI_PrintScreen("No skins/hides!",-1,50,FONT_ScreenSmall,1);
			AI_PlayAni(self,"T_DONTKNOW");
			B_Say_Overlay(self,self,"$missingitem");
			return FALSE;
		}
		else
		{
			return TRUE;
		};
	}
	else
	{
		AI_PrintScreen(PRINT_NoPicklockTalent,-1,50,FONT_ScreenSmall,1);
		AI_PlayAni(self,"T_DONTKNOW");
		B_Say_Overlay(self,self,"$BEZI_GOTOWY");
		return FALSE;
	};
};

