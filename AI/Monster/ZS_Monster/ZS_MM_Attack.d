
func void B_MM_AssessSurprise()
{
	Npc_SetTarget(self,other);
};

func void ZS_MM_Attack()
{
	Npc_SetPercTime(self,1);
	Npc_PercEnable(self,PERC_ASSESSBODY,B_MM_AssessBody);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_MM_AssessDamage);
	Npc_PercEnable(self,PERC_ASSESSWARN,B_MM_AssessWarn);
	Npc_PercEnable(self,PERC_ASSESSSURPRISE,B_MM_AssessSurprise);
	B_ValidateOther();
	if(self.guild == GIL_SHEEP)
	{
		Npc_ClearAIQueue(self);
		B_ClearPerceptions(self);
		Npc_SetTarget(self,other);
		AI_StartState(self,ZS_MM_Flee,0,"");
		return;
	};
	AI_Standup(self);
	AI_SetWalkMode(self,NPC_RUN);
	Npc_SendPassivePerc(self,PERC_ASSESSWARN,other,self);
	self.aivar[AIV_PursuitEnd] = FALSE;
	self.aivar[AIV_StateTime] = 0;
	self.aivar[AIV_HitByOtherNpc] = 0;
	self.aivar[AIV_SelectSpell] = 0;
	self.aivar[AIV_TAPOSITION] = 0;
};

func int ZS_MM_Attack_Loop()
{
	var int crazydmg;
	var int hghtrndm;
	var int orcfurry;
	var int orcfdmg;
	var int drg_lh;
	Npc_GetTarget(self);
	if(self.guild == GIL_TROLL)
	{
		if(!Npc_CanSeeNpc(self,other) && (Npc_GetDistToNpc(self,other) < 500))
		{
			crazydmg = other.level + 25 + Hlp_Random(30);
			AI_PlayAni(self,"T_FISTBACK");
			AI_TurnToNPC(self,other);
			AI_Wait(other,0.8);
			AI_PlayAni(other,"T_FALLB_2_FALLENB");
			AI_Wait(other,1);
			if((other.aivar[AIV_MM_REAL_ID] == ID_SUMMONED_GOBBO_SKELETON) || (other.aivar[AIV_MM_REAL_ID] == ID_SUMMONED_SKELETON) || (other.aivar[AIV_MM_REAL_ID] == ID_SUMMONED_WOLF))
			{
				other.attribute[ATR_HITPOINTS] -= 150;
			};
			other.attribute[ATR_HITPOINTS] -= crazydmg;
		};
		if(C_BodyStateContains(other,BS_LIE) && (CRAZYTROLL == FALSE))
		{
			AI_PlayAni(self,"T_WARN");
			Npc_ClearAIQueue(other);
			CRAZYTROLL = TRUE;
		};
		if(!C_BodyStateContains(other,BS_LIE) && (CRAZYTROLL == TRUE))
		{
			CRAZYTROLL = FALSE;
		};
		if((Npc_GetHeightToNpc(self,other) > 300) || (Npc_GetHeightToNpc(other,self) > 300))
		{
			hghtrndm = Hlp_Random(1000);
			if(hghtrndm < 5)
			{
				AI_TurnToNPC(self,other);
				AI_PlayAni(self,"T_WARN");
				if((self.attribute[ATR_HITPOINTS] >= 1) && (self.attribute[ATR_HITPOINTS] < self.attribute[ATR_HITPOINTS_MAX]) && !C_BodyStateContains(self,BS_DEAD))
				{
					Npc_ChangeAttribute(self,ATR_HITPOINTS,100);
				};
			};
		};
	};
	if((hero.aivar[91] == TRUE) && C_BodyStateContains(hero,BS_PARADE) && (Npc_GetDistToNpc(self,hero) < 375))
	{
		b_sh_blockchance();
		if(C_BodyStateContains(self,BS_HIT))
		{
			b_sh_blocksnd();
		};
	};
	if(self.aivar[AIV_MM_REAL_ID] == ID_ORCWARRIOR)
	{
		if(C_BodyStateContains(hero,BS_PARADE) && C_BodyStateContains(self,BS_HIT) && (Npc_GetDistToNpc(self,hero) < 200))
		{
			PCBLOCK = TRUE;
		}
		else
		{
			PCBLOCK = FALSE;
		};
		if(C_BodyStateContains(hero,BS_PARADE) && (Npc_GetDistToNpc(self,hero) > 375) && (Npc_GetDistToNpc(self,hero) < 475))
		{
			if(SH_B_CHANCE_75 == TRUE)
			{
				orcfdmg = 15 + Hlp_Random(10);
			}
			else if(SH_B_CHANCE_65 == TRUE)
			{
				orcfdmg = 15 + Hlp_Random(20);
			}
			else if(SH_B_CHANCE_55 == TRUE)
			{
				orcfdmg = 15 + Hlp_Random(30);
			}
			else if(SH_B_CHANCE_45 == TRUE)
			{
				orcfdmg = 15 + Hlp_Random(40);
			}
			else if(SH_B_CHANCE_35 == TRUE)
			{
				orcfdmg = 15 + Hlp_Random(50);
			}
			else if(SH_B_CHANCE_25 == TRUE)
			{
				orcfdmg = 15 + Hlp_Random(60);
			}
			else if(SH_B_CHANCE_15 == TRUE)
			{
				orcfdmg = 15 + Hlp_Random(70);
			}
			else
			{
				orcfdmg = 25 + Hlp_Random(75);
			};
			if(hero.level >= 40)
			{
				orcfurry = Hlp_Random(450);
			}
			else if((hero.level >= 30) && (hero.level < 40))
			{
				orcfurry = Hlp_Random(300);
			}
			else if((hero.level >= 20) && (hero.level < 30))
			{
				orcfurry = Hlp_Random(150);
			}
			else if((hero.level >= 10) && (hero.level < 20))
			{
				orcfurry = Hlp_Random(50);
			}
			else if((hero.level >= 1) && (hero.level < 10))
			{
				orcfurry = Hlp_Random(25);
			};
			if(orcfurry == 11)
			{
				AI_TurnToNPC(self,hero);
				Snd_Play("ORC_FRIGHTENED");
				AI_PlayAni(self,"T_2HATTACKFURRY");
				if(hero.attribute[ATR_HITPOINTS] > orcfdmg)
				{
					B_MagicHurtNpc(self,hero,orcfdmg);
					Snd_Play("SVM_2_AARGH");
					AI_PlayAni(hero,"T_STUMBLEB");
				}
				else
				{
					Snd_Play("SVM_2_AARGH");
					hero.attribute[ATR_HITPOINTS] = 1;
					AI_PlayAni(hero,"T_BASH");
					AI_Wait(hero,1);
				};
			};
		};
	};
	if(self.guild == GIL_ORC)
	{
		if((Npc_GetDistToNpc(self,other) < 350) && ((other.aivar[AIV_MM_REAL_ID] == ID_SUMMONED_GOBBO_SKELETON) || (other.aivar[AIV_MM_REAL_ID] == ID_SUMMONED_WOLF)))
		{
			AI_PlayAni(self,"T_2HATTACKCLEAVE");
			other.attribute[ATR_HITPOINTS] -= 200;
		};
	};
	if((self.aivar[AIV_MM_REAL_ID] == ID_FIREGOLEM) || (self.aivar[AIV_MM_REAL_ID] == ID_ICEGOLEM))
	{
		if(Npc_IsInFightMode(self,FMODE_FIST) && (Npc_GetDistToNpc(self,other) > FIGHT_DIST_MELEE))
		{
			AI_RemoveWeapon(self);
		};
	};
	if(self.aivar[AIV_MM_REAL_ID] == ID_ORCSHAMAN)
	{
		if((Npc_IsInFightMode(self,FMODE_FIST) || Npc_IsInFightMode(self,FMODE_MELEE)) && (Npc_GetDistToNpc(self,other) > FIGHT_DIST_MELEE))
		{
			AI_RemoveWeapon(self);
		};
	};
	if(((self.aivar[AIV_MM_REAL_ID] == ID_ORCELITE) && (other.level < 20)) || !Npc_CanSeeNpc(self,other))
	{
		b_rtn_reg(self);
	};
	if(self.guild == GIL_DRAGON)
	{
		if((Npc_GetDistToNpc(self,other) < 3000) && (Npc_GetDistToNpc(self,other) > 750))
		{
			DRG_RD = Hlp_Random(17);
			if((DRG_RD == 5) || (DRG_RD == 11))
			{
				AI_PlayAni(self,"T_WARN");
			};
		};
		if((Npc_GetDistToNpc(self,other) < 500) && ((other.aivar[AIV_MM_REAL_ID] == ID_SUMMONED_GOBBO_SKELETON) || (other.aivar[AIV_MM_REAL_ID] == ID_SUMMONED_WOLF)))
		{
			if((self.aivar[AIV_MM_REAL_ID] == ID_DRAGON_FIRE) && (DRG_SD == FALSE))
			{
				Wld_PlayEffect("SPELLFX_FIRERAIN",self,other,1,250,DAM_MAGIC,TRUE);
				DRG_SD = TRUE;
			};
			if((self.aivar[AIV_MM_REAL_ID] == ID_DRAGON_ICE) && (DRG_SD == FALSE))
			{
				Wld_PlayEffect("SPELLFX_ICEWAVE",self,other,1,250,DAM_MAGIC,TRUE);
				DRG_SD = TRUE;
			};
			if(((self.aivar[AIV_MM_REAL_ID] == ID_DRAGON_ROCK) || (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(FireDragonIsland))) && (DRG_SD == FALSE))
			{
				Wld_PlayEffect("SPELLFX_FIRESTORM",self,other,1,250,DAM_MAGIC,TRUE);
				Wld_PlayEffect("FX_EarthQuake",hero,hero,0,0,0,FALSE);
				DRG_SD = TRUE;
			};
			if((self.aivar[AIV_MM_REAL_ID] == ID_DRAGON_SWAMP) && (DRG_SD == FALSE))
			{
				Wld_PlayEffect("SPELLFX_THUNDERSTORM",self,other,1,250,DAM_MAGIC,TRUE);
				DRG_SD = TRUE;
			};
			if((self.aivar[AIV_MM_REAL_ID] == ID_DRAGON_UNDEAD) && (DRG_SD == FALSE))
			{
				Wld_PlayEffect("SPELLFX_MASSDEATH",self,other,1,250,DAM_MAGIC,TRUE);
				DRG_SD = TRUE;
			};
		};
		if((self.attribute[ATR_HITPOINTS] < (self.attribute[ATR_HITPOINTS_MAX] / 3)) && (hero.attribute[ATR_HITPOINTS] > ((hero.attribute[ATR_HITPOINTS_MAX] * 60) / 100)) && (drg_lh == FALSE))
		{
			if(self.aivar[AIV_MM_REAL_ID] == ID_DRAGON_UNDEAD)
			{
				AI_Wait(hero,1);
				Wld_PlayEffect("SPELLFX_BREATHOFDEATH",self,hero,1,100,DAM_FLY,TRUE);
				drg_lh = TRUE;
			};
			if(self.aivar[AIV_MM_REAL_ID] == ID_DRAGON_FIRE)
			{
				Wld_PlayEffect("SPELLFX_FIRERAIN",self,other,1,250,DAM_MAGIC,TRUE);
				drg_lh = TRUE;
			};
			if(self.aivar[AIV_MM_REAL_ID] == ID_DRAGON_ICE)
			{
				Wld_PlayEffect("SPELLFX_ICEWAVE",self,other,1,250,DAM_MAGIC,TRUE);
				drg_lh = TRUE;
			};
			if((self.aivar[AIV_MM_REAL_ID] == ID_DRAGON_ROCK) || (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(FireDragonIsland)))
			{
				Wld_PlayEffect("SPELLFX_FIRESTORM",self,other,1,250,DAM_MAGIC,TRUE);
				Wld_PlayEffect("FX_EarthQuake",hero,hero,0,0,0,FALSE);
				drg_lh = TRUE;
			};
			if(self.aivar[AIV_MM_REAL_ID] == ID_DRAGON_SWAMP)
			{
				Wld_PlayEffect("SPELLFX_THUNDERSTORM",self,other,1,250,DAM_MAGIC,TRUE);
				drg_lh = TRUE;
			};
		};
		if((self.attribute[ATR_HITPOINTS] > ((self.attribute[ATR_HITPOINTS_MAX] * 60) / 100)) && (drg_lh == TRUE))
		{
			drg_lh = FALSE;
		};
		if(self.aivar[AIV_MM_REAL_ID] == ID_DRAGON_UNDEAD)
		{
			if((Npc_GetDistToNpc(self,other) < 500) && ((Hlp_GetInstanceID(other) != Hlp_GetInstanceID(hero)) || (other.aivar[AIV_MM_REAL_ID] == ID_SUMMONED_GOBBO_SKELETON) || (other.aivar[AIV_MM_REAL_ID] == ID_SUMMONED_WOLF)) && (DRG_LF == FALSE))
			{
				Wld_PlayEffect("SPELLFX_MASSDEATH",self,other,1,200,DAM_MAGIC,TRUE);
				DRG_LF = TRUE;
			};
		};
	};
	if((RavenIsDead == TRUE) && (self.guild == GIL_Stoneguardian))
	{
		B_KillNpc(self);
	};
	if(CurrentLevel == OldWorld_Zen)
	{
		if(Npc_GetDistToWP(self,"OC_RAMP_07") <= 500)
		{
			Npc_ClearAIQueue(self);
			AI_TurnToNPC(self,other);
			AI_Standup(self);
			AI_PlayAni(self,"T_WARN");
			self.aivar[AIV_PursuitEnd] = TRUE;
			return LOOP_END;
		};
		if((Npc_GetDistToWP(other,"OC_EBR_HALL_WINDOW_01") <= 750) || (Npc_GetDistToWP(other,"OC_EBR_HALL_WINDOW_02") <= 750) || (Npc_GetDistToWP(other,"OC_EBR_HALL_WINDOW_03") <= 750) || (Npc_GetDistToWP(other,"OC_EBR_HALL_WINDOW_04") <= 750) || (Npc_GetDistToWP(other,"OC_EBR_HALL_WINDOW_05") <= 750) || (Npc_GetDistToWP(other,"OC_EBR_ROOM_03_SLEEP") <= 750))
		{
			Npc_ClearAIQueue(self);
			AI_TurnToNPC(self,other);
			AI_Standup(self);
			AI_PlayAni(self,"T_WARN");
			AI_Wait(self,2);
			self.aivar[AIV_PursuitEnd] = TRUE;
			return LOOP_END;
		};
	};
	if(Npc_GetDistToNpc(self,other) > FIGHT_DIST_CANCEL)
	{
		Npc_ClearAIQueue(self);
		AI_Standup(self);
		self.aivar[AIV_PursuitEnd] = TRUE;
		return LOOP_END;
	};
	if((Npc_GetStateTime(self) > self.aivar[AIV_MM_FollowTime]) && (self.aivar[AIV_PursuitEnd] == FALSE))
	{
		Npc_ClearAIQueue(self);
		AI_Standup(self);
		self.aivar[AIV_PursuitEnd] = TRUE;
		self.aivar[AIV_Dist] = Npc_GetDistToNpc(self,other);
		self.aivar[AIV_StateTime] = Npc_GetStateTime(self);
		AI_PlayAni(self,"T_WARN");
	};
	if(self.aivar[AIV_PursuitEnd] == TRUE)
	{
		if(Npc_GetDistToNpc(self,other) > self.senses_range)
		{
			return LOOP_END;
		};
		if(Npc_GetStateTime(self) > self.aivar[AIV_StateTime])
		{
			if((Npc_GetDistToNpc(self,other) < self.aivar[AIV_Dist]) || (!C_BodyStateContains(other,BS_RUN) && !C_BodyStateContains(other,BS_JUMP)))
			{
				self.aivar[AIV_PursuitEnd] = FALSE;
				Npc_SetStateTime(self,0);
				self.aivar[AIV_StateTime] = 0;
			}
			else
			{
				AI_TurnToNPC(self,other);
				self.aivar[AIV_Dist] = Npc_GetDistToNpc(self,other);
				self.aivar[AIV_StateTime] = Npc_GetStateTime(self);
			};
		};
		return LOOP_CONTINUE;
	};
	if((C_BodyStateContains(other,BS_SWIM) || C_BodyStateContains(other,BS_DIVE)) && (self.aivar[AIV_MM_FollowInWater] == FALSE))
	{
		Npc_ClearAIQueue(self);
		AI_Standup(self);
		return LOOP_END;
	};
	if(!Npc_CanSeeNpc(self,other) && (Npc_GetDistToNpc(self,other) < 355) && (self.guild != GIL_DRAGON) && (self.guild != GIL_TROLL))
	{
		if(C_BodyStateContains(other,BS_HIT) && (self.attribute[ATR_HITPOINTS] != self.attribute[ATR_HITPOINTS_MAX]))
		{
			AI_PlayAni(self,"T_FISTRUNL_2_JUMP");
			AI_TurnToNPC(self,other);
		};
		if(C_BodyStateContains(self,BS_STAND))
		{
			if(self.guild != GIL_SHADOWBEAST)
			{
				AI_GotoWP(self,Npc_GetNearestWP(other));
				AI_TurnToNPC(self,other);
			}
			else
			{
				AI_PlayAni(self,"T_FISTRUNL_2_JUMP");
			};
		};
	};
	if(self.aivar[AIV_WaitBeforeAttack] == 1)
	{
		AI_Wait(self,0.8);
		self.aivar[AIV_WaitBeforeAttack] = 0;
	};
	if(self.level == 0)
	{
		if(Npc_GetStateTime(self) > self.aivar[AIV_StateTime])
		{
			self.aivar[AIV_SummonTime] = self.aivar[AIV_SummonTime] + 1;
			self.aivar[AIV_StateTime] = Npc_GetStateTime(self);
		};
		if(self.aivar[AIV_SummonTime] >= MONSTER_SUMMON_TIME)
		{
			Npc_ChangeAttribute(self,ATR_HITPOINTS,-self.attribute[ATR_HITPOINTS_MAX]);
		};
	};
	if(!C_BodyStateContains(other,BS_RUN) && !C_BodyStateContains(other,BS_JUMP) && (Npc_GetStateTime(self) > 0))
	{
		Npc_SetStateTime(self,0);
		self.aivar[AIV_StateTime] = 0;
	};
	if(self.aivar[AIV_MaxDistToWp] > 0)
	{
		if((Npc_GetDistToWP(self,self.wp) > self.aivar[AIV_MaxDistToWp]) && (Npc_GetDistToWP(other,self.wp) > self.aivar[AIV_MaxDistToWp]))
		{
			self.fight_tactic = FAI_NAILED;
		}
		else
		{
			self.fight_tactic = self.aivar[AIV_OriginalFightTactic];
		};
	};
	if(C_NpcIsMonsterMage(self) || (self.guild == GIL_SKELETON) || (self.guild == GIL_SUMMONED_SKELETON) || (self.guild > GIL_SEPERATOR_ORC))
	{
		B_CreateAmmo(self);
		Npc_ChangeAttribute(self,ATR_MANA,ATR_MANA_MAX);
		B_SelectWeapon(self,other);
	};
	if(Hlp_IsValidNpc(other) && !C_NpcIsDown(other))
	{
		if(other.aivar[AIV_INVINCIBLE] == FALSE)
		{
			AI_Attack(self);
		}
		else
		{
			Npc_ClearAIQueue(self);
		};
		self.aivar[AIV_LASTTARGET] = Hlp_GetInstanceID(other);
		return LOOP_CONTINUE;
	}
	else
	{
		if((self.aivar[AIV_MM_PRIORITY] == PRIO_EAT) && C_WantToEat(self,other))
		{
			Npc_ClearAIQueue(self);
			AI_Standup(self);
			return LOOP_END;
		};
		Npc_PerceiveAll(self);
		Npc_GetNextTarget(self);
		if(Hlp_IsValidNpc(other) && !C_NpcIsDown(other) && ((Npc_GetDistToNpc(self,other) < PERC_DIST_INTERMEDIAT) || Npc_IsPlayer(other)) && (other.aivar[AIV_INVINCIBLE] == FALSE))
		{
			self.aivar[AIV_LASTTARGET] = Hlp_GetInstanceID(other);
			return LOOP_CONTINUE;
		}
		else
		{
			Npc_ClearAIQueue(self);
			AI_Standup(self);
			return LOOP_END;
		};
	};
};

func void ZS_MM_Attack_End()
{
	other = Hlp_GetNpc(self.aivar[AIV_LASTTARGET]);
	if(C_NpcIsMonsterMage(self) || (self.guild == GIL_SKELETON) || (self.guild == GIL_SUMMONED_SKELETON) || (self.guild > GIL_SEPERATOR_ORC))
	{
		AI_RemoveWeapon(self);
	};
	if(Npc_IsDead(other) && C_WantToEat(self,other))
	{
		Npc_ClearAIQueue(self);
		AI_StartState(self,ZS_MM_EatBody,0,"");
		return;
	};
};

