
instance DIA_ROMIL_EXIT(C_Info)
{
	npc = vlk_4173_romil;
	nr = 999;
	condition = dia_romil_exit_condition;
	information = dia_romil_exit_info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int dia_romil_exit_condition()
{
	return TRUE;
};

func void dia_romil_exit_info()
{
	AI_StopProcessInfos(self);
};


instance DIA_ROMIL_TRADE(C_Info)
{
	npc = vlk_4173_romil;
	nr = 99;
	condition = dia_romil_trade_condition;
	information = dia_romil_trade_info;
	permanent = TRUE;
	trade = TRUE;
	description = "Trade.";
};


func int dia_romil_trade_condition()
{
	if(Npc_GetDistToWP(self,"NW_CITY_HABOUR_NTHLH_02") <= 500)
	{
		return TRUE;
	};
};

func void dia_romil_trade_info()
{
	AI_Output(other,self,"DIA_Orlan_TRADE_15_00");	//Show me your wares.
	B_GiveTradeInv(self);
};

