
instance DIA_BDT_10016_ADDON_BANDIT_HELLO(C_Info)
{
	npc = BDT_10016_Addon_Bandit;
	nr = 1;
	condition = dia_bdt_10016_addon_bandit_hello_condition;
	information = dia_bdt_10016_addon_bandit_hello_info;
	important = TRUE;
};


func int dia_bdt_10016_addon_bandit_hello_condition()
{
	if(Npc_GetDistToWP(self,"ADW_SENAT_CAVE_CHAIR") <= 3500)
	{
		return TRUE;
	};
};

func void dia_bdt_10016_addon_bandit_hello_info()
{
	AI_Output(self,other,"DIA_1015_BANDIT_AMBUSH_06_00");	//Hey, haven't I seen your mug before?
	AI_Output(other,self,"DIA_Addon_Finn_ForgetIt_15_00");	//That's none of your business!
	AI_Output(self,other,"DIA_Nagur_Add_08_04");	//Get lost!
	AI_StopProcessInfos(self);
};


instance DIA_BDT_10016_ADDON_BANDIT_END(C_Info)
{
	npc = BDT_10016_Addon_Bandit;
	condition = dia_bdt_10016_addon_bandit_end_condition;
	information = dia_bdt_10016_addon_bandit_end_info;
	permanent = TRUE;
	important = TRUE;
};


func int dia_bdt_10016_addon_bandit_end_condition()
{
	if(Npc_KnowsInfo(other,dia_bdt_10016_addon_bandit_hello) && Npc_IsInState(self,ZS_Talk))
	{
		return TRUE;
	};
};

func void dia_bdt_10016_addon_bandit_end_info()
{
	AI_Output(self,other,"DIA_Wolf_SHIPOFF_08_01");	//Piss off, you bastard.
	AI_StopProcessInfos(self);
};

