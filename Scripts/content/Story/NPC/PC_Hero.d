
instance PC_Hero(Npc_Default)
{
	name[0] = "Me";
	guild = GIL_NONE;
	id = 0;
	voice = 15;
	level = 0;
	npcType = npctype_main;
	bodyStateInterruptableOverride = TRUE;
	exp = 0;
	exp_next = 500;
	lp = 0;
	attribute[ATR_STRENGTH] = 10;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 10;
	attribute[ATR_MANA] = 10;
	attribute[ATR_HITPOINTS_MAX] = 100;
	attribute[ATR_HITPOINTS] = 100;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"hum_body_Naked0",9,0,"Hum_Head_Pony",Face_N_Player,0,NO_ARMOR);
	B_SetFightSkills(self,5);
};

