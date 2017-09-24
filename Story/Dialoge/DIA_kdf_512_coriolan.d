
const string KDF_512_CHECKPOINT = "NW_MONASTERY_NLH_01";

instance DIA_KDF_512_CORIOLAN_FIRSTWARN(C_Info)
{
	npc = kdf_512_coriolan;
	nr = 1;
	condition = dia_kdf_512_coriolan_firstwarn_condition;
	information = dia_kdf_512_coriolan_firstwarn_info;
	permanent = TRUE;
	important = TRUE;
};


func int dia_kdf_512_coriolan_firstwarn_condition()
{
	if((other.guild != GIL_KDF) && (other.guild != GIL_NOV) && (other.guild != GIL_PAL) && (MiltenNW_GivesMonasteryKey == FALSE) && (self.aivar[AIV_Guardpassage_Status] == GP_NONE) && (self.aivar[AIV_PASSGATE] == FALSE) && (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == TRUE))
	{
		return TRUE;
	};
};

func void dia_kdf_512_coriolan_firstwarn_info()
{
	AI_Output(self,other,"DIA_KDF_507_Talamon_FirstWarn_04_00");	//You are not permitted to go farther. Turn back!
	AI_StopProcessInfos(self);
	other.aivar[AIV_LastDistToWP] = Npc_GetDistToWP(other,KDF_512_CHECKPOINT);
	self.aivar[AIV_Guardpassage_Status] = GP_FirstWarnGiven;
};


instance DIA_KDF_512_CORIOLAN_SECONDWARN(C_Info)
{
	npc = kdf_512_coriolan;
	nr = 2;
	condition = dia_kdf_512_coriolan_secondwarn_condition;
	information = dia_kdf_512_coriolan_secondwarn_info;
	permanent = TRUE;
	important = TRUE;
};


func int dia_kdf_512_coriolan_secondwarn_condition()
{
	if((other.guild != GIL_KDF) && (other.guild != GIL_NOV) && (other.guild != GIL_PAL) && (MiltenNW_GivesMonasteryKey == FALSE) && (self.aivar[AIV_Guardpassage_Status] == GP_FirstWarnGiven) && (self.aivar[AIV_PASSGATE] == FALSE) && (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == TRUE) && (Npc_GetDistToWP(other,KDF_512_CHECKPOINT) < (other.aivar[AIV_LastDistToWP] - 50)))
	{
		return TRUE;
	};
};

func void dia_kdf_512_coriolan_secondwarn_info()
{
	AI_Output(self,other,"DIA_KDF_507_Talamon_SecondWarn_04_00");	//Innos will turn his wrath upon you if you do not turn back!
	other.aivar[AIV_LastDistToWP] = Npc_GetDistToWP(other,KDF_512_CHECKPOINT);
	self.aivar[AIV_Guardpassage_Status] = GP_SecondWarnGiven;
	AI_StopProcessInfos(self);
};


instance DIA_KDF_512_CORIOLAN_ATTACK(C_Info)
{
	npc = kdf_512_coriolan;
	nr = 3;
	condition = dia_kdf_512_coriolan_attack_condition;
	information = dia_kdf_512_coriolan_attack_info;
	permanent = TRUE;
	important = TRUE;
};


func int dia_kdf_512_coriolan_attack_condition()
{
	if((other.guild != GIL_KDF) && (other.guild != GIL_NOV) && (other.guild != GIL_PAL) && (MiltenNW_GivesMonasteryKey == FALSE) && (self.aivar[AIV_Guardpassage_Status] == GP_SecondWarnGiven) && (self.aivar[AIV_PASSGATE] == FALSE) && (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == TRUE) && (Npc_GetDistToWP(other,KDF_512_CHECKPOINT) < (other.aivar[AIV_LastDistToWP] - 50)))
	{
		return TRUE;
	};
};

func void dia_kdf_512_coriolan_attack_info()
{
	other.aivar[AIV_LastDistToWP] = 0;
	self.aivar[AIV_Guardpassage_Status] = GP_NONE;
	AI_StopProcessInfos(self);
	B_Attack(self,other,AR_GuardStopsIntruder,1);
};

