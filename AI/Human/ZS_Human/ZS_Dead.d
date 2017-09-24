
func void ZS_Dead()
{
	var int swddmg;
	self.aivar[AIV_RANSACKED] = FALSE;
	self.aivar[AIV_PARTYMEMBER] = FALSE;
	B_StopLookAt(self);
	AI_StopPointAt(self);
	if((Npc_IsPlayer(other) || (other.aivar[AIV_PARTYMEMBER] == TRUE)) && (self.aivar[AIV_VictoryXPGiven] == FALSE))
	{
		B_GivePlayerXP(self.level * XP_PER_VICTORY);
		self.aivar[AIV_VictoryXPGiven] = TRUE;
	};
	if(C_IAmCanyonRazor(self) == TRUE)
	{
		CanyonRazorBodyCount = CanyonRazorBodyCount + 1;
		if(MIS_Addon_Greg_ClearCanyon == LOG_Running)
		{
			B_CountCanyonRazor();
		};
	};
	if(self.aivar[AIV_MM_REAL_ID] == ID_SWAMPDRONE)
	{
		swddmg = Hlp_Random(25);
		if(Npc_GetDistToNpc(self,other) <= 50)
		{
			other.attribute[ATR_HITPOINTS] -= swddmg + 150;
			Wld_PlayEffect("SWD_CASTBLEND",other,other,0,0,0,FALSE);
			Snd_Play("SWD_FART_A3");
		}
		else if(Npc_GetDistToNpc(self,other) < 100)
		{
			other.attribute[ATR_HITPOINTS] -= swddmg + 125;
			Wld_PlayEffect("SWD_CASTBLEND",other,other,0,0,0,FALSE);
			Snd_Play("SWD_FART_A3");
		}
		else if(Npc_GetDistToNpc(self,other) < 150)
		{
			other.attribute[ATR_HITPOINTS] -= swddmg + 100;
			Wld_PlayEffect("SWD_CASTBLEND",other,other,0,0,0,FALSE);
			Snd_Play("SWD_FART_A3");
		}
		else if(Npc_GetDistToNpc(self,other) < 200)
		{
			other.attribute[ATR_HITPOINTS] -= swddmg + 75;
			Wld_PlayEffect("SWD_CASTBLEND",other,other,0,0,0,FALSE);
			Snd_Play("SWD_FART_A3");
		}
		else if(Npc_GetDistToNpc(self,other) < 250)
		{
			other.attribute[ATR_HITPOINTS] -= swddmg + 55;
			Wld_PlayEffect("SWD_CASTBLEND",other,other,0,0,0,FALSE);
			Snd_Play("SWD_FART_A3");
		}
		else if(Npc_GetDistToNpc(self,other) < 300)
		{
			other.attribute[ATR_HITPOINTS] -= swddmg + 25;
			Wld_PlayEffect("SWD_CASTBLEND",other,other,0,0,0,FALSE);
			Snd_Play("SWD_FART_A3");
		}
		else if(Npc_GetDistToNpc(self,other) < 350)
		{
			other.attribute[ATR_HITPOINTS] -= swddmg;
			Wld_PlayEffect("SWD_CASTBLEND",other,other,0,0,0,FALSE);
			Snd_Play("SWD_FART_A3");
		};
	};
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(DiegoOW))
	{
		Diego_IsDead = TRUE;
	};
	if((self.guild == GIL_GOBBO) || (self.guild == GIL_GOBBO_SKELETON))
	{
		Npc_RemoveInvItems(self,ItMw_1h_Bau_Mace,Npc_HasItems(self,ItMw_1h_Bau_Mace));
		Npc_RemoveInvItems(self,ItMw_1h_MISC_Sword,Npc_HasItems(self,ItMw_1h_MISC_Sword));
		Npc_RemoveInvItems(self,ItMw_1h_Misc_Axe,Npc_HasItems(self,ItMw_1h_Misc_Axe));
	};
	if(Npc_IsPlayer(other))
	{
		self.aivar[AIV_KilledByPlayer] = TRUE;
		if(C_DropUnconscious())
		{
			MadKillerCount = MadKillerCount + 1;
		};
		if((self.guild == GIL_GIANT_BUG) && (MIS_Fester_KillBugs == LOG_Running))
		{
			Festers_Giant_Bug_Killed = Festers_Giant_Bug_Killed + 1;
		};
		if((Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Swamprat)) && (MIS_KrokoJagd == LOG_Running))
		{
			AlligatorJack_KrokosKilled = AlligatorJack_KrokosKilled + 1;
		};
		if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Ramon))
		{
			Player_HasTalkedToBanditCamp = TRUE;
		};
		if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Franco))
		{
			if(MIS_HlpLogan == LOG_Running)
			{
				MIS_HlpLogan = LOG_OBSOLETE;
			};
			if(MIS_HlpEdgor == LOG_Running)
			{
				MIS_HlpEdgor = LOG_OBSOLETE;
			};
		};
		if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Fortuno))
		{
			Log_SetTopicStatus(Topic_Addon_Fortuno,LOG_OBSOLETE);
		};
	};
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(GoldMinecrawler))
	{
		Minecrawler_Killed += 1;
		if((Minecrawler_Killed > 9) && (Bloodwyn_Spawn == FALSE))
		{
			AI_Teleport(Bloodwyn,"ADW_MINE_TO_MC_03");
			B_StartOtherRoutine(Bloodwyn,"MINE");
			Bloodwyn_Spawn = TRUE;
		};
	};
	if(self.aivar[AIV_MM_REAL_ID] == ID_ORCWARRIOR)
	{
		PCBLOCK = FALSE;
	};
	B_GiveTradeInv(self);
	B_GiveDeathInv(self);
	B_ClearRuneInv(self);
	b_clearsmithinv(self);
	b_clearalchemyinv(self);
	b_clearbonusfoodinv(self);
	B_DeletePetzCrime(self);
	self.aivar[AIV_NpcSawPlayerCommit] = CRIME_NONE;
	AI_UnequipWeapons(self);
	self.aivar[AIV_TAPOSITION] = FALSE;
};

func int ZS_Dead_loop()
{
	if(self.aivar[AIV_TAPOSITION] == FALSE)
	{
		B_DragonKillCounter(self);
		self.aivar[AIV_TAPOSITION] = TRUE;
	};
	return LOOP_CONTINUE;
};

