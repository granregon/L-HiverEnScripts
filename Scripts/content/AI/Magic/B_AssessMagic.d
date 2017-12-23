
func void B_AssessMagic()
{
	if(Npc_GetLastHitSpellCat(self) == SPELL_BAD)
	{
		Npc_SendPassivePerc(self,PERC_ASSESSFIGHTSOUND,self,other);
	};
	if(Npc_GetLastHitSpellID(self) == SPL_Whirlwind)
	{
		Npc_ClearAIQueue(self);
		B_ClearPerceptions(self);
		AI_StartState(self,ZS_Whirlwind,0,"");
		return;
	};
	if(Npc_GetLastHitSpellID(self) == SPL_SuckEnergy)
	{
		Npc_ClearAIQueue(self);
		B_ClearPerceptions(self);
		AI_StartState(self,ZS_SuckEnergy,0,"");
		return;
	};
	if(Npc_GetLastHitSpellID(self) == SPL_GreenTentacle)
	{
		Npc_ClearAIQueue(self);
		B_ClearPerceptions(self);
		AI_StartState(self,ZS_Greententacle,0,"");
		return;
	};
	if(Npc_GetLastHitSpellID(self) == SPL_Swarm)
	{
		Npc_ClearAIQueue(self);
		B_ClearPerceptions(self);
		AI_StartState(self,ZS_Swarm,0,"");
		return;
	};
	if((Npc_GetLastHitSpellID(self) == SPL_IceCube) || (Npc_GetLastHitSpellID(self) == SPL_IceWave))
	{
		Npc_ClearAIQueue(self);
		B_ClearPerceptions(self);
		AI_StartState(self,ZS_MagicFreeze,0,"");
		return;
	};
	if(Npc_GetLastHitSpellID(self) == SPL_ChargeZap)
	{
		Npc_ClearAIQueue(self);
		B_ClearPerceptions(self);
		AI_StartState(self,ZS_ShortZapped,0,"");
		return;
	};
	if(Npc_GetLastHitSpellID(self) == SPL_Fear)
	{
		Npc_ClearAIQueue(self);
		B_ClearPerceptions(self);
		Npc_SetTarget(self,other);
		if((self.guild < GIL_SEPERATOR_HUM) && (self.guild != GIL_KDF) && (self.guild != GIL_PAL))
		{
			AI_StartState(self,ZS_MagicFlee,0,"");
			return;
		}
		else if((self.guild > GIL_SEPERATOR_HUM) && (self.guild != GIL_DRAGON) && (self.guild != GIL_TROLL) && (self.guild != GIL_STONEGOLEM) && (self.guild != GIL_ICEGOLEM) && (self.guild != GIL_FIREGOLEM))
		{
			AI_StartState(self,ZS_MM_Flee,0,"");
			return;
		};
	};
	if(Npc_GetLastHitSpellID(self) == SPL_Firerain)
	{
		Npc_ClearAIQueue(self);
		AI_StartState(self,ZS_MagicBurnShort,0,"");
		return;
	};
};


const func PLAYER_PERC_ASSESSMAGIC = B_AssessMagic;
var int dam_exhaus;
var int damhero_exhaus;

func void b_magic_exhaustion()
{
	DAM_EXHAUS = Hlp_Random(3);
	DAMHERO_EXHAUS = 25 + Hlp_Random(111);
	if((STAT_EXHST >= 900) && (STAT_EXHST < 950) && (DAM_EXHAUS == 1))
	{
		Snd_Play("SVM_2_AARGH");
		Npc_ChangeAttribute(hero,ATR_HITPOINTS,-DAMHERO_EXHAUS);
		AI_PlayAni(hero,"T_BASH");
		AI_Waitms(hero,40);
		AI_PrintScreen(NAME_MAG_EXHAUSDMG_90,-1,40,FONT_ScreenSmall,3);
	}
	else if((STAT_EXHST >= 950) && (STAT_EXHST < 995) && (DAM_EXHAUS == 1))
	{
		Snd_Play("SVM_2_AARGH");
		Npc_ChangeAttribute(hero,ATR_HITPOINTS,-DAMHERO_EXHAUS);
		AI_PlayAni(hero,"T_BASH");
		AI_Waitms(hero,40);
		AI_PrintScreen(NAME_MAG_EXHAUSDMG_95,-1,40,FONT_ScreenSmall,3);
	}
	else if(STAT_EXHST >= 995)
	{
		Snd_Play("SVM_2_AARGH");
		Npc_ChangeAttribute(hero,ATR_HITPOINTS,-7777);
		AI_PrintScreen(NAME_MAG_EXHAUSDMG_100,-1,40,FONT_ScreenSmall,3);
	};
};

func void b_magic_exhaus_invest()
{
	DAMHERO_EXHAUS = 25 + Hlp_Random(111);
	if(STAT_EXHST > 900)
	{
		Snd_Play("SVM_2_AARGH");
		PrintScreen(NAME_MAG_EXHAUSDMG_95,-1,40,FONT_ScreenSmall,3);
		if(self.attribute[ATR_HITPOINTS] > DAMHERO_EXHAUS)
		{
			self.attribute[ATR_HITPOINTS] -= DAMHERO_EXHAUS;
		}
		else
		{
			self.attribute[ATR_HITPOINTS] = 1;
		};
	};
};

func void b_magic_exhaus_trans()
{
	if(STAT_EXHST >= 999)
	{
		Snd_Play("SVM_2_AARGH");
		self.attribute[ATR_HITPOINTS] = 1;
		AI_PrintScreen(NAME_MAG_EXHAUSDMG_95,-1,40,FONT_ScreenSmall,3);
	};
};

