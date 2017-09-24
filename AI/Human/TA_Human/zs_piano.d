
func void zs_piano()
{
	Perception_Set_Normal();
	B_ResetAll(self);
	if(!C_BodyStateContains(self,BS_SIT))
	{
		AI_SetWalkMode(self,NPC_WALK);
		if(Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == FALSE)
		{
			AI_GotoWP(self,self.wp);
		};
	};
};

func int zs_piano_loop()
{
	if(!C_BodyStateContains(self,BS_MOBINTERACT_INTERRUPT) && Wld_IsMobAvailable(self,"KLAVIER"))
	{
		AI_UseMob(self,"KLAVIER",1);
	};
	return LOOP_CONTINUE;
};

func void zs_piano_end()
{
	AI_UseMob(self,"KLAVIER",-1);
};

