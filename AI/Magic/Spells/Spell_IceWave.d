
const int SPL_Cost_IceWave = 120;

instance Spell_IceWave(C_Spell_Proto)
{
	time_per_mana = 0;
	damage_per_level = 60;
	targetCollectAlgo = TARGET_COLLECT_NONE;
};


func int Spell_Logic_IceWave(var int manaInvested)
{
	if(Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll))
	{
		return SPL_SENDCAST;
	}
	else if(self.attribute[ATR_MANA] >= SPL_Cost_IceWave)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_IceWave()
{
	if(Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
		if(Npc_IsPlayer(self))
		{
			STAT_EXHST += 300;
			b_magic_exhaustion();
		};
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_IceWave;
		if(Npc_IsPlayer(self))
		{
			STAT_EXHST += 300;
			b_magic_exhaustion();
		};
	};
	self.aivar[AIV_SelectSpell] += 1;
};

