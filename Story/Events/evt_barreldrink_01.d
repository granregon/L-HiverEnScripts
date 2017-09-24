
func void evt_barreldrink_01()
{
	Npc_ChangeAttribute(hero,ATR_HITPOINTS,5);
	AI_UseMob(hero,"BARRELDRINK",-1);
};

