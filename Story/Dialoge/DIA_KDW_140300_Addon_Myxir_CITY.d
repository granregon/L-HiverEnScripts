
instance DIA_Addon_Myxir_CITY_EXIT(C_Info)
{
	npc = KDW_140300_Addon_Myxir_CITY;
	nr = 999;
	condition = DIA_Addon_Myxir_CITY_EXIT_Condition;
	information = DIA_Addon_Myxir_CITY_EXIT_Info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int DIA_Addon_Myxir_CITY_EXIT_Condition()
{
	return TRUE;
};

func void DIA_Addon_Myxir_CITY_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Addon_Myxir_CITY_HelloCITY(C_Info)
{
	npc = KDW_140300_Addon_Myxir_CITY;
	nr = 5;
	condition = DIA_Addon_Myxir_CITY_HelloCITY_Condition;
	information = DIA_Addon_Myxir_CITY_HelloCITY_Info;
	permanent = TRUE;
	description = "Will you stay in the city now?";
};


func int DIA_Addon_Myxir_CITY_HelloCITY_Condition()
{
	return TRUE;
};


var int DIA_Addon_Myxir_CITY_HelloCITY_OneTime;

func void DIA_Addon_Myxir_CITY_HelloCITY_Info()
{
	AI_Output(other,self,"DIA_Addon_Myxir_CITY_HelloCITY_15_00");	//Will you stay in the city now?
	AI_Output(self,other,"DIA_Addon_Myxir_CITY_HelloCITY_12_01");	//One of us has to be HERE if Vatras leaves the city.
	VatrasAbloeseIstDa = TRUE;
	if((RavenIsDead == TRUE) && (DIA_Addon_Myxir_CITY_HelloCITY_OneTime == FALSE))
	{
		AI_Output(self,other,"DIA_Addon_Myxir_CITY_HelloCITY_12_02");	//One more thing I wanted to say to you.
		AI_Output(self,other,"DIA_Addon_Myxir_CITY_HelloCITY_12_03");	//That really was a heroic feat that you accomplished in Jharkendar.
		AI_Output(other,self,"DIA_Addon_Myxir_CITY_HelloCITY_15_04");	//Unfortunately, I'm still not finished with my tasks here in Khorinis.
		AI_Output(self,other,"DIA_Addon_Myxir_CITY_HelloCITY_12_05");	//True, but I am sure that you will master them as well, Preserver.
		AI_Output(other,self,"DIA_Addon_Myxir_CITY_HelloCITY_15_06");	//We'll see.
		DIA_Addon_Myxir_CITY_HelloCITY_OneTime = TRUE;
		B_GivePlayerXP(XP_Ambient);
	};
};


instance DIA_Addon_Myxir_CITY_Teach(C_Info)
{
	npc = KDW_140300_Addon_Myxir_CITY;
	nr = 90;
	condition = DIA_Addon_Myxir_CITY_Teach_Condition;
	information = DIA_Addon_Myxir_CITY_Teach_Info;
	permanent = TRUE;
	description = "Teach me that language.";
};


var int DIA_Addon_Myxir_CITY_Teach_NoPerm;
var int DIA_Addon_Myxir_CITY_Teach_OneTime;

func int DIA_Addon_Myxir_CITY_Teach_Condition()
{
	if((DIA_Addon_Myxir_CITY_Teach_NoPerm == FALSE) && (DIA_Addon_Myxir_Teach_NoPerm == FALSE) && (DIA_Addon_Myxir_ADW_Teach_NoPerm == FALSE))
	{
		return TRUE;
	};
};

func void DIA_Addon_Myxir_CITY_Teach_Info()
{
	AI_Output(other,self,"DIA_Addon_Myxir_TeachRequest_15_00");	//Teach me that language.
	if(KNOW_FOREIGNLANGUAGE == FALSE)
	{
		b_dia_addon_myxir_teach_fl();
		B_DIA_Addon_Myxir_Teach_LANGUAGE_X();
		AI_PrintScreen("Learn language of the builders",-1,-1,FONT_SCREENBRIGHTLARGE,3);
		Info_ClearChoices(DIA_Addon_Myxir_CITY_Teach);
		KNOW_FOREIGNLANGUAGE = TRUE;
	}
	else
	{
		B_DIA_Addon_Myxir_TeachNoMore();
		DIA_Addon_Myxir_CITY_Teach_NoPerm = TRUE;
	};
};

