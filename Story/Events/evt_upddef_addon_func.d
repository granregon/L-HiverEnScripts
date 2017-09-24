
var int activebonus1;
var int activebonus2;
var int wite_winf;
var int asss_winf;

var string screen_wght;
var string screen_wght1;
var string screen_mwght;

func void evt_upddef_addon_func()
{
	if(STAT_EXHST > 1000)
	{
		STAT_EXHST = 1000;
	};
	if(STAT_EXHST < 0)
	{
		STAT_EXHST = 0;
	};
	if((STAT_EXHST >= 500) && (STAT_EXHST < 700) && !C_BodyStateContains(hero,BS_DEAD))
	{
		PrintScreen("M",0,29,FONT_SYMBOLS,2);
	};
	if((STAT_EXHST >= 700) && (STAT_EXHST < 900) && !C_BodyStateContains(hero,BS_DEAD))
	{
		PrintScreen("A",0,29,FONT_SYMBOLS,2);
	};
	if((STAT_EXHST >= 900) && !C_BodyStateContains(hero,BS_DEAD))
	{
		PrintScreen("G",0,29,FONT_SYMBOLS,2);
	};
	if(STAT_THRST > 100)
	{
		STAT_THRST = 100;
	};
	if(STAT_THRST < 0)
	{
		STAT_THRST = 0;
	};
	if((STAT_THRST >= 50) && (STAT_THRST < 70) && !C_BodyStateContains(hero,BS_DEAD))
	{
		PrintScreen("1",0,1,FONT_SYMBOLS,2);
	};
	if((STAT_THRST >= 70) && (STAT_THRST < 90) && !C_BodyStateContains(hero,BS_DEAD))
	{
		PrintScreen("2",0,1,FONT_SYMBOLS,2);
	};
	if((STAT_THRST >= 90) && !C_BodyStateContains(hero,BS_DEAD))
	{
		PrintScreen("3",0,1,FONT_SYMBOLS,2);
	};
	if((STAT_THRST >= 100) && (hero.attribute[ATR_HITPOINTS] > (hero.attribute[ATR_HITPOINTS_MAX] / 5)))
	{
		Npc_ChangeAttribute(hero,ATR_HITPOINTS,-1);
	};
	if(STAT_HANGR > 100)
	{
		STAT_HANGR = 100;
	};
	if(STAT_HANGR < 0)
	{
		STAT_HANGR = 0;
	};
	if((STAT_HANGR >= 50) && (STAT_HANGR < 70) && !C_BodyStateContains(hero,BS_DEAD))
	{
		PrintScreen("4",0,8,FONT_SYMBOLS,2);
	};
	if((STAT_HANGR >= 70) && (STAT_HANGR < 90) && !C_BodyStateContains(hero,BS_DEAD))
	{
		PrintScreen("5",0,8,FONT_SYMBOLS,2);
	};
	if((STAT_HANGR >= 90) && !C_BodyStateContains(hero,BS_DEAD))
	{
		PrintScreen("6",0,8,FONT_SYMBOLS,2);
	};
	if((STAT_HANGR >= 100) && (hero.attribute[ATR_HITPOINTS] > (hero.attribute[ATR_HITPOINTS_MAX] / 5)))
	{
		Npc_ChangeAttribute(hero,ATR_HITPOINTS,-1);
	};
	if(STAT_FTQUE > 200)
	{
		STAT_FTQUE = 200;
	};
	if(STAT_FTQUE < 0)
	{
		STAT_FTQUE = 0;
	};
	if((STAT_FTQUE >= 125) && (STAT_FTQUE < 155) && !C_BodyStateContains(hero,BS_DEAD))
	{
		PrintScreen("7",0,15,FONT_SYMBOLS,2);
	};
	if((STAT_FTQUE >= 155) && (STAT_FTQUE < 185) && !C_BodyStateContains(hero,BS_DEAD))
	{
		PrintScreen("8",0,15,FONT_SYMBOLS,2);
	};
	if((STAT_FTQUE >= 185) && !C_BodyStateContains(hero,BS_DEAD))
	{
		PrintScreen("9",0,15,FONT_SYMBOLS,2);
	};
	if((STAT_FTQUE >= 200) && (hero.attribute[ATR_HITPOINTS] > (hero.attribute[ATR_HITPOINTS_MAX] / 5)))
	{
		Npc_ChangeAttribute(hero,ATR_HITPOINTS,-1);
	};
	if((PASSIVE_HP == TRUE) && (STAT_FTQUE < 200) && (STAT_HANGR < 100) && (STAT_THRST < 100) && (hero.attribute[ATR_HITPOINTS] >= 1) && !C_BodyStateContains(hero,BS_DEAD))
	{
		Npc_ChangeAttribute(hero,ATR_HITPOINTS,1);
	};
	if((PASSIVE_MP == TRUE) && (STAT_FTQUE < 200) && (STAT_HANGR < 100) && (STAT_THRST < 100))
	{
		Npc_ChangeAttribute(hero,ATR_MANA,1);
	};
	if((PASSIVE_ENCHHP >= 1) && (STAT_FTQUE < 200) && (STAT_HANGR < 100) && (STAT_THRST < 100) && (hero.attribute[ATR_HITPOINTS] >= 1) && !C_BodyStateContains(hero,BS_DEAD))
	{
		Npc_ChangeAttribute(hero,ATR_HITPOINTS,1);
	};
	if((PASSIVE_ENCHHP >= 2) && (STAT_FTQUE < 200) && (STAT_HANGR < 100) && (STAT_THRST < 100) && (hero.attribute[ATR_HITPOINTS] >= 1) && !C_BodyStateContains(hero,BS_DEAD))
	{
		Npc_ChangeAttribute(hero,ATR_HITPOINTS,1);
	};
	if((PASSIVE_ENCHMP >= 1) && (STAT_FTQUE < 200) && (STAT_HANGR < 100) && (STAT_THRST < 100))
	{
		Npc_ChangeAttribute(hero,ATR_MANA,1);
	};
	if((PASSIVE_ENCHMP >= 2) && (STAT_FTQUE < 200) && (STAT_HANGR < 100) && (STAT_THRST < 100))
	{
		Npc_ChangeAttribute(hero,ATR_MANA,1);
	};
	if((PASSIVE_ACROBATIC == TRUE) && (PASSIVE_ACROBATIC_ON == FALSE))
	{
		Mdl_ApplyOverlayMds(hero,"Humans_Acrobatic.mds");
		PASSIVE_ACROBATIC_ON = TRUE;
	};
	if((CONSTANTINO_HEAL_TIME > 0) && (hero.attribute[ATR_HITPOINTS] >= 1) && !C_BodyStateContains(hero,BS_DEAD))
	{
		Npc_ChangeAttribute(hero,ATR_HITPOINTS,5);
		CONSTANTINO_HEAL_TIME -= 1;
	};
	if(CONSTANTINO_HEAL_TIME < 0)
	{
		CONSTANTINO_HEAL_TIME = 0;
	};
	if((CONSTANTINO_MANA_TIME > 0) && (hero.attribute[ATR_HITPOINTS] >= 1) && !C_BodyStateContains(hero,BS_DEAD))
	{
		Npc_ChangeAttribute(hero,ATR_MANA,5);
		CONSTANTINO_MANA_TIME -= 1;
	};
	if(CONSTANTINO_MANA_TIME < 0)
	{
		CONSTANTINO_MANA_TIME = 0;
	};
	if(C_BodyStateContains(hero,BS_RUN) && (STAT_THRST < 95) && (STAT_HANGR < 95) && (STAT_FTQUE < 190) && (hero.guild < GIL_SEPERATOR_HUM))
	{
		STAT_ACTBNS += 1;
	};
	if(STAT_ACTBNS > 505)
	{
		STAT_ACTBNS = 0;
		ACTIVEBONUS1 = FALSE;
	};
	if((STAT_ACTBNS >= 500) && (ACTIVEBONUS1 == FALSE))
	{
		PrintScreen(PRINT_ACTBONUS1,-1,50,FONT_ScreenSmall,3);
		PrintScreen(PRINT_ACTBONUS2,-1,53,FONT_SCREENBRIGHTLARGE,3);
		if(ACTIVEBONUS1 == FALSE)
		{
			Npc_ChangeAttribute(hero,ATR_HITPOINTS_MAX,1);
			Npc_ChangeAttribute(hero,ATR_HITPOINTS,1);
			ACTIVEBONUS1 = TRUE;
		};
	};
	if((hero.HitChance[NPC_TALENT_1H] >= 60) || (hero.HitChance[NPC_TALENT_2H] >= 60))
	{
		ORBLIG = 0;
	}
	else if((hero.HitChance[NPC_TALENT_1H] >= 50) || (hero.HitChance[NPC_TALENT_2H] >= 50))
	{
		ORBLIG = 10 + Hlp_Random(10);
	}
	else if((hero.HitChance[NPC_TALENT_1H] >= 40) || (hero.HitChance[NPC_TALENT_2H] >= 40))
	{
		ORBLIG = 20 + Hlp_Random(20);
	}
	else if((hero.HitChance[NPC_TALENT_1H] >= 30) || (hero.HitChance[NPC_TALENT_2H] >= 30))
	{
		ORBLIG = 30 + Hlp_Random(30);
	}
	else if((hero.HitChance[NPC_TALENT_1H] >= 20) || (hero.HitChance[NPC_TALENT_2H] >= 20))
	{
		ORBLIG = 40 + Hlp_Random(40);
	}
	else if((hero.HitChance[NPC_TALENT_1H] >= 10) || (hero.HitChance[NPC_TALENT_2H] >= 10))
	{
		ORBLIG = 50 + Hlp_Random(50);
	}
	else if((hero.HitChance[NPC_TALENT_1H] >= 1) || (hero.HitChance[NPC_TALENT_2H] >= 1))
	{
		ORBLIG = 60 + Hlp_Random(60);
	};
	if((PCBLOCK == TRUE) && c_bodystatecontainsadd(hero,BS_PARADE))
	{
		if(ORBLIG >= 1)
		{
			Npc_ChangeAttribute(hero,ATR_HITPOINTS,-ORBLIG);
			PrintScreen(PRINT_BLOCK_CHANCE,-1,52,FONT_SCREENBRIGHTLARGE,1);
			AI_PlayAni(hero,"T_STUMBLEB");
		};
	};
	if((Npc_GetDistToWP(Sarah,"TAVERN02") >= 450) && !C_BodyStateContains(Sarah,BS_SIT))
	{
		Wld_SendUntrigger("EVT_PIANO_01_TRIGGERLIST");
	};
	if(CurrentLevel == DRAGONISLAND_ZEN)
	{
		if(Npc_IsInFightMode(FireDragonIsland,FMODE_FIST) && (Npc_GetDistToNpc(FireDragonIsland,other) > FIGHT_DIST_DRAGON_MAGIC))
		{
			AI_RemoveWeapon(FireDragonIsland);
		};
		if(Npc_IsInFightMode(UndeadDragon,FMODE_FIST) && (Npc_GetDistToNpc(UndeadDragon,other) > FIGHT_DIST_DRAGON_MAGIC))
		{
			AI_RemoveWeapon(UndeadDragon);
		};
		if((FireDragonIsland.attribute[ATR_HITPOINTS] < FireDragonIsland.attribute[ATR_HITPOINTS_MAX]) && (FireDragonIsland.attribute[ATR_HITPOINTS] > (FireDragonIsland.attribute[ATR_HITPOINTS_MAX] / 10)) && !C_BodyStateContains(FireDragonIsland,BS_DEAD))
		{
			FireDragonIsland.attribute[ATR_HITPOINTS] += 20;
		};
		if((UndeadDragon.attribute[ATR_HITPOINTS] < UndeadDragon.attribute[ATR_HITPOINTS_MAX]) && (UndeadDragon.attribute[ATR_HITPOINTS] > (UndeadDragon.attribute[ATR_HITPOINTS_MAX] / 10)) && !C_BodyStateContains(UndeadDragon,BS_DEAD))
		{
			UndeadDragon.attribute[ATR_HITPOINTS] += 20;
		};
	};
	if(CurrentLevel == OldWorld_Zen)
	{
		if(Npc_IsInFightMode(FireDragon,FMODE_FIST) && (Npc_GetDistToNpc(FireDragon,other) > FIGHT_DIST_DRAGON_MAGIC))
		{
			AI_RemoveWeapon(FireDragon);
		};
		if(Npc_IsInFightMode(IceDragon,FMODE_FIST) && (Npc_GetDistToNpc(IceDragon,other) > FIGHT_DIST_DRAGON_MAGIC))
		{
			AI_RemoveWeapon(IceDragon);
		};
		if(Npc_IsInFightMode(RockDragon,FMODE_FIST) && (Npc_GetDistToNpc(RockDragon,other) > FIGHT_DIST_DRAGON_MAGIC))
		{
			AI_RemoveWeapon(RockDragon);
		};
		if(Npc_IsInFightMode(SwampDragon,FMODE_FIST) && (Npc_GetDistToNpc(SwampDragon,other) > FIGHT_DIST_DRAGON_MAGIC))
		{
			AI_RemoveWeapon(SwampDragon);
		};
		if((FireDragon.attribute[ATR_HITPOINTS] < FireDragon.attribute[ATR_HITPOINTS_MAX]) && (FireDragon.attribute[ATR_HITPOINTS] > (FireDragon.attribute[ATR_HITPOINTS_MAX] / 10)) && !C_BodyStateContains(FireDragon,BS_DEAD))
		{
			FireDragon.attribute[ATR_HITPOINTS] += 20;
		};
		if((IceDragon.attribute[ATR_HITPOINTS] < IceDragon.attribute[ATR_HITPOINTS_MAX]) && (IceDragon.attribute[ATR_HITPOINTS] > (IceDragon.attribute[ATR_HITPOINTS_MAX] / 10)) && !C_BodyStateContains(IceDragon,BS_DEAD))
		{
			IceDragon.attribute[ATR_HITPOINTS] += 20;
		};
		if((RockDragon.attribute[ATR_HITPOINTS] < RockDragon.attribute[ATR_HITPOINTS_MAX]) && (RockDragon.attribute[ATR_HITPOINTS] > (RockDragon.attribute[ATR_HITPOINTS_MAX] / 10)) && !C_BodyStateContains(RockDragon,BS_DEAD))
		{
			RockDragon.attribute[ATR_HITPOINTS] += 20;
		};
		if((SwampDragon.attribute[ATR_HITPOINTS] < SwampDragon.attribute[ATR_HITPOINTS_MAX]) && (SwampDragon.attribute[ATR_HITPOINTS] > (SwampDragon.attribute[ATR_HITPOINTS_MAX] / 10)) && !C_BodyStateContains(SwampDragon,BS_DEAD))
		{
			SwampDragon.attribute[ATR_HITPOINTS] += 20;
		};
	};
	if(DRG_SD == TRUE)
	{
		DRG_SD = FALSE;
	};
	if((Npc_GetDistToNpc(amort,hero) < 5000) && (CurrentLevel == OldWorld_Zen) && (AMORTBATTLE == FALSE))
	{
		amort.attribute[ATR_HITPOINTS] = amort.attribute[ATR_HITPOINTS_MAX];
		AMORTBATTLE_ONETIME = FALSE;
	};
	if((CurrentLevel == NEWWORLD_ZEN) && (trollblack.attribute[ATR_HITPOINTS] < trollblack.attribute[ATR_HITPOINTS_MAX]) && (trollblack.attribute[ATR_HITPOINTS] > (trollblack.attribute[ATR_HITPOINTS_MAX] / 15)) && !C_BodyStateContains(trollblack,BS_DEAD))
	{
		trollblack.attribute[ATR_HITPOINTS] += 10;
	};
	if(CurrentLevel == ADDONWORLD_ZEN)
	{
		if(MIS_Addon_Greg_ClearCanyon == LOG_Running)
		{
			if(((Npc_GetDistToWP(AlligatorJack,"ADW_ENTRANCE_2_PIRATECAMP_13") < 3000) || (Npc_GetDistToWP(AlligatorJack,"ADW_CANYON_PATH_TO_LIBRARY_19") < 3000) || (Npc_GetDistToWP(AlligatorJack,"ADW_CANYON_PATH_TO_MINE2_13") < 3000) || (Npc_GetDistToWP(AlligatorJack,"ADW_CANYON_PATH_TO_BANDITS_27") < 3000)) && !Npc_IsInState(AlligatorJack,ZS_Attack))
			{
				if(C_BodyStateContains(AlligatorJack,BS_RUN))
				{
					Npc_ClearAIQueue(AlligatorJack);
				};
				AI_TurnToNPC(AlligatorJack,hero);
				B_Say(AlligatorJack,AlligatorJack,"DIA_Addon_AlligatorJack_TheHunt_Enough_12_01");
				AlligatorJack.aivar[AIV_PARTYMEMBER] = FALSE;
				B_StartOtherRoutine(AlligatorJack,"START");
			};
			if(((Npc_GetDistToWP(Skip,"ADW_ENTRANCE_2_PIRATECAMP_13") < 3000) || (Npc_GetDistToWP(Skip,"ADW_CANYON_PATH_TO_LIBRARY_19") < 3000) || (Npc_GetDistToWP(Skip,"ADW_CANYON_PATH_TO_MINE2_13") < 3000) || (Npc_GetDistToWP(Skip,"ADW_CANYON_PATH_TO_BANDITS_27") < 3000)) && !Npc_IsInState(Skip,ZS_Attack) && (Skip.aivar[AIV_PARTYMEMBER] == TRUE))
			{
				if(C_BodyStateContains(Skip,BS_RUN))
				{
					Npc_ClearAIQueue(Skip);
				};
				AI_TurnToNPC(Skip,hero);
				B_Say(Skip,Skip,"DIA_Addon_Skip_TooFar_08_03");
				Skip.aivar[AIV_PARTYMEMBER] = FALSE;
				B_StartOtherRoutine(Skip,"START");
			};
			if(((Npc_GetDistToWP(Matt,"ADW_ENTRANCE_2_PIRATECAMP_13") < 3000) || (Npc_GetDistToWP(Matt,"ADW_CANYON_PATH_TO_LIBRARY_19") < 3000) || (Npc_GetDistToWP(Matt,"ADW_CANYON_PATH_TO_MINE2_13") < 3000) || (Npc_GetDistToWP(Matt,"ADW_CANYON_PATH_TO_BANDITS_27") < 3000)) && !Npc_IsInState(Matt,ZS_Attack) && (Matt.aivar[AIV_PARTYMEMBER] == TRUE))
			{
				if(C_BodyStateContains(Matt,BS_RUN))
				{
					Npc_ClearAIQueue(Matt);
				};
				AI_TurnToNPC(Matt,hero);
				B_Say(Matt,Matt,"DIA_Addon_Matt_TooFar_10_02");
				Matt.aivar[AIV_PARTYMEMBER] = FALSE;
				B_StartOtherRoutine(Matt,"START");
			};
			if(((Npc_GetDistToWP(Brandon,"ADW_ENTRANCE_2_PIRATECAMP_13") < 3000) || (Npc_GetDistToWP(Brandon,"ADW_CANYON_PATH_TO_LIBRARY_19") < 3000) || (Npc_GetDistToWP(Brandon,"ADW_CANYON_PATH_TO_MINE2_13") < 3000) || (Npc_GetDistToWP(Brandon,"ADW_CANYON_PATH_TO_BANDITS_27") < 3000)) && !Npc_IsInState(Brandon,ZS_Attack) && (Brandon.aivar[AIV_PARTYMEMBER] == TRUE))
			{
				if(C_BodyStateContains(Brandon,BS_RUN))
				{
					Npc_ClearAIQueue(Brandon);
				};
				AI_TurnToNPC(Brandon,hero);
				B_Say(Brandon,Brandon,"DIA_Addon_Brandon_TooFar_04_02");
				Brandon.aivar[AIV_PARTYMEMBER] = FALSE;
				B_StartOtherRoutine(Brandon,"START");
			};
			if(((Npc_GetDistToWP(RoastPirate,"ADW_ENTRANCE_2_PIRATECAMP_13") < 3000) || (Npc_GetDistToWP(RoastPirate,"ADW_CANYON_PATH_TO_LIBRARY_19") < 3000) || (Npc_GetDistToWP(RoastPirate,"ADW_CANYON_PATH_TO_MINE2_13") < 3000) || (Npc_GetDistToWP(RoastPirate,"ADW_CANYON_PATH_TO_BANDITS_27") < 3000)) && !Npc_IsInState(RoastPirate,ZS_Attack) && (RoastPirate.aivar[AIV_PARTYMEMBER] == TRUE))
			{
				if(C_BodyStateContains(RoastPirate,BS_RUN))
				{
					Npc_ClearAIQueue(RoastPirate);
				};
				AI_TurnToNPC(RoastPirate,hero);
				B_Say(RoastPirate,RoastPirate,"$RUNAWAY");
				RoastPirate.aivar[AIV_PARTYMEMBER] = FALSE;
				B_StartOtherRoutine(RoastPirate,"START");
			};
			if(((Npc_GetDistToWP(BenchPirate,"ADW_ENTRANCE_2_PIRATECAMP_13") < 3000) || (Npc_GetDistToWP(BenchPirate,"ADW_CANYON_PATH_TO_LIBRARY_19") < 3000) || (Npc_GetDistToWP(BenchPirate,"ADW_CANYON_PATH_TO_MINE2_13") < 3000) || (Npc_GetDistToWP(BenchPirate,"ADW_CANYON_PATH_TO_BANDITS_27") < 3000)) && !Npc_IsInState(BenchPirate,ZS_Attack) && (BenchPirate.aivar[AIV_PARTYMEMBER] == TRUE))
			{
				if(C_BodyStateContains(BenchPirate,BS_RUN))
				{
					Npc_ClearAIQueue(BenchPirate);
				};
				AI_TurnToNPC(BenchPirate,hero);
				B_Say(BenchPirate,BenchPirate,"$RUNAWAY");
				BenchPirate.aivar[AIV_PARTYMEMBER] = FALSE;
				B_StartOtherRoutine(BenchPirate,"START");
			};
		};
	};
	if(Npc_IsPlayer(hero))
	{
		MAXM_WGHT = 27 + (ADD_WGHT * 1) + (hero.level / 2) + (hero.attribute[ATR_STRENGTH] / 3);
		REAL_WGHT = (WGHT_MWPN + WGHT_RWPN + WGHT_ARMR + WGHT_MISC + WGHT_PLNT + WGHT_POTN + WGHT_FOOD + WGHT_WRTN + WGHT_RNEN + WGHT_SCRT + WGHT_SCRL + WGHT_TRPH + WGHT_RIAM) / 1000;
		WGHT_MWPN = 0 + (Npc_HasItems(hero,ItMw_1h_Vlk_Dagger) * 700) + (Npc_HasItems(hero,itmw_1h_assn_dagger) * 900) + (Npc_HasItems(hero,ItMw_1H_Mace_L_01) * 1100) + (Npc_HasItems(hero,ItMw_1h_Bau_Axe) * 900) + (Npc_HasItems(hero,ItMw_1h_Vlk_Mace) * 1000) + (Npc_HasItems(hero,ItMw_1H_Mace_L_03) * 1100) + (Npc_HasItems(hero,ItMw_1h_Bau_Mace) * 1500) + (Npc_HasItems(hero,ItMw_1h_Vlk_Axe) * 1600) + (Npc_HasItems(hero,ItMw_1H_Mace_L_04) * 2100) + (Npc_HasItems(hero,ItMw_ShortSword1) * 1200) + (Npc_HasItems(hero,ItMw_Nagelknueppel) * 1400) + (Npc_HasItems(hero,ItMw_1H_Sword_L_03) * 800) + (Npc_HasItems(hero,ItMw_ShortSword2) * 1200) + (Npc_HasItems(hero,ItMw_Sense) * 1100) + (Npc_HasItems(hero,ItMw_1h_Vlk_Sword) * 900) + (Npc_HasItems(hero,ItMw_1h_Nov_Mace) * 1700) + (Npc_HasItems(hero,ItMw_2h_Bau_Axe) * 2100) + (Npc_HasItems(hero,ItMw_2H_Axe_L_01) * 2300) + (Npc_HasItems(hero,ItMw_1h_MISC_Sword) * 1400) + (Npc_HasItems(hero,ItMw_1h_Misc_Axe) * 2600) + (Npc_HasItems(hero,ItMw_2H_Sword_M_01) * 2200) + (Npc_HasItems(hero,ItMw_1h_Mil_Sword) * 1500) + (Npc_HasItems(hero,ItMw_1h_Sld_Axe) * 1500) + (Npc_HasItems(hero,ItMw_1h_Sld_Sword) * 1500) + (Npc_HasItems(hero,ItMw_2h_Sld_Axe) * 3000) + (Npc_HasItems(hero,ItMw_2h_Sld_Sword) * 3100) + (Npc_HasItems(hero,ItMw_1h_Pal_Sword) * 1300) + (Npc_HasItems(hero,ItMw_2h_Pal_Sword) * 2200) + (Npc_HasItems(hero,ItMw_2H_OrcAxe_01) * 3700) + (Npc_HasItems(hero,ItMw_2H_OrcAxe_02) * 3900) + (Npc_HasItems(hero,ItMw_2H_OrcAxe_03) * 3800) + (Npc_HasItems(hero,ItMw_2H_OrcAxe_04) * 4000) + (Npc_HasItems(hero,ItMw_2H_OrcSword_01) * 6700) + (Npc_HasItems(hero,itmw_2h_orcmace_02) * 5500) + (Npc_HasItems(hero,ItMw_2H_OrcSword_02) * 6700) + (Npc_HasItems(hero,ItMw_ShortSword3) * 1200) + (Npc_HasItems(hero,ItMw_Nagelkeule) * 1500) + (Npc_HasItems(hero,ItMw_ShortSword4) * 1100) + (Npc_HasItems(hero,ItMw_Kriegskeule) * 1900) + (Npc_HasItems(hero,ItMw_Richtstab) * 2500) + (Npc_HasItems(hero,ItMw_ShortSword5) * 1200) + (Npc_HasItems(hero,ItMw_Kriegshammer1) * 2300) + (Npc_HasItems(hero,itmw_jbhammer) * 8500) + (Npc_HasItems(hero,ItMw_Hellebarde) * 3000) + (Npc_HasItems(hero,ItMw_Nagelkeule2) * 1900) + (Npc_HasItems(hero,ItMw_Schiffsaxt) * 1800) + (Npc_HasItems(hero,ItMw_Piratensaebel) * 1400) + (Npc_HasItems(hero,ItMw_Schwert) * 1500) + (Npc_HasItems(hero,ItMw_1H_Common_01) * 1500) + (Npc_HasItems(hero,ItMw_Stabkeule) * 2500) + (Npc_HasItems(hero,ItMw_Zweihaender1) * 2200) + (Npc_HasItems(hero,ItMw_Steinbrecher) * 1900) + (Npc_HasItems(hero,ItMw_Spicker) * 1800) + (Npc_HasItems(hero,ItMw_Streitaxt1) * 2300) + (Npc_HasItems(hero,ItMw_Schwert1) * 1400) + (Npc_HasItems(hero,ItMw_Schwert2) * 1600) + (Npc_HasItems(hero,ItMw_Doppelaxt) * 2100) + (Npc_HasItems(hero,ItMw_Bartaxt) * 2200) + (Npc_HasItems(hero,ItMw_Morgenstern) * 2000) + (Npc_HasItems(hero,ItMw_Schwert3) * 1600) + (Npc_HasItems(hero,ItMw_Schwert4) * 1500) + (Npc_HasItems(hero,ItMw_1H_Special_01) * 1400) + (Npc_HasItems(hero,itmw_1h_special_01_ns) * 1400) + (Npc_HasItems(hero,ItMw_2H_Special_01) * 2100) + (Npc_HasItems(hero,itmw_2h_special_01_ns) * 2100) + (Npc_HasItems(hero,ItMw_Rapier) * 1300) + (Npc_HasItems(hero,ItMw_Rubinklinge) * 1400) + (Npc_HasItems(hero,ItMw_Streitkolben) * 1800) + (Npc_HasItems(hero,ItMw_Zweihaender2) * 2400) + (Npc_HasItems(hero,ItMw_Runenschwert) * 1500) + (Npc_HasItems(hero,ItMw_Rabenschnabel) * 2100) + (Npc_HasItems(hero,ItMw_Schwert5) * 1700) + (Npc_HasItems(hero,ItMw_Inquisitor) * 2000) + (Npc_HasItems(hero,ItMw_Streitaxt2) * 3500) + (Npc_HasItems(hero,ItMw_Zweihaender3) * 2800) + (Npc_HasItems(hero,ItMw_1H_Special_02) * 1600) + (Npc_HasItems(hero,itmw_1h_special_02_ns) * 1600) + (Npc_HasItems(hero,ItMw_2H_Special_02) * 3300) + (Npc_HasItems(hero,itmw_2h_special_02_ns) * 3300) + (Npc_HasItems(hero,ItMw_ElBastardo) * 1700) + (Npc_HasItems(hero,ItMw_Kriegshammer2) * 2400) + (Npc_HasItems(hero,ItMw_Meisterdegen) * 1000) + (Npc_HasItems(hero,ItMw_Folteraxt) * 2100) + (Npc_HasItems(hero,ItMw_Orkschlaechter) * 2100) + (Npc_HasItems(hero,ItMw_Zweihaender4) * 3400) + (Npc_HasItems(hero,ItMw_Schlachtaxt) * 3400) + (Npc_HasItems(hero,ItMw_Krummschwert) * 3900) + (Npc_HasItems(hero,ItMw_Barbarenstreitaxt) * 3800) + (Npc_HasItems(hero,ItMw_Sturmbringer) * 2500) + (Npc_HasItems(hero,itmw_1h_deathbringer) * 2300) + (Npc_HasItems(hero,itmw_1h_deathbringer_ns) * 2300) + (Npc_HasItems(hero,itmw_2h_deathbringer) * 5100) + (Npc_HasItems(hero,itmw_2h_deathbringer_ns) * 5100) + (Npc_HasItems(hero,ItMw_1H_Special_03) * 2000) + (Npc_HasItems(hero,itmw_1h_special_03_ns) * 2000) + (Npc_HasItems(hero,ItMw_2H_Special_03) * 4500) + (Npc_HasItems(hero,itmw_2h_special_03_ns) * 4500) + (Npc_HasItems(hero,ItMw_Berserkeraxt) * 6500) + (Npc_HasItems(hero,ItMw_Drachenschneide) * 2800) + (Npc_HasItems(hero,ItMw_1H_Special_04) * 2500) + (Npc_HasItems(hero,itmw_1h_special_04_ns) * 2500) + (Npc_HasItems(hero,ItMw_2H_Special_04) * 6500) + (Npc_HasItems(hero,itmw_2h_special_04_ns) * 6500) + (Npc_HasItems(hero,ItMw_1H_Blessed_01) * 2000) + (Npc_HasItems(hero,ItMw_1H_Blessed_02) * 2000) + (Npc_HasItems(hero,ItMw_1H_Blessed_03) * 2000) + (Npc_HasItems(hero,ItMw_2H_Blessed_01) * 3500) + (Npc_HasItems(hero,ItMw_2H_Blessed_02) * 3500) + (Npc_HasItems(hero,ItMw_2H_Blessed_03) * 3500) + (Npc_HasItems(hero,itmw_flameberge) * 5500) + (Npc_HasItems(hero,itmw_flameberge_grd1) * 6500) + (Npc_HasItems(hero,itmw_flameberge_grd2) * 7000) + (Npc_HasItems(hero,itmw_flameberge_grd3) * 7500) + (Npc_HasItems(hero,itmw_flameberge_ns) * 5500) + (Npc_HasItems(hero,itmw_claymore) * 3000) + (Npc_HasItems(hero,itmw_claymore_ns) * 3000) + (Npc_HasItems(hero,itmw_2hfinesword) * 3400) + (Npc_HasItems(hero,itmw_2hfinesword_ns) * 3400) + (Npc_HasItems(hero,itmw_1hfinesword) * 2100) + (Npc_HasItems(hero,itmw_1hfinesword_ns) * 2100) + (Npc_HasItems(hero,itmw_demonslayer) * 4100) + (Npc_HasItems(hero,itmw_demonslayer_ns) * 4100) + (Npc_HasItems(hero,itmw_firstblade) * 1400) + (Npc_HasItems(hero,itmw_firstblade_ns) * 1400) + (Npc_HasItems(hero,itmw_firstblade2h) * 2400) + (Npc_HasItems(hero,itmw_firstblade2h_ns) * 2400) + (Npc_HasItems(hero,itmw_finebastard) * 1800) + (Npc_HasItems(hero,itmw_finebastard_ns) * 1800) + (Npc_HasItems(hero,itmw_glamdring) * 1500) + (Npc_HasItems(hero,itmw_anduril) * 1600) + (Npc_HasItems(hero,itmw_anduril_grd1) * 2000) + (Npc_HasItems(hero,itmw_anduril_grd2) * 2200) + (Npc_HasItems(hero,itmw_anduril_grd3) * 2500) + (Npc_HasItems(hero,itmw_anduril_ns) * 1600) + (Npc_HasItems(hero,itmw_katana) * 1500) + (Npc_HasItems(hero,itmw_sot) * 1700) + (Npc_HasItems(hero,itmw_sot_ns) * 1700);
		WGHT_RWPN = 0 + (Npc_HasItems(hero,ItRw_Mil_Crossbow) * 1500) + (Npc_HasItems(hero,ItRw_Sld_Bow) * 2000) + (Npc_HasItems(hero,ItRw_Bow_L_01) * 1000) + (Npc_HasItems(hero,ItRw_Bow_L_02) * 1000) + (Npc_HasItems(hero,ItRw_Bow_L_03) * 2000) + (Npc_HasItems(hero,ItRw_Bow_L_04) * 2000) + (Npc_HasItems(hero,ItRw_Bow_M_01) * 2000) + (Npc_HasItems(hero,ItRw_Bow_M_02) * 2000) + (Npc_HasItems(hero,ItRw_Bow_M_03) * 2000) + (Npc_HasItems(hero,ItRw_Bow_M_04) * 2000) + (Npc_HasItems(hero,ItRw_Bow_H_01) * 2000) + (Npc_HasItems(hero,ItRw_Bow_H_02) * 2000) + (Npc_HasItems(hero,ItRw_Bow_H_03) * 2000) + (Npc_HasItems(hero,ItRw_Bow_H_04) * 2000) + (Npc_HasItems(hero,itrw_bow_d_r2) * 1700) + (Npc_HasItems(hero,itrw_bow_long_arabic) * 1900) + (Npc_HasItems(hero,itrw_bow_r2_sld) * 3000) + (Npc_HasItems(hero,itrw_g4_oak_bow_01) * 2800) + (Npc_HasItems(hero,itrw_bow_r2_cobra) * 8500) + (Npc_HasItems(hero,itrw_wolf) * 2200) + (Npc_HasItems(hero,ItRw_Crossbow_L_01) * 1500) + (Npc_HasItems(hero,ItRw_Crossbow_L_02) * 1500) + (Npc_HasItems(hero,ItRw_Crossbow_M_01) * 2000) + (Npc_HasItems(hero,ItRw_Crossbow_M_02) * 2000) + (Npc_HasItems(hero,ItRw_Crossbow_H_01) * 3000) + (Npc_HasItems(hero,ItRw_Crossbow_H_02) * 3000);
		WGHT_ARMR = 0 + (Npc_HasItems(hero,ITAR_Governor) * 2500) + (Npc_HasItems(hero,ITAR_Judge) * 3000) + (Npc_HasItems(hero,ITAR_Smith) * 1500) + (Npc_HasItems(hero,ITAR_Barkeeper) * 1500) + (Npc_HasItems(hero,ITAR_Vlk_L) * 2500) + (Npc_HasItems(hero,ITAR_Vlk_M) * 2500) + (Npc_HasItems(hero,ITAR_Vlk_H) * 2500) + (Npc_HasItems(hero,ITAR_Mil_L) * 5500) + (Npc_HasItems(hero,ItAr_MIL_M) * 9500) + (Npc_HasItems(hero,ItAr_PAL_M) * 20000) + (Npc_HasItems(hero,ItAr_PAl_H) * 35000) + (Npc_HasItems(hero,itar_pal_hlc) * 33000) + (Npc_HasItems(hero,itar_w2_tknight) * 17500) + (Npc_HasItems(hero,itar_w2_tknight_grd1) * 19000) + (Npc_HasItems(hero,itar_w2_tknight_grd2) * 20500) + (Npc_HasItems(hero,itar_w2_tknight_grd3) * 22000) + (Npc_HasItems(hero,itar_w2_tknight_grd4) * 23500) + (Npc_HasItems(hero,itar_w2_tknight_grd5) * 25000) + (Npc_HasItems(hero,itar_w2_tknight_grd6) * 26500) + (Npc_HasItems(hero,itar_w2_tknight_grd7) * 28000) + (Npc_HasItems(hero,ITAR_Bau_L) * 3000) + (Npc_HasItems(hero,ITAR_Bau_M) * 3000) + (Npc_HasItems(hero,ItAr_Sld_L) * 7500) + (Npc_HasItems(hero,itar_sld_M) * 11500) + (Npc_HasItems(hero,ItAr_Sld_H) * 18500) + (Npc_HasItems(hero,itar_sld_g3_base) * 4000) + (Npc_HasItems(hero,itar_sld_g3_grd1) * 5000) + (Npc_HasItems(hero,itar_sld_g3_grd2) * 6000) + (Npc_HasItems(hero,itar_sld_g3_grd3) * 8500) + (Npc_HasItems(hero,itar_sld_g3_grd4) * 20000) + (Npc_HasItems(hero,itar_sld_g3_grd5) * 22000) + (Npc_HasItems(hero,ITAR_DJG_Crawler) * 19500) + (Npc_HasItems(hero,itar_djg_l) * 9000) + (Npc_HasItems(hero,itar_djg_m) * 14000) + (Npc_HasItems(hero,itar_djg_h) * 19000) + (Npc_HasItems(hero,ItAr_NOV_L) * 3000) + (Npc_HasItems(hero,ItAr_KDF_L) * 3900) + (Npc_HasItems(hero,itar_kdf_l_wh) * 3900) + (Npc_HasItems(hero,ItAr_KDF_H) * 5700) + (Npc_HasItems(hero,itar_kdf_h_wh) * 5700) + (Npc_HasItems(hero,ITAR_Leather_L) * 4000) + (Npc_HasItems(hero,itar_leather_l_grd1) * 4500) + (Npc_HasItems(hero,itar_leather_l_grd2) * 5000) + (Npc_HasItems(hero,itar_leather_l_grd3) * 5500) + (Npc_HasItems(hero,itar_leather_l_grd4) * 6000) + (Npc_HasItems(hero,itar_leather_l_grd5) * 6500) + (Npc_HasItems(hero,ItAr_BDT_M) * 4000) + (Npc_HasItems(hero,ItAr_BDT_H) * 6000) + (Npc_HasItems(hero,ITAR_Diego) * 5000) + (Npc_HasItems(hero,itar_kdw_h) * 5100) + (Npc_HasItems(hero,itar_kdw_h_wh) * 5100) + (Npc_HasItems(hero,ITAR_Prisoner) * 1100) + (Npc_HasItems(hero,itar_oldcamp_guard_l) * 5700) + (Npc_HasItems(hero,itar_oldcamp_guard_m) * 9500) + (Npc_HasItems(hero,itar_oldcamp_guard_h) * 17500) + (Npc_HasItems(hero,ITAR_PIR_L_Addon) * 5000) + (Npc_HasItems(hero,ITAR_PIR_M_Addon) * 6000) + (Npc_HasItems(hero,ITAR_PIR_H_Addon) * 7000) + (Npc_HasItems(hero,ITAR_OreBaron_Addon) * 18000) + (Npc_HasItems(hero,ITAR_RANGER_Addon) * 5900) + (Npc_HasItems(hero,itar_bm_l) * 14000) + (Npc_HasItems(hero,itar_bm_m) * 15000) + (Npc_HasItems(hero,itar_lhbo_addon) * 25000) + (Npc_HasItems(hero,itar_troll_addon) * 4800) + (Npc_HasItems(hero,itar_geralt_addon) * 3600) + (Npc_HasItems(hero,itar_geralt_addon_grd1) * 4500) + (Npc_HasItems(hero,itar_geralt_addon_grd2) * 5500) + (Npc_HasItems(hero,itar_geralt_addon_grd3) * 6500) + (Npc_HasItems(hero,itar_wma_base) * 6000) + (Npc_HasItems(hero,itar_wma_assn) * 8500) + (Npc_HasItems(hero,itar_wma_alhm) * 7500);
		WGHT_MISC = 0 + (Npc_HasItems(hero,ItMi_Stomper) * 2500) + (Npc_HasItems(hero,ItMi_RuneBlank) * 1000) + (Npc_HasItems(hero,ItMi_Pliers) * 1100) + (Npc_HasItems(hero,ItMi_Flask) * 100) + (Npc_HasItems(hero,ItMi_Hammer) * 1200) + (Npc_HasItems(hero,itmi_textile) * 300) + (Npc_HasItems(hero,itmi_leather) * 500) + (Npc_HasItems(hero,itmi_woodbar) * 1000) + (Npc_HasItems(hero,itmi_woodbar_big) * 2000) + (Npc_HasItems(hero,ItMi_Scoop) * 2000) + (Npc_HasItems(hero,ItMi_Pan) * 1000) + (Npc_HasItems(hero,ItMi_Saw) * 700) + (Npc_HasItems(hero,ItMi_Broom) * 1500) + (Npc_HasItems(hero,ItMi_Lute) * 1500) + (Npc_HasItems(hero,ItMi_Brush) * 200) + (Npc_HasItems(hero,ItMi_Pocket) * 500) + (Npc_HasItems(hero,ItMi_Nugget) * 300) + (Npc_HasItems(hero,ItMi_GoldCandleHolder) * 500) + (Npc_HasItems(hero,ItMi_GoldNecklace) * 100) + (Npc_HasItems(hero,ItMi_SilverRing) * 30) + (Npc_HasItems(hero,ItMi_SilverCup) * 300) + (Npc_HasItems(hero,ItMi_SilverPlate) * 200) + (Npc_HasItems(hero,ItMi_GoldPlate) * 200) + (Npc_HasItems(hero,ItMi_GoldCup) * 300) + (Npc_HasItems(hero,ItMi_BloodCup_MIS) * 400) + (Npc_HasItems(hero,ItMi_GoldRing) * 30) + (Npc_HasItems(hero,ItMi_SilverChalice) * 300) + (Npc_HasItems(hero,ItMi_JeweleryChest) * 1000) + (Npc_HasItems(hero,ItMi_GoldChalice) * 300) + (Npc_HasItems(hero,ItMi_GoldChest) * 1000) + (Npc_HasItems(hero,ItMi_InnosStatue) * 1400) + (Npc_HasItems(hero,ItMi_Sextant) * 2000) + (Npc_HasItems(hero,ItMi_SilverCandleHolder) * 500) + (Npc_HasItems(hero,ItMi_SilverNecklace) * 100) + (Npc_HasItems(hero,ItMi_Sulfur) * 80) + (Npc_HasItems(hero,ItMi_Quartz) * 100) + (Npc_HasItems(hero,ItMi_Pitch) * 500) + (Npc_HasItems(hero,ItMi_Rockcrystal) * 100) + (Npc_HasItems(hero,ItMi_Aquamarine) * 100) + (Npc_HasItems(hero,ItMi_HolyWater) * 800) + (Npc_HasItems(hero,ItMi_Coal) * 200) + (Npc_HasItems(hero,ItMi_DarkPearl) * 100) + (Npc_HasItems(hero,itmi_diamond) * 50) + (Npc_HasItems(hero,itmi_dmndfragments_01) * 30) + (Npc_HasItems(hero,itmi_dmnddust_01) * 50) + (Npc_HasItems(hero,itmi_sapphire) * 50) + (Npc_HasItems(hero,itmi_spphrfragments_01) * 30) + (Npc_HasItems(hero,itmi_spphrdust_01) * 50) + (Npc_HasItems(hero,itmi_emerald) * 50) + (Npc_HasItems(hero,itmi_emrldfragments_01) * 30) + (Npc_HasItems(hero,itmi_emrlddust_01) * 50) + (Npc_HasItems(hero,itmi_ruby) * 50) + (Npc_HasItems(hero,itmi_rubfragments_01) * 30) + (Npc_HasItems(hero,itmi_rubdust_01) * 50) + (Npc_HasItems(hero,itmi_topaz) * 50) + (Npc_HasItems(hero,itmi_tpzfragments_01) * 30) + (Npc_HasItems(hero,itmi_tpzdust_01) * 50) + (Npc_HasItems(hero,itmi_amethyst) * 50) + (Npc_HasItems(hero,itmi_amthstfragments_01) * 30) + (Npc_HasItems(hero,itmi_amthstdust_01) * 50) + (Npc_HasItems(hero,itmi_amber) * 50) + (Npc_HasItems(hero,itmi_ambrfragments_01) * 30) + (Npc_HasItems(hero,itmi_ambrdust_01) * 50) + (Npc_HasItems(hero,ItMi_ApfelTabak) * 200) + (Npc_HasItems(hero,ItMi_PilzTabak) * 300) + (Npc_HasItems(hero,ItMi_DoppelTabak) * 300) + (Npc_HasItems(hero,ItMi_Honigtabak) * 300) + (Npc_HasItems(hero,ItMi_SumpfTabak) * 200) + (Npc_HasItems(hero,ItMi_GoldNugget_Addon) * 300) + (Npc_HasItems(hero,itmi_ironnugget_addon) * 400) + (Npc_HasItems(hero,itmi_steelbar) * 1500) + (Npc_HasItems(hero,itmi_magicbar) * 1500) + (Npc_HasItems(hero,ItMi_Addon_WhitePearl) * 100) + (Npc_HasItems(hero,ItMi_BaltramPaket) * 4500) + (Npc_HasItems(hero,ItMi_Packet_Baltram4Skip_Addon) * 3000) + (Npc_HasItems(hero,ItMi_BromorsGeld_Addon) * 400) + (Npc_HasItems(hero,ItSe_ADDON_CavalornsBeutel) * 400) + (Npc_HasItems(hero,ItMi_Skull) * 300) + (Npc_HasItems(hero,ItMi_Addon_Lennar_Paket) * 1000) + (Npc_HasItems(hero,ItMi_Zeitspalt_Addon) * 500);
		WGHT_PLNT = 0 + (Npc_HasItems(hero,ItPl_Weed) * 50) + (Npc_HasItems(hero,ItPl_Beet) * 400) + (Npc_HasItems(hero,ItPl_SwampHerb) * 50) + (Npc_HasItems(hero,ItPl_Mana_Herb_01) * 50) + (Npc_HasItems(hero,ItPl_Mana_Herb_02) * 50) + (Npc_HasItems(hero,ItPl_Mana_Herb_03) * 50) + (Npc_HasItems(hero,ItPl_Health_Herb_01) * 50) + (Npc_HasItems(hero,ItPl_Health_Herb_02) * 50) + (Npc_HasItems(hero,ItPl_Health_Herb_03) * 50) + (Npc_HasItems(hero,ItPl_Dex_Herb_01) * 50) + (Npc_HasItems(hero,ItPl_Strength_Herb_01) * 100) + (Npc_HasItems(hero,ItPl_Speed_Herb_01) * 50) + (Npc_HasItems(hero,ItPl_Mushroom_01) * 100) + (Npc_HasItems(hero,ItPl_Mushroom_02) * 400) + (Npc_HasItems(hero,ItPl_Blueplant) * 100) + (Npc_HasItems(hero,ItPl_Forestberry) * 50) + (Npc_HasItems(hero,0) * 50) + (Npc_HasItems(hero,ItPl_Planeberry) * 50) + (Npc_HasItems(hero,ItPl_Temp_Herb) * 100) + (Npc_HasItems(hero,itpl_gravemoss) * 50) + (Npc_HasItems(hero,ItPl_Perm_Herb) * 50) + (Npc_HasItems(hero,ItMW_Addon_Stab01) * 2000) + (Npc_HasItems(hero,ItMW_Addon_Stab02) * 2000) + (Npc_HasItems(hero,ItMW_Addon_Stab03) * 3000) + (Npc_HasItems(hero,ItMW_Addon_Stab04) * 2000) + (Npc_HasItems(hero,ItMW_Addon_Stab05) * 3000) + (Npc_HasItems(hero,ItMW_Addon_Hacker_1h_01) * 1800) + (Npc_HasItems(hero,ItMW_Addon_Hacker_1h_02) * 1800) + (Npc_HasItems(hero,ItMW_Addon_Hacker_2h_01) * 2800) + (Npc_HasItems(hero,ItMW_Addon_Hacker_2h_02) * 2800) + (Npc_HasItems(hero,ItMW_Addon_Keule_1h_01) * 3000) + (Npc_HasItems(hero,ItMW_Addon_Keule_2h_01) * 4000) + (Npc_HasItems(hero,ItMw_FrancisDagger_Mis) * 500) + (Npc_HasItems(hero,ItMw_RangerStaff_Addon) * 1500) + (Npc_HasItems(hero,ItMw_Addon_PIR2hAxe) * 4000) + (Npc_HasItems(hero,ItMw_Addon_PIR1hAxe) * 1500) + (Npc_HasItems(hero,ItMw_Addon_BanditTrader) * 1000) + (Npc_HasItems(hero,ItRw_Addon_MagicBow) * 2000) + (Npc_HasItems(hero,ItRw_Addon_FireBow) * 2000) + (Npc_HasItems(hero,ItRw_Addon_MagicCrossbow) * 2500) + (Npc_HasItems(hero,ItMw_Addon_Betty) * 1500) + (Npc_HasItems(hero,itmw_flyssa) * 2000);
		WGHT_POTN = 0 + (Npc_HasItems(hero,ItPo_Mana_01) * 250) + (Npc_HasItems(hero,ItPo_Mana_02) * 500) + (Npc_HasItems(hero,ItPo_Mana_03) * 750) + (Npc_HasItems(hero,ItPo_Health_01) * 250) + (Npc_HasItems(hero,ItPo_Health_02) * 500) + (Npc_HasItems(hero,ItPo_Health_03) * 750) + (Npc_HasItems(hero,itpo_bapehbe) * 650) + (Npc_HasItems(hero,itpo_perm_def) * 750) + (Npc_HasItems(hero,ItPo_Perm_STR) * 650) + (Npc_HasItems(hero,ItPo_Perm_DEX) * 650) + (Npc_HasItems(hero,ItPo_Perm_Health) * 650) + (Npc_HasItems(hero,ItPo_Perm_Mana) * 650) + (Npc_HasItems(hero,itpo_perm_mushroommp) * 750) + (Npc_HasItems(hero,ItPo_Speed) * 500) + (Npc_HasItems(hero,ItPo_MegaDrink) * 1000) + (Npc_HasItems(hero,ItPo_Addon_Geist_01) * 650) + (Npc_HasItems(hero,ItPo_Addon_Geist_02) * 650) + (Npc_HasItems(hero,ItPo_Health_Addon_04) * 850) + (Npc_HasItems(hero,ItPo_Mana_Addon_04) * 850) + (Npc_HasItems(hero,itpo_exhaus_01) * 250) + (Npc_HasItems(hero,itpo_exhaus_02) * 500) + (Npc_HasItems(hero,itpo_exhaus_03) * 750) + (Npc_HasItems(hero,itpo_const_heal_01) * 850) + (Npc_HasItems(hero,itpo_const_mana_01) * 850) + (Npc_HasItems(hero,itsh_reinforced_a) * 2500) + (Npc_HasItems(hero,itsh_w2_e4) * 3500) + (Npc_HasItems(hero,itsh_w2_executioner) * 5900) + (Npc_HasItems(hero,itsh_twr_wood_sm) * 7500) + (Npc_HasItems(hero,itsh_twr_war_da) * 11500) + (Npc_HasItems(hero,itsh_wolf_a) * 2500) + (Npc_HasItems(hero,itsh_white_eye_a) * 4000) + (Npc_HasItems(hero,itsh_long_a) * 5500) + (Npc_HasItems(hero,itsh_stalhrim_s_sm) * 8500) + (Npc_HasItems(hero,itsh_stalhrim_b_sm) * 12500) + (Npc_HasItems(hero,itsh_paladin_a) * 4500) + (Npc_HasItems(hero,itsh_g3_01) * 2600) + (Npc_HasItems(hero,itsh_g3_01_old) * 3000) + (Npc_HasItems(hero,itsh_g3_02_v2) * 3100) + (Npc_HasItems(hero,itsh_g3_03) * 3000) + (Npc_HasItems(hero,itsh_w2_e3_redania) * 4500) + (Npc_HasItems(hero,itsh_w2_e1_dethmold) * 6000) + (Npc_HasItems(hero,itsh_g3_04) * 3600) + (Npc_HasItems(hero,itsh_g3_broken) * 2100) + (Npc_HasItems(hero,itsh_sk_iron) * 4000) + (Npc_HasItems(hero,itsh_sm_steel) * 7000) + (Npc_HasItems(hero,itsh_korshan_a) * 6000) + (Npc_HasItems(hero,itsh_r_rune) * 4000) + (Npc_HasItems(hero,itsh_r_round) * 4000) + (Npc_HasItems(hero,itsh_w2_e2_kaedwen) * 2500) + (Npc_HasItems(hero,itsh_knight_ds) * 5000) + (Npc_HasItems(hero,itsh_crest_ds) * 7500) + (Npc_HasItems(hero,itsh_dragon_ds) * 7500) + (Npc_HasItems(hero,itmw_gaddare) * 1600);
		WGHT_FOOD = 0 + (Npc_HasItems(hero,ItFo_Apple) * 250) + (Npc_HasItems(hero,ItFo_Cheese) * 500) + (Npc_HasItems(hero,ItFo_Bacon) * 300) + (Npc_HasItems(hero,ItFo_Bread) * 300) + (Npc_HasItems(hero,ItFo_Fish) * 300) + (Npc_HasItems(hero,ItFoMuttonRaw) * 300) + (Npc_HasItems(hero,ItFoMutton) * 300) + (Npc_HasItems(hero,ItFo_Stew) * 800) + (Npc_HasItems(hero,ItFo_XPStew) * 800) + (Npc_HasItems(hero,ItFo_CoragonsBeer) * 400) + (Npc_HasItems(hero,ItFo_FishSoup) * 750) + (Npc_HasItems(hero,ItFo_Sausage) * 500) + (Npc_HasItems(hero,ItFo_Honey) * 500) + (Npc_HasItems(hero,ItFo_Water) * 500) + (Npc_HasItems(hero,ItFo_Beer) * 400) + (Npc_HasItems(hero,ItFo_Booze) * 750) + (Npc_HasItems(hero,ItFo_Wine) * 750) + (Npc_HasItems(hero,ItFo_Milk) * 900) + (Npc_HasItems(hero,ItFo_Addon_Shellflesh) * 100) + (Npc_HasItems(hero,ItFo_Addon_Rum) * 1000) + (Npc_HasItems(hero,ItFo_Addon_Grog) * 1000) + (Npc_HasItems(hero,ItFo_Addon_LousHammer) * 900) + (Npc_HasItems(hero,ItFo_Addon_SchlafHammer) * 900) + (Npc_HasItems(hero,ItFo_Addon_SchnellerHering) * 900) + (Npc_HasItems(hero,ItFo_Addon_Pfeffer_01) * 150) + (Npc_HasItems(hero,ItFo_Addon_FireStew) * 800) + (Npc_HasItems(hero,ItFo_Addon_Meatsoup) * 700);
		WGHT_WRTN = 0 + (Npc_HasItems(hero,ItWr_EinhandBuch) * 1000) + (Npc_HasItems(hero,ItWr_ZweihandBuch) * 1000) + (Npc_HasItems(hero,itwr_bloodfly_01) * 1000) + (Npc_HasItems(hero,itwr_astronomie) * 1000) + (Npc_HasItems(hero,itwr_kampfkunst) * 1000) + (Npc_HasItems(hero,itwr_smithmasterbook_lvl1) * 1000) + (Npc_HasItems(hero,itwr_smithmasterbook_lvl2) * 1000) + (Npc_HasItems(hero,itwr_smithmasterbook_lvl3) * 1000) + (Npc_HasItems(hero,itwr_jagd_und_beute) * 1000) + (Npc_HasItems(hero,itwr_lehren_der_goetter1) * 1000) + (Npc_HasItems(hero,itwr_lehren_der_goetter2) * 1000) + (Npc_HasItems(hero,itwr_lehren_der_goetter3) * 1000) + (Npc_HasItems(hero,itwr_myrtanas_lyrik) * 1000) + (Npc_HasItems(hero,itwr_das_magische_erz) * 1000) + (Npc_HasItems(hero,itwr_schlacht_um_varant1) * 1000) + (Npc_HasItems(hero,itwr_schlacht_um_varant2) * 1000) + (Npc_HasItems(hero,goettergabe) * 1000) + (Npc_HasItems(hero,geheimnisse_der_zauberei) * 1000) + (Npc_HasItems(hero,machtvolle_kunst) * 1000) + (Npc_HasItems(hero,elementare_arcanei) * 1000) + (Npc_HasItems(hero,wahre_macht) * 1000) + (Npc_HasItems(hero,itwr_perm_pdefmoss) * 1000);
		WGHT_RNEN = 0 + (Npc_HasItems(hero,ItRu_PalLight) * 1000) + (Npc_HasItems(hero,ItRu_PalLightHeal) * 1000) + (Npc_HasItems(hero,ItRu_PalMediumHeal) * 1000) + (Npc_HasItems(hero,ItRu_PalFullHeal) * 1000) + (Npc_HasItems(hero,ItRu_PalHolyBolt) * 1000) + (Npc_HasItems(hero,ItRu_PalRepelEvil) * 1000) + (Npc_HasItems(hero,ItRu_PalDestroyEvil) * 1000) + (Npc_HasItems(hero,ItRu_PalTeleportSecret) * 1000) + (Npc_HasItems(hero,ItRu_TeleportSeaport) * 1000) + (Npc_HasItems(hero,ItRu_TeleportMonastery) * 1000) + (Npc_HasItems(hero,ItRu_TeleportFarm) * 1000) + (Npc_HasItems(hero,ItRu_TeleportXardas) * 1000) + (Npc_HasItems(hero,ItRu_TeleportOWDemonTower) * 1000) + (Npc_HasItems(hero,ItRu_TeleportOC) * 1000) + (Npc_HasItems(hero,ItRu_TeleportTaverne) * 1000) + (Npc_HasItems(hero,ItRu_Light) * 1000) + (Npc_HasItems(hero,ItRu_FireBolt) * 1000) + (Npc_HasItems(hero,ItRu_Zap) * 1000) + (Npc_HasItems(hero,ItRu_LightHeal) * 1000) + (Npc_HasItems(hero,ItRu_SumGobSkel) * 1000) + (Npc_HasItems(hero,ItRu_InstantFireball) * 1000) + (Npc_HasItems(hero,ItRu_Icebolt) * 1000) + (Npc_HasItems(hero,ItRu_SumWolf) * 1000) + (Npc_HasItems(hero,ItRu_Windfist) * 1000) + (Npc_HasItems(hero,ItRu_Sleep) * 1000) + (Npc_HasItems(hero,ItRu_MediumHeal) * 1000) + (Npc_HasItems(hero,ItRu_LightningFlash) * 1000) + (Npc_HasItems(hero,ItRu_ChargeFireball) * 1000) + (Npc_HasItems(hero,ItRu_SumSkel) * 1000) + (Npc_HasItems(hero,ItRu_Fear) * 1000) + (Npc_HasItems(hero,ItRu_IceCube) * 1000) + (Npc_HasItems(hero,ItRu_ThunderBall) * 1000) + (Npc_HasItems(hero,ItRu_SumGol) * 1000) + (Npc_HasItems(hero,ItRu_HarmUndead) * 1000) + (Npc_HasItems(hero,ItRu_Pyrokinesis) * 1000) + (Npc_HasItems(hero,ItRu_Firestorm) * 1000) + (Npc_HasItems(hero,ItRu_IceWave) * 1000) + (Npc_HasItems(hero,ItRu_SumDemon) * 1000) + (Npc_HasItems(hero,ItRu_FullHeal) * 1000) + (Npc_HasItems(hero,ItRu_Firerain) * 1000) + (Npc_HasItems(hero,ItRu_BreathOfDeath) * 1000) + (Npc_HasItems(hero,ItRu_MassDeath) * 1000) + (Npc_HasItems(hero,ItRu_MasterOfDisaster) * 1000) + (Npc_HasItems(hero,ItRu_ArmyOfDarkness) * 1000) + (Npc_HasItems(hero,ItRu_Shrink) * 1000) + (Npc_HasItems(hero,ItRu_Deathbolt) * 1000) + (Npc_HasItems(hero,ItRu_Deathball) * 1000) + (Npc_HasItems(hero,ItRu_Concussionbolt) * 1000) + (Npc_HasItems(hero,ItRu_Thunderstorm) * 1000) + (Npc_HasItems(hero,ItRu_Whirlwind) * 1000) + (Npc_HasItems(hero,ItRu_Geyser) * 1000) + (Npc_HasItems(hero,ItRu_Waterfist) * 1000) + (Npc_HasItems(hero,ItRu_Icelance) * 1000) + (Npc_HasItems(hero,ItRu_BeliarsRage) * 1000) + (Npc_HasItems(hero,ItRu_SuckEnergy) * 1000) + (Npc_HasItems(hero,ItRu_GreenTentacle) * 1000) + (Npc_HasItems(hero,ItRu_Swarm) * 1000) + (Npc_HasItems(hero,ItRu_Skull) * 1000) + (Npc_HasItems(hero,ItRu_SummonZombie) * 1000) + (Npc_HasItems(hero,ItRu_SummonGuardian) * 1000);
		WGHT_SCRT = 0 + (Npc_HasItems(hero,ItSe_ErzFisch) * 500) + (Npc_HasItems(hero,ItSe_GoldFisch) * 500) + (Npc_HasItems(hero,ItSe_Ringfisch) * 500) + (Npc_HasItems(hero,ItSe_LockpickFisch) * 500) + (Npc_HasItems(hero,ItSe_GoldPocket25) * 500) + (Npc_HasItems(hero,ItSe_GoldPocket50) * 500) + (Npc_HasItems(hero,ItSe_GoldPocket100) * 500) + (Npc_HasItems(hero,ItSe_HannasBeutel) * 500) + (Npc_HasItems(hero,itse_mboltpocket25) * 500) + (Npc_HasItems(hero,ItLsTorch) * 500) + (Npc_HasItems(hero,ItMi_Ornament_Addon) * 1500) + (Npc_HasItems(hero,ItMi_Ornament_Addon_Vatras) * 1500) + (Npc_HasItems(hero,ItRi_Ranger_Lares_Addon) * 30) + (Npc_HasItems(hero,ItRi_Ranger_Addon) * 30) + (Npc_HasItems(hero,ItRi_LanceRing) * 30) + (Npc_HasItems(hero,ItMi_PortalRing_Addon) * 4500) + (Npc_HasItems(hero,ItMi_LostInnosStatue_Daron) * 1400) + (Npc_HasItems(hero,ItMi_Rake) * 2000) + (Npc_HasItems(hero,ItRi_Addon_BanditTrader) * 30) + (Npc_HasItems(hero,ItAm_Addon_WispDetector) * 100) + (Npc_HasItems(hero,ItFo_Addon_Krokofleisch_Mission) * 250) + (Npc_HasItems(hero,ItRi_Addon_MorgansRing_Mission) * 30) + (Npc_HasItems(hero,ItMi_Focus) * 1000) + (Npc_HasItems(hero,ItMi_Addon_Steel_Paket) * 9000) + (Npc_HasItems(hero,ItWr_StonePlateCommon_Addon) * 500) + (Npc_HasItems(hero,ItMi_Addon_Stone_01) * 1000) + (Npc_HasItems(hero,ItMi_Addon_Stone_05) * 1000) + (Npc_HasItems(hero,ItMi_Addon_Stone_03) * 1000) + (Npc_HasItems(hero,ItMi_Addon_Stone_04) * 1000) + (Npc_HasItems(hero,ItMi_Addon_Stone_02) * 1000) + (Npc_HasItems(hero,ItSE_Addon_FrancisChest) * 3500) + (Npc_HasItems(hero,ITWR_Addon_FrancisAbrechnung_Mis) * 1000) + (Npc_HasItems(hero,ITWR_Addon_GregsLogbuch_Mis) * 1000) + (Npc_HasItems(hero,ItMi_TempelTorKey) * 500) + (Npc_HasItems(hero,ItMi_Addon_Bloodwyn_Kopf) * 2000) + (Npc_HasItems(hero,ItMi_Addon_GregsTreasureBottle_MIS) * 500) + (Npc_HasItems(hero,itmi_erolskelch) * 300) + (Npc_HasItems(hero,ItMw_2h_Rod) * 6000) + (Npc_HasItems(hero,ItMi_CoragonsSilber) * 300) + (Npc_HasItems(hero,ItMi_TheklasPaket) * 1000) + (Npc_HasItems(hero,ItMi_MariasGoldPlate) * 300) + (Npc_HasItems(hero,ItRi_ValentinosRing) * 30) + (Npc_HasItems(hero,ItMi_HerbPaket) * 1000) + (Npc_HasItems(hero,ItFo_SmellyFish) * 300) + (Npc_HasItems(hero,ItFo_HalvorFish_MIS) * 500) + (Npc_HasItems(hero,ItMw_AlriksSword_Mis) * 1400) + (Npc_HasItems(hero,ItFo_Schafswurst) * 500) + (Npc_HasItems(hero,ItPo_Perm_LittleMana) * 650) + (Npc_HasItems(hero,Holy_Hammer_MIS) * 6500) + (Npc_HasItems(hero,ItRw_Bow_L_03_MIS) * 1000) + (Npc_HasItems(hero,ItRi_Prot_Point_01_MIS) * 30) + (Npc_HasItems(hero,ItWr_Schuldenbuch) * 1000) + (Npc_HasItems(hero,ItPl_Sagitta_Herb_MIS) * 100) + (Npc_HasItems(hero,ItRw_DragomirsArmbrust_MIS) * 1500) + (Npc_HasItems(hero,ItMi_GornsTreasure_MIS) * 500) + (Npc_HasItems(hero,ItAt_ClawLeader) * 250) + (Npc_HasItems(hero,ItSe_Olav) * 500) + (Npc_HasItems(hero,ItRi_Tengron) * 30) + (Npc_HasItems(hero,ItWr_XardasBookForPyrokar_Mis) * 1000) + (Npc_HasItems(hero,ItWr_CorneliusTagebuch_Mis) * 1000) + (Npc_HasItems(hero,ITWR_DementorObsessionBook_MIS) * 1000) + (Npc_HasItems(hero,ItPo_HealHilda_MIS) * 500) + (Npc_HasItems(hero,ItMw_MalethsGehstock_MIS) * 1000) + (Npc_HasItems(hero,ItMi_MalethsBanditGold) * 500) + (Npc_HasItems(hero,ItMi_Moleratlubric_MIS) * 500) + (Npc_HasItems(hero,ItWr_Astronomy_Mis) * 1000) + (Npc_HasItems(hero,ItPo_HealObsession_MIS) * 500) + (Npc_HasItems(hero,ItSe_Golemchest_Mis) * 500) + (Npc_HasItems(hero,ItSe_DiegosTreasure_Mis) * 500) + (Npc_HasItems(hero,ItMi_UltharsHolyWater_Mis) * 800) + (Npc_HasItems(hero,ItAm_Prot_BlackEye_Mis) * 100) + (Npc_HasItems(hero,ItMi_KarrasBlessedStone_Mis) * 100) + (Npc_HasItems(hero,ItWr_VinosKellergeister_Mis) * 1000) + (Npc_HasItems(hero,ItAm_Mana_Angar_MIS) * 100) + (Npc_HasItems(hero,ItMW_1H_FerrosSword_Mis) * 1500) + (Npc_HasItems(hero,ItMi_KerolothsGeldbeutel_MIS) * 500) + (Npc_HasItems(hero,ItMi_KerolothsGeldbeutelLeer_MIS) * 100) + (Npc_HasItems(hero,ItRw_SengrathsArmbrust_MIS) * 1500) + (Npc_HasItems(hero,ItAt_TalbinsLurkerSkin) * 1000) + (Npc_HasItems(hero,ItAt_DragonEgg_MIS) * 2500) + (Npc_HasItems(hero,ItRi_OrcEliteRing) * 80) + (Npc_HasItems(hero,ItPo_DragonEggDrinkNeoras_MIS) * 650) + (Npc_HasItems(hero,ItWr_HallsofIrdorath_Mis) * 1000) + (Npc_HasItems(hero,ItWr_HallsofIrdorath_Open_Mis) * 1000) + (Npc_HasItems(hero,ItWr_XardasSeamapBook_Mis) * 1000) + (Npc_HasItems(hero,ItPo_PotionOfDeath_01_Mis) * 500) + (Npc_HasItems(hero,ItPo_PotionOfDeath_02_Mis) * 500) + (Npc_HasItems(hero,ItAm_AmulettOfDeath_Mis) * 100) + (Npc_HasItems(hero,ItPo_HealRandolph_MIS) * 500) + (Npc_HasItems(hero,ItWr_Diary_BlackNovice_MIS) * 1000);
		WGHT_SCRL = 0 + (Npc_HasItems(hero,ItSc_PalLight) * 100) + (Npc_HasItems(hero,ItSc_PalLightHeal) * 100) + (Npc_HasItems(hero,ItSc_PalHolyBolt) * 100) + (Npc_HasItems(hero,ItSc_PalMediumHeal) * 100) + (Npc_HasItems(hero,ItSc_PalRepelEvil) * 100) + (Npc_HasItems(hero,ItSc_PalFullHeal) * 100) + (Npc_HasItems(hero,ItSc_PalDestroyEvil) * 100) + (Npc_HasItems(hero,ItSc_Light) * 100) + (Npc_HasItems(hero,ItSc_Firebolt) * 100) + (Npc_HasItems(hero,ItSc_Icebolt) * 100) + (Npc_HasItems(hero,ItSc_LightHeal) * 100) + (Npc_HasItems(hero,ItSc_SumGobSkel) * 100) + (Npc_HasItems(hero,ItSc_InstantFireball) * 100) + (Npc_HasItems(hero,ItSc_Zap) * 100) + (Npc_HasItems(hero,ItSc_SumWolf) * 100) + (Npc_HasItems(hero,ItSc_Windfist) * 100) + (Npc_HasItems(hero,ItSc_Sleep) * 100) + (Npc_HasItems(hero,ItSc_Charm) * 100) + (Npc_HasItems(hero,ItSc_MediumHeal) * 100) + (Npc_HasItems(hero,ItSc_LightningFlash) * 100) + (Npc_HasItems(hero,ItSc_ChargeFireBall) * 100) + (Npc_HasItems(hero,ItSc_SumSkel) * 100) + (Npc_HasItems(hero,ItSc_Fear) * 100) + (Npc_HasItems(hero,ItSc_IceCube) * 100) + (Npc_HasItems(hero,ItSc_ThunderBall) * 100) + (Npc_HasItems(hero,ItSc_SumGol) * 100) + (Npc_HasItems(hero,ItSc_HarmUndead) * 100) + (Npc_HasItems(hero,ItSc_Pyrokinesis) * 100) + (Npc_HasItems(hero,ItSc_Firestorm) * 100) + (Npc_HasItems(hero,ItSc_IceWave) * 100) + (Npc_HasItems(hero,ItSc_SumDemon) * 100) + (Npc_HasItems(hero,ItSc_FullHeal) * 100) + (Npc_HasItems(hero,ItSc_Firerain) * 100) + (Npc_HasItems(hero,ItSc_BreathOfDeath) * 100) + (Npc_HasItems(hero,ItSc_MassDeath) * 100) + (Npc_HasItems(hero,ItSc_ArmyOfDarkness) * 100) + (Npc_HasItems(hero,ItSc_Shrink) * 100) + (Npc_HasItems(hero,ItSc_TrfSheep) * 100) + (Npc_HasItems(hero,ItSc_TrfScavenger) * 100) + (Npc_HasItems(hero,ItSc_TrfGiantRat) * 100) + (Npc_HasItems(hero,ItSc_TrfGiantBug) * 100) + (Npc_HasItems(hero,ItSc_TrfWolf) * 100) + (Npc_HasItems(hero,ItSc_TrfWaran) * 100) + (Npc_HasItems(hero,ItSc_TrfSnapper) * 100) + (Npc_HasItems(hero,ItSc_TrfWarg) * 100) + (Npc_HasItems(hero,ItSc_TrfFireWaran) * 100) + (Npc_HasItems(hero,ItSc_TrfLurker) * 100) + (Npc_HasItems(hero,ItSc_TrfShadowbeast) * 100) + (Npc_HasItems(hero,ItSc_TrfDragonSnapper) * 100) + (Npc_HasItems(hero,ItSc_Geyser) * 100) + (Npc_HasItems(hero,ItSc_Icelance) * 100) + (Npc_HasItems(hero,ItSc_Waterfist) * 100) + (Npc_HasItems(hero,ItSc_Thunderstorm) * 100) + (Npc_HasItems(hero,ItSc_Whirlwind) * 100);
		WGHT_TRPH = 0 + (Npc_HasItems(hero,ItAt_Addon_BCKopf) * 2500) + (Npc_HasItems(hero,ItAt_Meatbugflesh) * 100) + (Npc_HasItems(hero,ItAt_SheepFur) * 400) + (Npc_HasItems(hero,ItAt_WolfFur) * 750) + (Npc_HasItems(hero,ItAt_BugMandibles) * 300) + (Npc_HasItems(hero,ItAt_Claw) * 100) + (Npc_HasItems(hero,ItAt_LurkerClaw) * 200) + (Npc_HasItems(hero,ItAt_Teeth) * 100) + (Npc_HasItems(hero,ItAt_CrawlerMandibles) * 1000) + (Npc_HasItems(hero,0) * 0) + (Npc_HasItems(hero,ItAt_Wing) * 50) + (Npc_HasItems(hero,ItAt_Sting) * 200) + (Npc_HasItems(hero,itat_LurkerSkin) * 1000) + (Npc_HasItems(hero,ItAt_WargFur) * 750) + (Npc_HasItems(hero,ItAt_Addon_KeilerFur) * 1000) + (Npc_HasItems(hero,ItAt_DrgSnapperHorn) * 300) + (Npc_HasItems(hero,ItAt_CrawlerPlate) * 2500) + (Npc_HasItems(hero,ItAt_ShadowFur) * 1500) + (Npc_HasItems(hero,ItAt_SharkSkin) * 1000) + (Npc_HasItems(hero,ItAt_TrollFur) * 2000) + (Npc_HasItems(hero,ItAt_TrollBlackFur) * 3000) + (Npc_HasItems(hero,ItAt_WaranFiretongue) * 100) + (Npc_HasItems(hero,ItAt_ShadowHorn) * 500) + (Npc_HasItems(hero,ItAt_SharkTeeth) * 200) + (Npc_HasItems(hero,ItAt_TrollTooth) * 400) + (Npc_HasItems(hero,ItAt_StoneGolemHeart) * 4500) + (Npc_HasItems(hero,ItAt_FireGolemHeart) * 1500) + (Npc_HasItems(hero,ItAt_IceGolemHeart) * 3000) + (Npc_HasItems(hero,ItAt_GoblinBone) * 300) + (Npc_HasItems(hero,ItAt_SkeletonBone) * 500) + (Npc_HasItems(hero,ItAt_DemonHeart) * 650) + (Npc_HasItems(hero,ItAt_UndeadDragonSoulStone) * 5000) + (Npc_HasItems(hero,ItAt_IcedragonHeart) * 6000) + (Npc_HasItems(hero,ItAt_RockdragonHeart) * 8000) + (Npc_HasItems(hero,ItAt_SwampdragonHeart) * 4000) + (Npc_HasItems(hero,ItAt_FiredragonHeart) * 2500) + (Npc_HasItems(hero,ItAt_DragonBlood) * 300) + (Npc_HasItems(hero,ItAt_DragonScale) * 1500);
		WGHT_RIAM = 0 + (Npc_HasItems(hero,ItRi_Prot_Fire_01) * 30) + (Npc_HasItems(hero,ItRi_Prot_Fire_02) * 30) + (Npc_HasItems(hero,ItRi_Prot_Point_01) * 30) + (Npc_HasItems(hero,ItRi_Prot_Point_02) * 30) + (Npc_HasItems(hero,ItRi_Prot_Edge_01) * 30) + (Npc_HasItems(hero,ItRi_Prot_Edge_02) * 30) + (Npc_HasItems(hero,ItRi_Prot_Mage_01) * 30) + (Npc_HasItems(hero,ItRi_Prot_Mage_02) * 30) + (Npc_HasItems(hero,ItRi_Prot_Total_01) * 30) + (Npc_HasItems(hero,ItRi_Prot_Total_02) * 30) + (Npc_HasItems(hero,ItRi_Dex_01) * 30) + (Npc_HasItems(hero,ItRi_Dex_02) * 30) + (Npc_HasItems(hero,ItRi_HP_01) * 30) + (Npc_HasItems(hero,ItRi_Hp_02) * 30) + (Npc_HasItems(hero,ItRi_Str_01) * 30) + (Npc_HasItems(hero,ItRi_Str_02) * 30) + (Npc_HasItems(hero,ItRi_Mana_01) * 30) + (Npc_HasItems(hero,ItRi_Mana_02) * 30) + (Npc_HasItems(hero,ItRi_Hp_Mana_01) * 30) + (Npc_HasItems(hero,ItRi_Dex_Strg_01) * 30) + (Npc_HasItems(hero,ItAm_Prot_Fire_01) * 100) + (Npc_HasItems(hero,ItAm_Prot_Edge_01) * 100) + (Npc_HasItems(hero,ItAm_Prot_Point_01) * 100) + (Npc_HasItems(hero,ItAm_Prot_Mage_01) * 100) + (Npc_HasItems(hero,ItAm_Prot_Total_01) * 100) + (Npc_HasItems(hero,ItAm_Dex_01) * 100) + (Npc_HasItems(hero,ItAm_Strg_01) * 100) + (Npc_HasItems(hero,ItAm_Hp_01) * 100) + (Npc_HasItems(hero,ItAm_Mana_01) * 100) + (Npc_HasItems(hero,ItAm_Dex_Strg_01) * 100) + (Npc_HasItems(hero,ItAm_Hp_Mana_01) * 100) + (Npc_HasItems(hero,ItAm_Addon_Franco) * 100) + (Npc_HasItems(hero,ItAm_Addon_Health) * 100) + (Npc_HasItems(hero,ItRi_Addon_Health_01) * 30) + (Npc_HasItems(hero,ItRi_Addon_Health_02) * 30) + (Npc_HasItems(hero,ItAm_Addon_MANA) * 100) + (Npc_HasItems(hero,ItRi_Addon_MANA_01) * 30) + (Npc_HasItems(hero,ItRi_Addon_MANA_02) * 30) + (Npc_HasItems(hero,ItAm_Addon_STR) * 100) + (Npc_HasItems(hero,ItRi_Addon_STR_01) * 30) + (Npc_HasItems(hero,ItRi_Addon_STR_02) * 30) + (Npc_HasItems(hero,ItBE_Addon_Leather_01) * 500) + (Npc_HasItems(hero,ItBE_Addon_SLD_01) * 500) + (Npc_HasItems(hero,ItBE_Addon_NOV_01) * 500) + (Npc_HasItems(hero,ItBE_Addon_MIL_01) * 500) + (Npc_HasItems(hero,ItBE_Addon_KDF_01) * 500) + (Npc_HasItems(hero,ItBE_Addon_MC) * 500) + (Npc_HasItems(hero,ItBe_Addon_STR_5) * 500) + (Npc_HasItems(hero,ItBe_Addon_STR_10) * 500) + (Npc_HasItems(hero,ItBe_Addon_DEX_5) * 500) + (Npc_HasItems(hero,ItBe_Addon_DEX_10) * 500) + (Npc_HasItems(hero,ItBe_Addon_Prot_EDGE) * 500) + (Npc_HasItems(hero,ItBe_Addon_Prot_Point) * 500) + (Npc_HasItems(hero,ItBe_Addon_Prot_MAGIC) * 500) + (Npc_HasItems(hero,ItBe_Addon_Prot_FIRE) * 500) + (Npc_HasItems(hero,ItBe_Addon_Prot_EdgPoi) * 500) + (Npc_HasItems(hero,ItBe_Addon_Prot_TOTAL) * 500) + (Npc_HasItems(hero,itbe_addon_wght_15) * 500) + (Npc_HasItems(hero,itbe_addon_wght_25) * 500) + (Npc_HasItems(hero,itbe_addon_wght_35) * 500) + (Npc_HasItems(hero,itbe_addon_enchleather_01) * 500) + (Npc_HasItems(hero,itri_enchstr_01) * 30) + (Npc_HasItems(hero,itri_enchstr_02) * 30) + (Npc_HasItems(hero,itri_enchstr_03) * 30) + (Npc_HasItems(hero,itam_enchstrg_01) * 100) + (Npc_HasItems(hero,itam_enchstrg_02) * 100) + (Npc_HasItems(hero,itam_enchstrg_03) * 100) + (Npc_HasItems(hero,itbe_addonenchstr_01) * 500) + (Npc_HasItems(hero,itbe_addonenchstr_02) * 500) + (Npc_HasItems(hero,itbe_addonenchstr_03) * 500) + (Npc_HasItems(hero,itri_enchdex_01) * 30) + (Npc_HasItems(hero,itri_enchdex_02) * 30) + (Npc_HasItems(hero,itri_enchdex_03) * 30) + (Npc_HasItems(hero,itam_enchdexr_01) * 100) + (Npc_HasItems(hero,itam_enchdexr_02) * 100) + (Npc_HasItems(hero,itam_enchdexr_03) * 100) + (Npc_HasItems(hero,itbe_addonenchdex_01) * 500) + (Npc_HasItems(hero,itbe_addonenchdex_02) * 500) + (Npc_HasItems(hero,itbe_addonenchdex_03) * 500) + (Npc_HasItems(hero,itri_enchhp_01) * 30) + (Npc_HasItems(hero,itri_enchhp_02) * 30) + (Npc_HasItems(hero,itri_enchhp_03) * 30) + (Npc_HasItems(hero,itam_enchhtp_01) * 100) + (Npc_HasItems(hero,itam_enchhtp_02) * 100) + (Npc_HasItems(hero,itam_enchhtp_03) * 100) + (Npc_HasItems(hero,itri_enchmana_01) * 30) + (Npc_HasItems(hero,itri_enchmana_02) * 30) + (Npc_HasItems(hero,itri_enchmana_03) * 30) + (Npc_HasItems(hero,itam_enchntmana_01) * 100) + (Npc_HasItems(hero,itam_enchntmana_02) * 100) + (Npc_HasItems(hero,itam_enchntmana_03) * 100) + (Npc_HasItems(hero,itri_enchwght_01) * 30) + (Npc_HasItems(hero,itri_enchwght_02) * 30) + (Npc_HasItems(hero,itri_enchwght_03) * 30) + (Npc_HasItems(hero,itam_enchtwght_01) * 100) + (Npc_HasItems(hero,itam_enchtwght_02) * 100) + (Npc_HasItems(hero,itam_enchtwght_03) * 100) + (Npc_HasItems(hero,itri_addon_ench1h_01) * 30) + (Npc_HasItems(hero,itri_addon_ench1h_02) * 30) + (Npc_HasItems(hero,itri_addon_ench1h_03) * 30) + (Npc_HasItems(hero,itri_addon_ench2h_01) * 30) + (Npc_HasItems(hero,itri_addon_ench2h_02) * 30) + (Npc_HasItems(hero,itri_addon_ench2h_03) * 30) + (Npc_HasItems(hero,itri_addon_enchbows_01) * 30) + (Npc_HasItems(hero,itri_addon_enchbows_02) * 30) + (Npc_HasItems(hero,itri_addon_enchbows_03) * 30) + (Npc_HasItems(hero,itri_addon_ench_b_01) * 30) + (Npc_HasItems(hero,itri_addon_ench_b_02) * 30) + (Npc_HasItems(hero,itri_addon_ench_b_03) * 30) + (Npc_HasItems(hero,itri_enchunidef_01) * 30) + (Npc_HasItems(hero,itri_enchunidef_02) * 30) + (Npc_HasItems(hero,itri_enchunidef_03) * 30) + (Npc_HasItems(hero,itam_enchntunidef_01) * 100) + (Npc_HasItems(hero,itam_enchntunidef_02) * 100) + (Npc_HasItems(hero,itam_enchntunidef_03) * 100) + (Npc_HasItems(hero,itri_enchreghp_01) * 30) + (Npc_HasItems(hero,itri_enchregmp_01) * 30);
	};
	if(C_BodyStateContains(hero,BS_STAND))
	{
		WITE_WINF += 1;
	};
	if(WITE_WINF > 3)
	{
		ASSS_WINF = TRUE;
	};
	if(!C_BodyStateContains(hero,BS_STAND) || ((Npc_GetDistToWP(hero,"XARDAS") <= 300) && (hero.level == 0)))
	{
		WITE_WINF = 0;
		ASSS_WINF = FALSE;
	};
	if(!C_BodyStateContains(hero,BS_MOBINTERACT_INTERRUPT) && (hero.aivar[AIV_INVINCIBLE] == FALSE) && (Npc_GetBodyState(hero) != BS_ITEMINTERACT) && (ASSS_WINF == TRUE))
	{
		SCREEN_MWGHT = ConcatStrings("/",IntToString(MAXM_WGHT));
		SCREEN_WGHT1 = ConcatStrings("Weight ",IntToString(REAL_WGHT));
		SCREEN_WGHT = ConcatStrings(SCREEN_WGHT1,SCREEN_MWGHT);
		PrintScreen(SCREEN_WGHT,85,3,FONT_SCREENBRIGHTLARGE,2);
	};
	if((REAL_WGHT >= (1 + ((MAXM_WGHT * 74) / 100))) && (REAL_WGHT < (1 + ((MAXM_WGHT * 84) / 100))) && !C_BodyStateContains(hero,BS_DEAD))
	{
		PrintScreen(":",0,22,FONT_SYMBOLS,2);
	};
	if((REAL_WGHT >= (1 + ((MAXM_WGHT * 84) / 100))) && (REAL_WGHT < (1 + ((MAXM_WGHT * 94) / 100))) && !C_BodyStateContains(hero,BS_DEAD))
	{
		PrintScreen(";",0,22,FONT_SYMBOLS,2);
	};
	if((REAL_WGHT >= (1 + ((MAXM_WGHT * 94) / 100))) && !C_BodyStateContains(hero,BS_DEAD))
	{
		PrintScreen("<",0,22,FONT_SYMBOLS,2);
	};
	if((REAL_WGHT > MAXM_WGHT) && !C_BodyStateContains(hero,BS_MOBINTERACT_INTERRUPT) && !C_BodyStateContains(hero,BS_MOBINTERACT) && (hero.aivar[AIV_INVINCIBLE] == FALSE) && (Npc_GetBodyState(hero) != BS_INVENTORY))
	{
		STAT_WGHTBNS += 1;
	};
	if((STAT_WGHTBNS > 65) || (REAL_WGHT < MAXM_WGHT))
	{
		STAT_WGHTBNS = 0;
		ACTIVEBONUS2 = FALSE;
	};
	if((STAT_WGHTBNS >= 60) && (ACTIVEBONUS2 == FALSE))
	{
		PrintScreen(PRINT_ACTBONUS3,-1,50,FONT_ScreenSmall,3);
		PrintScreen(PRINT_ACTBONUS4,-1,53,FONT_SCREENBRIGHTLARGE,3);
		if(ACTIVEBONUS2 == FALSE)
		{
			Npc_ChangeAttribute(hero,ATR_HITPOINTS_MAX,-1);
			Npc_ChangeAttribute(hero,ATR_HITPOINTS,-1);
			Snd_Play("SVM_2_AARGH");
			AI_PlayAni(hero,"T_BASH");
			AI_Wait(hero,1);
			ACTIVEBONUS2 = TRUE;
		};
	};
	if((REAL_WGHT > MAXM_WGHT) && (WGHT_MDS_ON == FALSE) && !C_BodyStateContains(hero,BS_MOBINTERACT_INTERRUPT) && (hero.aivar[AIV_INVINCIBLE] == FALSE) && (Npc_GetBodyState(hero) != BS_ITEMINTERACT) && (Npc_GetBodyState(hero) != BS_INVENTORY))
	{
		TORCH_CHECK = Npc_HasItems(hero,ItLsTorch);
		Mdl_ApplyOverlayMds(hero,"Humans_Wounded_AD.mds");
		WGHT_MDS_ON = TRUE;
	};
	if((REAL_WGHT < MAXM_WGHT) && (WGHT_MDS_ON == TRUE) && !C_BodyStateContains(hero,BS_MOBINTERACT_INTERRUPT) && (hero.aivar[AIV_INVINCIBLE] == FALSE) && (Npc_GetBodyState(hero) != BS_ITEMINTERACT) && (Npc_GetBodyState(hero) != BS_INVENTORY))
	{
		Mdl_RemoveOverlayMds(hero,"Humans_Wounded_AD.mds");
		WGHT_MDS_ON = FALSE;
		b_reffightskill();
	};
	if((REAL_WGHT > MAXM_WGHT) && (WGHT_MDS_ON == TRUE) && !C_BodyStateContains(hero,BS_MOBINTERACT_INTERRUPT) && (hero.aivar[AIV_INVINCIBLE] == FALSE) && (Npc_GetBodyState(hero) != BS_ITEMINTERACT) && (Npc_GetBodyState(hero) != BS_INVENTORY))
	{
		if(Npc_HasItems(hero,ItLsTorch) < TORCH_CHECK)
		{
			Mdl_RemoveOverlayMds(hero,"Humans_Torch.mds");
		};
	};
	if((hero.flags == NPC_FLAG_IMMORTAL) && !C_BodyStateContains(hero,BS_PARADE))
	{
		hero.flags = 0;
		SNDLOCK = FALSE;
	};
	if(LOAD_CHECK > 0)
	{
		LOAD_CHECK -= 1;
	};
	if(((Npc_GetActiveSpell(hero) == SPL_PalTeleportSecret) || (Npc_GetActiveSpell(hero) == SPL_TeleportSeaport) || (Npc_GetActiveSpell(hero) == SPL_TeleportMonastery) || (Npc_GetActiveSpell(hero) == SPL_TeleportXardas) || (Npc_GetActiveSpell(hero) == SPL_TeleportOC) || (Npc_GetActiveSpell(hero) == SPL_Thunderstorm)) && (STAT_EXHST >= 445) && (EXHST_WARN == FALSE) && !C_BodyStateContains(hero,BS_DEAD))
	{
		PrintScreen(PRINT_NOTENOUGHME,-1,25,FONT_ScreenSmall,3);
		EXHST_WARN = TRUE;
	};
	if((Npc_GetActiveSpell(hero) == SPL_ArmyOfDarkness) && (STAT_EXHST >= 345) && (EXHST_WARN == FALSE) && !C_BodyStateContains(hero,BS_DEAD))
	{
		PrintScreen(PRINT_NOTENOUGHME,-1,25,FONT_ScreenSmall,3);
		EXHST_WARN = TRUE;
	};
	if((Npc_GetActiveSpell(hero) == SPL_Firerain) && (STAT_EXHST >= 245) && (EXHST_WARN == FALSE) && !C_BodyStateContains(hero,BS_DEAD))
	{
		PrintScreen(PRINT_NOTENOUGHME,-1,25,FONT_ScreenSmall,3);
		EXHST_WARN = TRUE;
	};
	if((Npc_GetActiveSpell(hero) == SPL_MassDeath) && (STAT_EXHST >= 94) && (EXHST_WARN == FALSE) && !C_BodyStateContains(hero,BS_DEAD))
	{
		PrintScreen(PRINT_NOTENOUGHME,-1,25,FONT_ScreenSmall,3);
		EXHST_WARN = TRUE;
	};
	Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	if(STAT_SWORDDEF < 0)
	{
		STAT_SWORDDEF = 0;
	};
	if(DEAD_TIME >= 14)
	{
		DEAD_TIME = 0;
		if(C_BodyStateContains(hero,BS_DEAD))
		{
			Snd_Play("MYSTERY_03");
		};
	};
	if(C_BodyStateContains(hero,BS_DEAD))
	{
		if(DEAD_CHECK == FALSE)
		{
			DEAD_CHECK = TRUE;
		};
		DEAD_TIME += 1;
		PrintScreen("You are dead!",-1,20,FONT_SCREENBRIGHTLARGE,2);
	};
	if(!C_BodyStateContains(hero,BS_DEAD) && (DEAD_CHECK == TRUE))
	{
		DEAD_TIME = 0;
		DEAD_CHECK = FALSE;
		Wld_StopEffect("PCDEAD_FX");
	};
	if((START_CHECK == TRUE) && (hero.level == 0))
	{
		if(hero.attribute[ATR_HITPOINTS_MAX] != 0)
		{
			AI_Wait(hero,2);
			Wld_PlayEffect("START_BLEND",hero,hero,0,0,0,FALSE);
			Wld_PlayEffect("spellFX_LIGHTSTAR_RED",hero,hero,0,0,0,FALSE);
			Snd_Play("AMBIENTTONE_01_HIGH");
			START_CHECK = FALSE;
			Wld_SendTrigger("XARSTAR");
		};
	};
	Wld_SendTrigger("UPD_DEF_ADDON");
};

func void evt_updhtf_addon_func()
{
	var int dominicbless;
	if(Npc_IsPlayer(hero) && (STAT_EXHST > 0))
	{
		if(EXHST_REST_60 == TRUE)
		{
			STAT_EXHST -= 8;
		}
		else if(EXHST_REST_100 == TRUE)
		{
			STAT_EXHST -= 10;
		}
		else if(EXHST_REST_120 == TRUE)
		{
			STAT_EXHST -= 12;
		}
		else if(EXHST_REST_140 == TRUE)
		{
			STAT_EXHST -= 14;
		}
		else
		{
			STAT_EXHST -= 5;
		};
	};
	if(EXHAUSBLOCK > 0)
	{
		EXHAUSBLOCK -= 1;
	}
	else if(EXHAUSBLOCK < 0)
	{
		EXHAUSBLOCK = 0;
	};
	if(MM_R_MOVE > 0)
	{
		MM_R_MOVE -= 1;
	};
	if(Npc_IsPlayer(hero) && (STAT_THRST < 100) && (hero.aivar[AIV_INVINCIBLE] == FALSE))
	{
		STAT_THRST += 1;
	};
	if(Npc_IsPlayer(hero) && (STAT_THRST >= 100) && !C_BodyStateContains(hero,BS_DEAD))
	{
		PrintScreen("You are thirsty!",5,2,FONT_SCREENBRIGHTLARGE,2);
	};
	if(Npc_IsPlayer(hero) && (STAT_HANGR < 100) && (hero.aivar[AIV_INVINCIBLE] == FALSE))
	{
		STAT_HANGR += 1;
	};
	if(Npc_IsPlayer(hero) && (STAT_HANGR >= 100) && !C_BodyStateContains(hero,BS_DEAD))
	{
		PrintScreen("You are hungry!",5,9,FONT_SCREENBRIGHTLARGE,2);
	};
	if(Npc_IsPlayer(hero) && (STAT_FTQUE < 200) && (hero.aivar[AIV_INVINCIBLE] == FALSE))
	{
		STAT_FTQUE += 1;
	};
	if(Npc_IsPlayer(hero) && (STAT_FTQUE >= 200) && !C_BodyStateContains(hero,BS_DEAD))
	{
		PrintScreen("You died of fatigue!",5,16,FONT_SCREENBRIGHTLARGE,2);
	};
	if(Npc_IsPlayer(hero) && (REAL_WGHT >= MAXM_WGHT) && !C_BodyStateContains(hero,BS_DEAD))
	{
		PrintScreen("You are overwhelmed!",5,23,FONT_SCREENBRIGHTLARGE,2);
	};
	if((REAL_WGHT > MAXM_WGHT) && (WGHT_MDS_ON == TRUE) && !C_BodyStateContains(hero,BS_MOBINTERACT_INTERRUPT) && (hero.aivar[AIV_INVINCIBLE] == FALSE) && (Npc_GetBodyState(hero) != BS_ITEMINTERACT) && (Npc_GetBodyState(hero) != BS_INVENTORY))
	{
		Mdl_RemoveOverlayMds(hero,"Humans_Torch.mds");
	};
	if((Npc_HasEquippedArmor(Sarah) == FALSE) && (Npc_GetDistToWP(Sarah,"NW_NM_02_ADD_07") >= 350))
	{
		AI_EquipArmor(Sarah,itar_w2_ves);
	};
	if((Npc_HasEquippedArmor(sonja) == FALSE) && (Npc_GetDistToWP(sonja,"NW_CITY_HABOUR_PUFF_SONJA") >= 350))
	{
		AI_EquipArmor(sonja,itar_baron_babe_addon);
	};
	if((Npc_HasEquippedArmor(lucia) == FALSE) && (Npc_GetDistToWP(lucia,"BL_INN_UPSIDE_BATH_01") >= 350))
	{
		AI_EquipArmor(lucia,itar_lucia_addon);
	};
	if(DOMINICCURSE == TRUE)
	{
		dominicbless = Hlp_Random(15);
		if((hero.guild == GIL_PAL) && (DOMINICFREE == TRUE))
		{
			if((hero.attribute[ATR_HITPOINTS] >= 1) && !C_BodyStateContains(hero,BS_DEAD))
			{
				Npc_ChangeAttribute(hero,ATR_HITPOINTS,dominicbless);
			};
		}
		else
		{
			Snd_Play("EVIL_SPELL_01");
			if(hero.attribute[ATR_HITPOINTS] > 0)
			{
				Npc_ChangeAttribute(hero,ATR_HITPOINTS,-dominicbless);
			};
		};
	};
	if(ADDON_PRING == TRUE)
	{
		if(Npc_HasItems(hero,ItMi_PortalRing_Addon) >= 1)
		{
			Npc_RemoveInvItems(hero,ItMi_PortalRing_Addon,1);
			ADDON_PRING = FALSE;
		};
	};
	if(ADDON_TMPLOPN == TRUE)
	{
		if(Npc_HasItems(hero,ItMi_TempelTorKey) >= 1)
		{
			Npc_RemoveInvItems(hero,ItMi_TempelTorKey,1);
			ADDON_TMPLOPN = FALSE;
		};
	};
	if(DRG_LF == TRUE)
	{
		DRG_LF = FALSE;
	};
	if(EXHST_WARN == TRUE)
	{
		EXHST_WARN = FALSE;
	};
	Wld_SendTrigger("UPD_HTF_ADDON");
};

