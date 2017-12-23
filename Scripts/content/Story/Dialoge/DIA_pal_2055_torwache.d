
instance DIA_PAL_2055_TORWACHE_EXIT(C_Info)
{
	npc = pal_2055_torwache;
	nr = 999;
	condition = dia_pal_2055_torwache_exit_condition;
	information = dia_pal_2055_torwache_exit_info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int dia_pal_2055_torwache_exit_condition()
{
	return TRUE;
};

func void dia_pal_2055_torwache_exit_info()
{
	AI_StopProcessInfos(self);
};


const string PAL_2055_CHECKPOINT = "NW_CITY_LHCASTLE_MGATE";

var int pal_2055_schonmalreingelassen;

instance DIA_PAL_2055_TORWACHE_FIRSTWARN(C_Info)
{
	npc = pal_2055_torwache;
	nr = 1;
	condition = dia_pal_2055_torwache_firstwarn_condition;
	information = dia_pal_2055_torwache_firstwarn_info;
	permanent = TRUE;
	important = TRUE;
};


func int dia_pal_2055_torwache_firstwarn_condition()
{
	if(Npc_GetDistToWP(other,PAL_2055_CHECKPOINT) <= 100)
	{
		Npc_SetRefuseTalk(self,5);
		return FALSE;
	};
	if((B_GetGreatestPetzCrime(self) >= CRIME_ATTACK) && (PAL_2055_SCHONMALREINGELASSEN == TRUE))
	{
		self.aivar[AIV_PASSGATE] = FALSE;
	}
	else if(PAL_2055_SCHONMALREINGELASSEN == TRUE)
	{
		self.aivar[AIV_PASSGATE] = TRUE;
	};
	if((self.aivar[AIV_Guardpassage_Status] == GP_NONE) && (self.aivar[AIV_PASSGATE] == FALSE) && (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == TRUE) && (Npc_RefuseTalk(self) == FALSE))
	{
		return TRUE;
	};
};

func void dia_pal_2055_torwache_firstwarn_info()
{
	AI_Output(self,other,"DIA_PAL_205_Torwache_FirstWarn_12_00");	//HALT!
	if(B_GetGreatestPetzCrime(self) >= CRIME_ATTACK)
	{
		if(B_GetGreatestPetzCrime(self) == CRIME_MURDER)
		{
			AI_Output(self,other,"DIA_PAL_205_Torwache_FirstWarn_12_01");	//I would violate my most sacred duty if I were to grant entrance to a murderer.
		};
		if(B_GetGreatestPetzCrime(self) == CRIME_THEFT)
		{
			AI_Output(self,other,"DIA_PAL_205_Torwache_FirstWarn_12_02");	//You are accused of theft. As long as that is true, you may not enter!
		};
		if(B_GetGreatestPetzCrime(self) == CRIME_ATTACK)
		{
			AI_Output(self,other,"DIA_PAL_205_Torwache_FirstWarn_12_03");	//You are known as a brawler. I shall not let you through.
		};
		AI_Output(self,other,"DIA_PAL_205_Torwache_FirstWarn_12_04");	//Go to Lord Andre and settle the matter!
	}
	else
	{
		AI_Output(self,other,"DIA_PAL_205_Torwache_SecondWarn_12_00");	//If you take one more step forward, by Innos, I shall knock you down!
	};
	other.aivar[AIV_LastDistToWP] = Npc_GetDistToWP(other,PAL_2055_CHECKPOINT);
	self.aivar[AIV_Guardpassage_Status] = GP_FirstWarnGiven;
	PrintScreen("",-1,-1,FONT_Screen,0);
};


instance DIA_PAL_2055_TORWACHE_SECONDWARN(C_Info)
{
	npc = pal_2055_torwache;
	nr = 2;
	condition = dia_pal_2055_torwache_secondwarn_condition;
	information = dia_pal_2055_torwache_secondwarn_info;
	permanent = TRUE;
	important = TRUE;
};


func int dia_pal_2055_torwache_secondwarn_condition()
{
	if((self.aivar[AIV_Guardpassage_Status] == GP_FirstWarnGiven) && (self.aivar[AIV_PASSGATE] == FALSE) && (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == TRUE) && (Npc_GetDistToWP(other,PAL_2055_CHECKPOINT) < (other.aivar[AIV_LastDistToWP] - 50)))
	{
		return TRUE;
	};
};

func void dia_pal_2055_torwache_secondwarn_info()
{
	AI_Output(self,other,"DIA_PAL_205_Torwache_SecondWarn_12_00");	//If you take one more step forward, by Innos, I shall knock you down!
	other.aivar[AIV_LastDistToWP] = Npc_GetDistToWP(other,PAL_2055_CHECKPOINT);
	self.aivar[AIV_Guardpassage_Status] = GP_SecondWarnGiven;
	AI_StopProcessInfos(self);
};


instance DIA_PAL_2055_TORWACHE_ATTACK(C_Info)
{
	npc = pal_2055_torwache;
	nr = 3;
	condition = dia_pal_2055_torwache_attack_condition;
	information = dia_pal_2055_torwache_attack_info;
	permanent = TRUE;
	important = TRUE;
};


func int dia_pal_2055_torwache_attack_condition()
{
	if((self.aivar[AIV_Guardpassage_Status] == GP_SecondWarnGiven) && (self.aivar[AIV_PASSGATE] == FALSE) && (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == TRUE) && (Npc_GetDistToWP(other,PAL_2055_CHECKPOINT) < (other.aivar[AIV_LastDistToWP] - 50)))
	{
		return TRUE;
	};
};

func void dia_pal_2055_torwache_attack_info()
{
	other.aivar[AIV_LastDistToWP] = 0;
	self.aivar[AIV_Guardpassage_Status] = GP_NONE;
	AI_StopProcessInfos(self);
	B_Attack(self,other,AR_GuardStopsIntruder,0);
	B_Attack(torwache2044,hero,AR_NONE,0);
};


instance DIA_PAL_2055_TORWACHE_HAGEN(C_Info)
{
	npc = pal_2055_torwache;
	nr = 2;
	condition = dia_pal_2055_torwache_hagen_condition;
	information = dia_pal_2055_torwache_hagen_info;
	permanent = TRUE;
	description = "I'm back from the Valley of Mines.";
};


func int dia_pal_2055_torwache_hagen_condition()
{
	if(Kapitel == 3)
	{
		return TRUE;
	};
};

func void dia_pal_2055_torwache_hagen_info()
{
	AI_Output(other,self,"DIA_Xardas_BACKFROMOW_15_00");	//I'm back from the Valley of Mines.
	AI_Output(other,self,"DIA_PAL_205_Torwache_Hagen_15_00");	//I need to speak to Lord Hagen!
	AI_Output(self,other,"DIA_PAL_205_Torwache_PassAsMil_12_01");	//All right, you can go in.
	self.aivar[AIV_PASSGATE] = TRUE;
	PAL_2055_SCHONMALREINGELASSEN = TRUE;
	AI_StopProcessInfos(self);
};


instance DIA_PAL_2055_TORWACHE_PASSASMIL(C_Info)
{
	npc = pal_2055_torwache;
	nr = 3;
	condition = dia_pal_2055_torwache_passasmil_condition;
	information = dia_pal_2055_torwache_passasmil_info;
	permanent = TRUE;
	description = "I am a member of the militia.";
};


func int dia_pal_2055_torwache_passasmil_condition()
{
	if((Npc_GetTrueGuild(other) == GIL_MIL) && (PAL_2055_SCHONMALREINGELASSEN == FALSE) && (B_GetGreatestPetzCrime(self) < CRIME_ATTACK))
	{
		return TRUE;
	};
};

func void dia_pal_2055_torwache_passasmil_info()
{
	AI_Output(other,self,"DIA_PAL_205_Torwache_PassAsMil_15_00");	//I am a member of the militia.
	AI_Output(self,other,"DIA_PAL_205_Torwache_PassAsMil_12_01");	//All right, you can go in.
	self.aivar[AIV_PASSGATE] = TRUE;
	PAL_2055_SCHONMALREINGELASSEN = TRUE;
	AI_StopProcessInfos(self);
};


instance DIA_PAL_2055_TORWACHE_PASSASMAGE(C_Info)
{
	npc = pal_2055_torwache;
	nr = 3;
	condition = dia_pal_2055_torwache_passasmage_condition;
	information = dia_pal_2055_torwache_passasmage_info;
	permanent = TRUE;
	description = "I am a Fire Magician.";
};


func int dia_pal_2055_torwache_passasmage_condition()
{
	if((Npc_GetTrueGuild(other) == GIL_KDF) && (PAL_2055_SCHONMALREINGELASSEN == FALSE) && (B_GetGreatestPetzCrime(self) < CRIME_ATTACK))
	{
		return TRUE;
	};
};

func void dia_pal_2055_torwache_passasmage_info()
{
	AI_Output(other,self,"DIA_PAL_205_Torwache_PassAsMage_15_00");	//I am a Fire Magician.
	AI_Output(self,other,"DIA_PAL_205_Torwache_PassAsMage_12_01");	//Yes, of course. Forgive me, Chosen One, but I am only doing my duty.
	self.aivar[AIV_PASSGATE] = TRUE;
	PAL_2055_SCHONMALREINGELASSEN = TRUE;
	AI_StopProcessInfos(self);
};


instance DIA_PAL_2055_TORWACHE_PERM(C_Info)
{
	npc = pal_2055_torwache;
	nr = 2;
	condition = dia_pal_2055_torwache_perm_condition;
	information = dia_pal_2055_torwache_perm_info;
	permanent = TRUE;
	description = "How's duty?";
};


func int dia_pal_2055_torwache_perm_condition()
{
	if((PAL_2055_SCHONMALREINGELASSEN == TRUE) && (B_GetGreatestPetzCrime(self) < CRIME_ATTACK))
	{
		return TRUE;
	};
};

func void dia_pal_2055_torwache_perm_info()
{
	AI_Output(other,self,"DIA_PAL_205_Torwache_PERM_15_00");	//How's duty?
	if((other.guild == GIL_PAL) || (other.guild == GIL_MIL))
	{
		AI_Output(self,other,"DIA_PAL_205_Torwache_PERM_12_01");	//We have everything under control.
	}
	else if(other.guild == GIL_KDF)
	{
		AI_Output(self,other,"DIA_PAL_205_Torwache_PERM_12_02");	//My task fulfills me, Chosen One.
	}
	else if((other.guild == GIL_SLD) || (other.guild == GIL_DJG))
	{
		AI_Output(self,other,"DIA_PAL_205_Torwache_PERM_12_03");	//Go on in and shut up.
	}
	else
	{
		AI_Output(self,other,"DIA_PAL_205_Torwache_PERM_12_04");	//What do you want?
	};
	AI_StopProcessInfos(self);
};

