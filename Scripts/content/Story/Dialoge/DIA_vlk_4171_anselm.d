
instance DIA_ANSELM_EXIT(C_Info)
{
	npc = vlk_4171_anselm;
	nr = 999;
	condition = dia_anselm_exit_condition;
	information = dia_anselm_exit_info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int dia_anselm_exit_condition()
{
	return TRUE;
};

func void dia_anselm_exit_info()
{
	AI_StopProcessInfos(self);
};


instance DIA_ANSELM_TRADE(C_Info)
{
	npc = vlk_4171_anselm;
	nr = 99;
	condition = dia_anselm_trade_condition;
	information = dia_anselm_trade_info;
	permanent = TRUE;
	trade = TRUE;
	description = "Trade.";
};


func int dia_anselm_trade_condition()
{
	if(Npc_GetDistToWP(self,"NW_CITY_MERCHANT_BKSSTAND") <= 500)
	{
		return TRUE;
	};
};

func void dia_anselm_trade_info()
{
	AI_Output(other,self,"DIA_Orlan_TRADE_15_00");	//Show me your wares.
	B_GiveTradeInv(self);
};

