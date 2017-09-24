
const int SPL_Cost_Fear = 50;
const int SPL_TIME_Fear = 5;

instance Spell_Fear(C_Spell_Proto)
{
	time_per_mana = 0;
	damage_per_level = 0;
	targetCollectAlgo = TARGET_COLLECT_NONE;
};


func int Spell_Logic_Fear(var int manaInvested)
{
	if(Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll))
	{
		return SPL_SENDCAST;
	}
	else if(self.attribute[ATR_MANA] >= SPL_Cost_Fear)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_Fear()
{
	if((other.guild != GIL_DRAGON) && (other.aivar[AIV_MM_REAL_ID] != ID_TROLL_BLACK) && (other.aivar[AIV_MM_REAL_ID] == ID_RAVEN) && (other.aivar[AIV_MM_REAL_ID] == ID_AMORT))
	{
		AI_SetNpcsToState(self,ZS_MagicFlee,1000);
	}
	else
	{
		PrintScreen(PRINT_SPELLNOTWORK,-1,40,FONT_ScreenSmall,3);
	};
	if(Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Fear;
	};
	self.aivar[AIV_SelectSpell] += 1;
};

