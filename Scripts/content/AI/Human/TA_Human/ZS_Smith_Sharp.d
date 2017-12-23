
func void ZS_Smith_Sharp()
{
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Bennet))
	{
		if(BENNET_FLAG == 0)
		{
			BENNET_SWORDRAWS = Npc_HasItems(self,ItMiSwordraw);
			BENNET_FLAG = 1;
		};
	}
	else if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Brian))
	{
		if(BRIAN_FLAG == 0)
		{
			BRIAN_SWORDRAWS = Npc_HasItems(self,ItMiSwordraw);
			BRIAN_FLAG = 1;
		};
	}
	else if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Sarah))
	{
		if(SARAH_FLAG == 0)
		{
			SARAH_SWORDRAWS = Npc_HasItems(self,ItMiSwordraw);
			SARAH_FLAG = 1;
		};
	}
	else if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(huno))
	{
		if(HUNO_FLAG == 0)
		{
			HUNO_SWORDRAWS = Npc_HasItems(self,ItMiSwordraw);
			HUNO_FLAG = 1;
		};
	}
	else if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Bennet_DI))
	{
		if(BENNET_DI_FLAG == 0)
		{
			BENNET_DI_SWORDRAWS = Npc_HasItems(self,ItMiSwordraw);
			BENNET_DI_FLAG = 1;
		};
	};
	Perception_Set_Normal();
	B_ResetAll(self);
	AI_SetWalkMode(self,NPC_WALK);
	if(Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == FALSE)
	{
		AI_GotoWP(self,self.wp);
	};
};

func int ZS_Smith_Sharp_Loop()
{
	if(!C_BodyStateContains(self,BS_MOBINTERACT_INTERRUPT) && Wld_IsMobAvailable(self,"BSSHARP"))
	{
		AI_UseMob(self,"BSSHARP",1);
	};
	return LOOP_CONTINUE;
};

func void ZS_Smith_Sharp_End()
{
	AI_UseMob(self,"BSSHARP",-1);
};

