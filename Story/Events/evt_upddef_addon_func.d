
var int activebonus1;
var int activebonus2;
var int wite_winf;
var int asss_winf;

func void evt_upddef_addon_func()
{
	if((PASSIVE_HP == TRUE) && (hero.attribute[ATR_HITPOINTS] >= 1) && !C_BodyStateContains(hero,BS_DEAD))
	{
		Npc_ChangeAttribute(hero,ATR_HITPOINTS,1);
	};
	if(PASSIVE_MP == TRUE)
	{
		Npc_ChangeAttribute(hero,ATR_MANA,1);
	};
	if((PASSIVE_ENCHHP >= 1) && (hero.attribute[ATR_HITPOINTS] >= 1) && !C_BodyStateContains(hero,BS_DEAD))
	{
		Npc_ChangeAttribute(hero,ATR_HITPOINTS,1);
	};
	if((PASSIVE_ENCHHP >= 2) && (hero.attribute[ATR_HITPOINTS] >= 1) && !C_BodyStateContains(hero,BS_DEAD))
	{
		Npc_ChangeAttribute(hero,ATR_HITPOINTS,1);
	};
	if(PASSIVE_ENCHMP >= 1)
	{
		Npc_ChangeAttribute(hero,ATR_MANA,1);
	};
	if(PASSIVE_ENCHMP >= 2)
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
	if((hero.flags == NPC_FLAG_IMMORTAL) && !C_BodyStateContains(hero,BS_PARADE))
	{
		hero.flags = 0;
		SNDLOCK = FALSE;
	};
	if(LOAD_CHECK > 0)
	{
		LOAD_CHECK -= 1;
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
		PrintScreen("You died.",-1,20,FONT_SCREENBRIGHTLARGE,2);
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
	Wld_SendTrigger("UPD_HTF_ADDON");
};

