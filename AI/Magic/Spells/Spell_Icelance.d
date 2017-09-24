
const int SPL_Cost_Icelance = 20;
const int SPL_DAMAGE_Icelance = 140;

instance Spell_Icelance(C_Spell_Proto)
{
	time_per_mana = 0;
	damage_per_level = SPL_DAMAGE_Icelance;
	damagetype = DAM_MAGIC;
};


func int Spell_Logic_Icelance(var int manaInvested)
{
	if(Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll))
	{
		return SPL_SENDCAST;
	}
	else if(self.attribute[ATR_MANA] >= SPL_Cost_Icelance)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_Icelance()
{
	if(Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
		if(Npc_IsPlayer(self))
		{
			STAT_EXHST += 20;
			b_magic_exhaustion();
		};
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Icelance;
		if(Npc_IsPlayer(self))
		{
			STAT_EXHST += 20;
			b_magic_exhaustion();
		};
	};
	self.aivar[AIV_SelectSpell] += 1;
};

