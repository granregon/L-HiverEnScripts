
instance DIA_Addon_Cronos_ADW_EXIT(C_Info)
{
	npc = KDW_14010_Addon_Cronos_ADW;
	nr = 999;
	condition = DIA_Addon_Cronos_ADW_EXIT_Condition;
	information = DIA_Addon_Cronos_ADW_EXIT_Info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int DIA_Addon_Cronos_ADW_EXIT_Condition()
{
	return TRUE;
};

func void DIA_Addon_Cronos_ADW_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Addon_Cronos_ADWHello(C_Info)
{
	npc = KDW_14010_Addon_Cronos_ADW;
	nr = 1;
	condition = DIA_Addon_Cronos_ADWHello_Condition;
	information = DIA_Addon_Cronos_ADWHello_Info;
	important = TRUE;
};


func int DIA_Addon_Cronos_ADWHello_Condition()
{
	if(Npc_IsInState(self,ZS_Talk))
	{
		return TRUE;
	};
};

func void DIA_Addon_Cronos_ADWHello_Info()
{
	AI_Output(self,other,"DIA_Addon_Cronos_ADWHello_04_00");	//Nice to see you. We feared the worst.
	AI_Output(other,self,"DIA_Addon_Cronos_ADWHello_15_01");	//It wasn't all that bad. How's it going?
	AI_Output(self,other,"DIA_Addon_Cronos_ADWHello_04_02");	//This is a very dangerous region here.
	AI_Output(self,other,"DIA_Addon_Cronos_ADWHello_04_03");	//Some of the animals in the area have never been seen by anyone before us.
	AI_Output(self,other,"DIA_Addon_Cronos_ADWHello_04_04");	//Close by there is a large swamp that managed to grow for several hundred years without anyone noticing.
	AI_Output(self,other,"DIA_Addon_Cronos_ADWHello_04_05");	//Not a day goes by that we aren't attacked by the beasts from the swamp.
	AI_Output(self,other,"DIA_Addon_Cronos_ADWHello_04_06");	//I advise you to be careful if you go for a stroll here.
};


instance DIA_Addon_Cronos_WaechterADW(C_Info)
{
	npc = KDW_14010_Addon_Cronos_ADW;
	nr = 5;
	condition = DIA_Addon_Cronos_WaechterADW_Condition;
	information = DIA_Addon_Cronos_WaechterADW_Info;
	description = "Is there anything new about the stone sentinels?";
};


func int DIA_Addon_Cronos_WaechterADW_Condition()
{
	return TRUE;
};

func void DIA_Addon_Cronos_WaechterADW_Info()
{
	AI_Output(other,self,"DIA_Addon_Cronos_WaechterADW_15_00");	//Is there anything new about the stone sentinels?
	AI_Output(self,other,"DIA_Addon_Cronos_WaechterADW_04_01");	//We have already managed to eliminate some of them.
	AI_Output(self,other,"DIA_Addon_Cronos_WaechterADW_04_02");	//They stand there, paralyzed like pillars of salt, and don't budge.
	AI_Output(self,other,"DIA_Addon_Cronos_WaechterADW_04_03");	//But appearances deceive. If you get too close, they'll attack you!
	AI_Output(self,other,"DIA_Addon_Cronos_WaechterADW_04_04");	//There's no doubt that the source of their power can be found here somewhere.
};


instance DIA_Addon_Cronos_ADW_Trade(C_Info)
{
	npc = KDW_14010_Addon_Cronos_ADW;
	nr = 99;
	condition = DIA_Addon_Cronos_ADW_Trade_Condition;
	information = DIA_Addon_Cronos_ADW_Trade_Info;
	trade = TRUE;
	permanent = TRUE;
	description = DIALOG_TRADE_V1;
};


func int DIA_Addon_Cronos_ADW_Trade_Condition()
{
	return TRUE;
};


var int DIA_Addon_Cronos_ADW_Trade_OneTime;

func void DIA_Addon_Cronos_ADW_Trade_Info()
{
	B_GiveTradeInv(self);
	B_Say(other,self,"$TRADE_1");
};


var int cronos_armorperm;

instance DIA_ADDON_CRONOS_ADW_ARMOR(C_Info)
{
	npc = KDW_14010_Addon_Cronos_ADW;
	nr = 98;
	condition = dia_addon_cronos_adw_armor_condition;
	information = dia_addon_cronos_adw_armor_info;
	permanent = TRUE;
	description = "I need a better armor.";
};


func int dia_addon_cronos_adw_armor_condition()
{
	if((hero.guild == GIL_KDF) && (CRONOS_ARMORPERM == FALSE))
	{
		return TRUE;
	};
};

func void dia_addon_cronos_adw_armor_info()
{
	AI_Output(other,self,"DIA_Addon_Huno_Armor_15_00");	//I need better armor.
	Info_AddChoice(dia_addon_cronos_adw_armor,Dialog_Back,dia_addon_cronos_adw_armor_back);
	Info_AddChoice(dia_addon_cronos_adw_armor,"Buy water mage's robe. Protection: B.+40/B.+60/P.+20/Df.+40/M.+80 (3200 gold)",dia_addon_cronos_adw_armor_buy);
};

func void dia_addon_cronos_adw_armor_buy()
{
	if(B_GiveInvItems(other,self,ItMi_Gold,3200))
	{
		AI_Output(other,self,"DIA_Addon_Huno_Armor_Buy_15_00");	//Okay, I'll take the armor.
		AI_Output(self,other,"DIA_Addon_Cronos_NW_Trade_04_01");	//Why not? If I remember correctly, we've already done business.
		CreateInvItems(other,itar_kdw_h,1);
		AI_EquipArmor(other,itar_kdw_h);
		CRONOS_ARMORPERM = TRUE;
	}
	else
	{
		AI_PrintScreen(Print_NotEnoughGold,-1,52,FONT_SCREENBRIGHTLARGE,2);
	};
	Info_ClearChoices(dia_addon_cronos_adw_armor);
};

func void dia_addon_cronos_adw_armor_back()
{
	Info_ClearChoices(dia_addon_cronos_adw_armor);
};

