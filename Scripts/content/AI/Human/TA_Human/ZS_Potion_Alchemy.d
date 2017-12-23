
func void ZS_Potion_Alchemy()
{
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Constantino))
	{
		if(CONSTANTINO_FLAG == 0)
		{
			CONSTANTINO_FLASKS = Npc_HasItems(self,ItMi_Flask);
			CONSTANTINO_FLAG = 1;
		};
	}
	else if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Salandril))
	{
		if(SALANDRIL_FLAG == 0)
		{
			SALANDRIL_FLASKS = Npc_HasItems(self,ItMi_Flask);
			SALANDRIL_FLAG = 1;
		};
	}
	else if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Sagitta))
	{
		if(SAGITTA_FLAG == 0)
		{
			SAGITTA_FLASKS = Npc_HasItems(self,ItMi_Flask);
			SAGITTA_FLAG = 1;
		};
	}
	else if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Ignaz))
	{
		if(IGNAZ_FLAG == 0)
		{
			IGNAZ_FLASKS = Npc_HasItems(self,ItMi_Flask);
			IGNAZ_FLAG = 1;
		};
	}
	else if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(lucia))
	{
		if(LUCIA_FLAG == 0)
		{
			LUCIA_FLASKS = Npc_HasItems(self,ItMi_Flask);
			LUCIA_FLAG = 1;
		};
	}
	else if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Samuel))
	{
		if(SAMUEL_FLAG == 0)
		{
			SAMUEL_FLASKS = Npc_HasItems(self,ItMi_Flask);
			SAMUEL_FLAG = 1;
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

func int ZS_Potion_Alchemy_Loop()
{
	if(!C_BodyStateContains(self,BS_MOBINTERACT_INTERRUPT) && Wld_IsMobAvailable(self,"LAB"))
	{
		AI_UseMob(self,"LAB",1);
	};
	return LOOP_CONTINUE;
};

func void ZS_Potion_Alchemy_End()
{
	AI_UseMob(self,"LAB",-1);
};

