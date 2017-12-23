
const int SPL_COST_DRAGONFIREBALL = 15;
const int SPL_DAMAGE_DRAGONFIREBALL = 410;

instance SPELL_DRAGONFIREBALL(C_Spell_Proto)
{
	time_per_mana = 0;
	damage_per_level = SPL_DAMAGE_DRAGONFIREBALL;
	damagetype = DAM_FIRE;
};


func int spell_logic_dragonfireball(var int manaInvested)
{
	if(Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll))
	{
		return SPL_SENDCAST;
	}
	else if(self.attribute[ATR_MANA] >= SPL_COST_DRAGONFIREBALL)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void spell_cast_dragonfireball()
{
	if(Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_COST_DRAGONFIREBALL;
	};
	self.aivar[AIV_SelectSpell] += 1;
};

