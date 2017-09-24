
func void zs_bathtub()
{
	B_ResetAll(self);
	AI_SetWalkMode(self,NPC_WALK);
	if(Wld_IsMobAvailable(self,"BATHTUB"))
	{
		AI_UnequipArmor(self);
		AI_UnequipWeapons(self);
		AI_UseMob(self,"BATHTUB",1);
		Mdl_ApplyRandomAni(self,"S_BATHTUB_S1","T_BATHTUB_RANDOM1");
		Mdl_ApplyRandomAni(self,"S_BATHTUB_S1","T_BATHTUB_RANDOM2");
		Mdl_ApplyRandomAniFreq(self,"S_BATHTUB_S1",3);
	};
};

func void zs_bathtub_loop()
{
};

func void zs_bathtub_end()
{
	AI_UseMob(self,"BATHTUB",-1);
	AI_EquipBestArmor(self);
	AI_EquipBestMeleeWeapon(self);
};

