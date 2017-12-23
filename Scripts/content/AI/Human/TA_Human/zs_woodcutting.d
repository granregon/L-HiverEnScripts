
func void zs_woodcutting()
{
	Perception_Set_Normal();
	B_ResetAll(self);
	AI_SetWalkMode(self,NPC_WALK);
	if(Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == FALSE)
	{
		AI_GotoWP(self,self.wp);
	};
};

func int zs_woodcutting_loop()
{
	if(!C_BodyStateContains(self,BS_MOBINTERACT_INTERRUPT) && Wld_IsMobAvailable(self,"WOODCHOPPIN"))
	{
		AI_UseMob(self,"WOODCHOPPIN",1);
	};
	if((Npc_GetStateTime(self) > 15) && C_BodyStateContains(self,BS_MOBINTERACT_INTERRUPT))
	{
		Npc_SetStateTime(self,0);
	};
	return LOOP_CONTINUE;
};

func void zs_woodcutting_end()
{
	AI_UseMob(self,"WOODCHOPPIN",-1);
};

