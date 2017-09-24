
var int swarmdmg;

func void evt_swamp_swarm_01()
{
	SWARMDMG = self.level + Hlp_Random(55);
	AI_PlayAni(self,"T_STAND_2_SWARM_VICTIM_ADD");
	if(Npc_IsPlayer(self))
	{
		PrintScreen(NAME_SPL_SWARMPASS,-1,15,FONT_SCREENBRIGHTLARGE,3);
		AI_Wait(self,4);
		Npc_ChangeAttribute(self,ATR_HITPOINTS,-SWARMDMG);
	};
};

