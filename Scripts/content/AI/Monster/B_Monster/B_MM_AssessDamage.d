
func void B_MM_AssessDamage()
{
	var C_Npc MagGol;
	var C_Item OthWeap;
	var int drg_rnd_strf;
	self.aivar[AIV_MM_PRIORITY] = PRIO_ATTACK;
	B_BeliarsWeaponSpecialDamage(other,self);
	if(Npc_HasItems(other,Holy_Hammer_MIS) > 0)
	{
		MagGol = Hlp_GetNpc(MagicGolem);
		Npc_GetInvItem(other,Holy_Hammer_MIS);
		OthWeap = Npc_GetReadiedWeapon(other);
		if((Hlp_GetInstanceID(self) == Hlp_GetInstanceID(MagGol)) && (Hlp_GetInstanceID(OthWeap) == Hlp_GetInstanceID(item)))
		{
			Npc_ChangeAttribute(self,ATR_HITPOINTS,-1000);
			return;
		};
	};
	if((self.guild == GIL_Stoneguardian) && (self.aivar[AIV_EnemyOverride] == TRUE))
	{
		b_awake_stoneguardian(self);
	};
	if((self.guild == GIL_DRAGON) && (Npc_GetDistToNpc(self,other) < 550))
	{
		drg_rnd_strf = Hlp_Random(100);
		if(Hlp_GetInstanceID(other) == Hlp_GetInstanceID(hero))
		{
			if(drg_rnd_strf <= 20)
			{
				AI_PlayAni(self,"T_FISTRUNSTRAFEL");
				AI_TurnToNPC(self,other);
			}
			else if(drg_rnd_strf >= 80)
			{
				AI_PlayAni(self,"T_FISTRUNSTRAFER");
				AI_TurnToNPC(self,other);
			};
		};
		if(Hlp_GetInstanceID(other) != Hlp_GetInstanceID(hero))
		{
			if(drg_rnd_strf <= 5)
			{
				AI_PlayAni(self,"T_FISTRUNSTRAFEL");
				AI_TurnToNPC(self,other);
			}
			else if(drg_rnd_strf >= 95)
			{
				AI_PlayAni(self,"T_FISTRUNSTRAFER");
				AI_TurnToNPC(self,other);
			};
		};
	};
	if(C_PredatorFoundPrey(other,self))
	{
		Npc_ClearAIQueue(self);
		Npc_SetTarget(self,other);
		B_ClearPerceptions(self);
		AI_StartState(self,ZS_MM_Flee,0,"");
		return;
	};
	if(Npc_IsInState(self,ZS_MM_Attack))
	{
		if(Npc_IsPlayer(other) && (self.aivar[AIV_PARTYMEMBER] == TRUE))
		{
			return;
		};
		if((self.aivar[AIV_MM_REAL_ID] == ID_SKELETON) && (other.aivar[AIV_MM_REAL_ID] == ID_SKELETON_MAGE))
		{
			return;
		};
		if(Hlp_GetInstanceID(other) != self.aivar[AIV_LASTTARGET])
		{
			if(self.aivar[AIV_HitByOtherNpc] == Hlp_GetInstanceID(other))
			{
				Npc_SetTarget(self,other);
			}
			else
			{
				self.aivar[AIV_HitByOtherNpc] = Hlp_GetInstanceID(other);
			};
		};
		return;
	};
	Npc_ClearAIQueue(self);
	Npc_SetTarget(self,other);
	B_ClearPerceptions(self);
	AI_StartState(self,ZS_MM_Attack,0,"");
};

