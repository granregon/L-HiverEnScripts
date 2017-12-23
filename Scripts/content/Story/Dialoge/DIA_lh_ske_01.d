
instance DIA_LH_SKE_01_HELLO(C_Info)
{
	npc = lh_ske_01;
	nr = 5;
	condition = dia_lh_ske_01_hello_condition;
	information = dia_lh_ske_01_hello_info;
	permanent = FALSE;
	important = TRUE;
};


func int dia_lh_ske_01_hello_condition()
{
	if(Npc_GetDistToWP(self,"LOCATION_19_LH_SECOND_ETAGE3") <= 500)
	{
		return TRUE;
	};
};

func void dia_lh_ske_01_hello_info()
{
	AI_Output(self,other,"DIA_BridgeDementor_19_02");	//You misguided fool! You had no idea who you were up against, and I shall punish you here and now!
	AI_Output(other,self,"DIA_Addon_Cavalorn_Banditen_15_02");	//Eh...
	AI_Output(other,self,"DIA_Addon_Finn_Again_Exit_15_00");	//(appraisingly) Okay...
	Wld_SendTrigger("EVT_AMORT_TRAP_01");
	AMORTBATTLE = TRUE;
	AI_StopProcessInfos(self);
	B_Attack(self,other,AR_SuddenEnemyInferno,1);
};

