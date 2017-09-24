
func void b_sh_blockchance()
{
	SHBLOCKCHANCE = Hlp_Random(100);
	if((SH_B_CHANCE_15 == TRUE) && (SHBLOCKCHANCE >= 85))
	{
		hero.flags = NPC_FLAG_IMMORTAL;
	}
	else if((SH_B_CHANCE_25 == TRUE) && (SHBLOCKCHANCE >= 75))
	{
		hero.flags = NPC_FLAG_IMMORTAL;
	}
	else if((SH_B_CHANCE_35 == TRUE) && (SHBLOCKCHANCE >= 65))
	{
		hero.flags = NPC_FLAG_IMMORTAL;
	}
	else if((SH_B_CHANCE_45 == TRUE) && (SHBLOCKCHANCE >= 55))
	{
		hero.flags = NPC_FLAG_IMMORTAL;
	}
	else if((SH_B_CHANCE_55 == TRUE) && (SHBLOCKCHANCE >= 45))
	{
		hero.flags = NPC_FLAG_IMMORTAL;
	}
	else if((SH_B_CHANCE_65 == TRUE) && (SHBLOCKCHANCE >= 35))
	{
		hero.flags = NPC_FLAG_IMMORTAL;
	}
	else if((SH_B_CHANCE_75 == TRUE) && (SHBLOCKCHANCE >= 25))
	{
		hero.flags = NPC_FLAG_IMMORTAL;
	}
	else
	{
		hero.flags = 0;
	};
};

func void b_sh_blocksnd()
{
	if(SNDLOCK == FALSE)
	{
		Snd_Play("SHIELD_HEAVY");
		SNDLOCK = TRUE;
	};
};

