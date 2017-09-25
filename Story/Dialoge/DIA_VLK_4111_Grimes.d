
instance DIA_Grimes_EXIT(C_Info)
{
	npc = VLK_4111_Grimes;
	nr = 999;
	condition = DIA_Grimes_EXIT_Condition;
	information = DIA_Grimes_EXIT_Info;
	permanent = TRUE;
	description = Dialog_Ende;
};


var int Grimes_First;

func int DIA_Grimes_EXIT_Condition()
{
	return TRUE;
};

func void DIA_Grimes_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Grimes_Hallo(C_Info)
{
	npc = VLK_4111_Grimes;
	nr = 2;
	condition = DIA_Grimes_Hallo_Condition;
	information = DIA_Grimes_Hallo_Info;
	permanent = FALSE;
	important = TRUE;
};


func int DIA_Grimes_Hallo_Condition()
{
	if(Npc_IsInState(self,ZS_Talk))
	{
		return TRUE;
	};
};

func void DIA_Grimes_Hallo_Info()
{
	AI_Output(self,other,"DIA_Grimes_Hallo_05_00");	//You? Who would have thought we'd see each other again.
	AI_Output(self,other,"DIA_Grimes_Hallo_05_01");	//So it looks like we both know how to stay alive, and as you can see I've stuck with prospecting.
	if(Grimes_First == FALSE)
	{
		Wld_InsertNpc(Snapper,"OW_PATH_148_A");
		Wld_InsertNpc(Snapper,"OW_PATH_146");
		Wld_InsertNpc(Snapper,"OW_PATH_147");
		Wld_InsertNpc(Snapper,"OW_PATH_148");
		Wld_InsertNpc(Snapper,"OW_PATH_264");
		Grimes_First = TRUE;
	};
};


instance DIA_Grimes_Erz(C_Info)
{
	npc = VLK_4111_Grimes;
	nr = 2;
	condition = DIA_Grimes_Erz_Condition;
	information = DIA_Grimes_Erz_Info;
	permanent = FALSE;
	description = "How much ore have you already mined?";
};


func int DIA_Grimes_Erz_Condition()
{
	if((Kapitel == 2) && (MIS_ScoutMine == LOG_Running))
	{
		return TRUE;
	};
};

func void DIA_Grimes_Erz_Info()
{
	AI_Output(other,self,"DIA_Grimes_Erz_15_00");	//How much ore have you already mined?
	AI_Output(self,other,"DIA_Grimes_Erz_05_01");	//A few chests. But there's nothing of that left here.
	AI_Output(self,other,"DIA_Grimes_Erz_05_02");	//Paladin Marcos decided to take the ore to the castle, because we were constantly being attacked by orcs.
};


instance DIA_Grimes_Weg(C_Info)
{
	npc = VLK_4111_Grimes;
	nr = 3;
	condition = DIA_Grimes_Weg_Condition;
	information = DIA_Grimes_Weg_Info;
	permanent = FALSE;
	description = "Do you know which way Marcos went?";
};


func int DIA_Grimes_Weg_Condition()
{
	if(Npc_KnowsInfo(other,DIA_Grimes_Erz) && (Npc_KnowsInfo(other,DIA_Marcos_Garond) == FALSE))
	{
		return TRUE;
	};
};

func void DIA_Grimes_Weg_Info()
{
	AI_Output(other,self,"DIA_Grimes_Weg_15_00");	//Do you know which way Marcos went?
	AI_Output(self,other,"DIA_Grimes_Weg_05_01");	//He didn't take the direct route - instead he wanted to cross the river where it was frozen.
	AI_Output(self,other,"DIA_Grimes_Weg_05_02");	//He wanted to cut around and approach the castle from the west.
};


instance DIA_Grimes_Grimes(C_Info)
{
	npc = VLK_4111_Grimes;
	nr = 2;
	condition = DIA_Grimes_Grimes_Condition;
	information = DIA_Grimes_Grimes_Info;
	permanent = FALSE;
	description = "Don't you want to leave the valley?";
};


func int DIA_Grimes_Grimes_Condition()
{
	if(Kapitel == 2)
	{
		return TRUE;
	};
};

func void DIA_Grimes_Grimes_Info()
{
	AI_Output(other,self,"DIA_Grimes_Grimes_15_00");	//Don't you want to leave the valley?
	AI_Output(self,other,"DIA_Grimes_Grimes_05_01");	//No, I'll keep on mining ore.
	AI_Output(self,other,"DIA_Grimes_Grimes_05_02");	//I'm not going to let a few orcs stop me - I've been through a lot more than that.
	AI_Output(self,other,"DIA_Grimes_Grimes_05_03");	//Back then when we were digging in the old mine, and suddenly the water broke in...
	AI_Output(self,other,"DIA_Grimes_Grimes_05_04");	//But those are old stories.
};


instance DIA_Grimes_PERM(C_Info)
{
	npc = VLK_4111_Grimes;
	nr = 2;
	condition = DIA_Grimes_PERM_Condition;
	information = DIA_Grimes_PERM_Info;
	permanent = TRUE;
	description = "How's your work?";
};


func int DIA_Grimes_PERM_Condition()
{
	if(Kapitel >= 2)
	{
		return TRUE;
	};
};

func void DIA_Grimes_PERM_Info()
{
	AI_Output(other,self,"DIA_Grimes_PERM_15_00");	//How's your work?
	AI_Output(self,other,"DIA_Grimes_PERM_05_01");	//This rock is damn stubborn - almost like it was trying to prevent us from taking the ore.
};


instance DIA_GRIMES_TEACH_ORE(C_Info)
{
	npc = VLK_4111_Grimes;
	nr = 3;
	condition = dia_grimes_teach_ore_condition;
	information = dia_grimes_teach_ore_info;
	permanent = TRUE;
	description = "Can you teach me something?";
};


func int dia_grimes_teach_ore_condition()
{
	if((Kapitel >= 2) && ((PLAYER_TALENT_OREMASTER[0] == FALSE) || (PLAYER_TALENT_OREMASTER[1] == FALSE) || (PLAYER_TALENT_OREMASTER[2] == FALSE)))
	{
		return TRUE;
	};
};

func void dia_grimes_teach_ore_info()
{
	AI_Output(other,self,"DIA_Carl_Lernen_15_00");	//Can you teach me anything?
	if((PLAYER_TALENT_OREMASTER[0] == FALSE) || (PLAYER_TALENT_OREMASTER[1] == FALSE) || (PLAYER_TALENT_OREMASTER[2] == FALSE))
	{
		Info_ClearChoices(dia_grimes_teach_ore);
		Info_AddChoice(dia_grimes_teach_ore,Dialog_Back,dia_grimes_teach_ore_back);
	};
	if(PLAYER_TALENT_OREMASTER[0] == FALSE)
	{
		Info_AddChoice(dia_grimes_teach_ore,B_BuildLearnString("Ore extraction - Miner",B_GetLearnCostTalent(other,NPC_TALENT_OREMASTER,ORMASTERY_1)),dia_grimes_teach_ore_ormastery_1);
	}
	else if((PLAYER_TALENT_OREMASTER[1] == FALSE) && (PLAYER_TALENT_OREMASTER[0] == TRUE))
	{
		Info_AddChoice(dia_grimes_teach_ore,B_BuildLearnString("Ore extraction - Master",B_GetLearnCostTalent(other,NPC_TALENT_OREMASTER,ORMASTERY_2)),dia_grimes_teach_ore_ormastery_2);
	}
	else if((PLAYER_TALENT_OREMASTER[2] == FALSE) && (PLAYER_TALENT_OREMASTER[0] == TRUE) && (PLAYER_TALENT_OREMASTER[1] == TRUE))
	{
		Info_AddChoice(dia_grimes_teach_ore,B_BuildLearnString("Ore extraction - Expert",B_GetLearnCostTalent(other,NPC_TALENT_OREMASTER,ORMASTERY_3)),dia_grimes_teach_ore_ormastery_3);
	};
};

func void dia_grimes_teach_ore_back()
{
	Info_ClearChoices(dia_grimes_teach_ore);
};

func void dia_grimes_teach_ore_ormastery_1()
{
	AI_Output(other,self,"DIA_Addon_Cavalorn_TEACH_15_00");	//I want to learn your abilities.
	b_teachplayertalentoremaster(self,other,ORMASTERY_1);
	Info_ClearChoices(dia_grimes_teach_ore);
};

func void dia_grimes_teach_ore_ormastery_2()
{
	AI_Output(other,self,"DIA_Addon_Cavalorn_TEACH_15_00");	//I want to learn your abilities.
	b_teachplayertalentoremaster(self,other,ORMASTERY_2);
	Info_ClearChoices(dia_grimes_teach_ore);
};

func void dia_grimes_teach_ore_ormastery_3()
{
	AI_Output(other,self,"DIA_Addon_Cavalorn_TEACH_15_00");	//I want to learn your abilities.
	b_teachplayertalentoremaster(self,other,ORMASTERY_3);
	Info_ClearChoices(dia_grimes_teach_ore);
};


instance DIA_Grimes_PICKPOCKET(C_Info)
{
	npc = VLK_4111_Grimes;
	nr = 900;
	condition = DIA_Grimes_PICKPOCKET_Condition;
	information = DIA_Grimes_PICKPOCKET_Info;
	permanent = TRUE;
	description = Pickpocket_60;
};


func int DIA_Grimes_PICKPOCKET_Condition()
{
	return C_Beklauen(43,21);
};

func void DIA_Grimes_PICKPOCKET_Info()
{
	Info_ClearChoices(DIA_Grimes_PICKPOCKET);
	Info_AddChoice(DIA_Grimes_PICKPOCKET,Dialog_Back,DIA_Grimes_PICKPOCKET_BACK);
	Info_AddChoice(DIA_Grimes_PICKPOCKET,DIALOG_PICKPOCKET,DIA_Grimes_PICKPOCKET_DoIt);
};

func void DIA_Grimes_PICKPOCKET_DoIt()
{
	B_Beklauen();
	Info_ClearChoices(DIA_Grimes_PICKPOCKET);
};

func void DIA_Grimes_PICKPOCKET_BACK()
{
	Info_ClearChoices(DIA_Grimes_PICKPOCKET);
};

