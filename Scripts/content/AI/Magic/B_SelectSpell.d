
func int B_SelectSpell(var C_Npc slf,var C_Npc oth)
{
	var int dK_rnd;
	var int dK_Mega;
	var int ravenenrage_onetime;
	var int amortenrage_onetime;
	var int amortdwave_onetime;
	var int amortbolt_onetime;
	if((slf.npcType == NPCTYPE_FRIEND) && Npc_IsPlayer(oth) && (oth.guild < GIL_SEPERATOR_HUM))
	{
		if((slf.guild == GIL_KDF) || (slf.aivar[AIV_MagicUser] == MAGIC_ALWAYS))
		{
			if(Npc_HasItems(slf,ItRu_Sleep) == 0)
			{
				CreateInvItems(slf,ItRu_Sleep,1);
			};
			B_ReadySpell(slf,SPL_Sleep,SPL_Cost_Sleep);
			return TRUE;
		}
		else
		{
			return FALSE;
		};
	};
	if((slf.guild == GIL_DMT) && (slf.aivar[AIV_MagicUser] == MAGIC_ALWAYS))
	{
		if(Npc_HasItems(slf,ItRu_InstantFireball) == 0)
		{
			CreateInvItems(slf,ItRu_InstantFireball,1);
		};
		if(Npc_HasItems(slf,ItRu_Deathbolt) == 0)
		{
			CreateInvItems(slf,ItRu_Deathbolt,1);
		};
		if(Npc_HasItems(slf,ItRu_Deathball) == 0)
		{
			CreateInvItems(slf,ItRu_Deathball,1);
		};
		if(Npc_HasItems(slf,ItRu_Firerain) == 0)
		{
			CreateInvItems(slf,ItRu_Firerain,1);
		};
		if(Npc_HasItems(slf,ItRu_Thunderstorm) == 0)
		{
			CreateInvItems(slf,ItRu_Thunderstorm,1);
		};
		if(Npc_HasItems(slf,ItRu_LightningFlash) == 0)
		{
			CreateInvItems(slf,ItRu_LightningFlash,1);
		};
		if(Npc_HasItems(slf,ItRu_Firestorm) == 0)
		{
			CreateInvItems(slf,ItRu_Firestorm,1);
		};
		if(Npc_HasItems(slf,ItRu_Skull) == 0)
		{
			CreateInvItems(slf,ItRu_Skull,1);
		};
		if(Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(DMT_1299_OberDementor_DI))
		{
			B_ReadySpell(slf,SPL_Skull,SPL_Cost_Skull);
			return TRUE;
		}
		else
		{
			if(Npc_IsDrawingWeapon(slf))
			{
				return TRUE;
			};
			if(slf.aivar[AIV_SelectSpell] <= 0)
			{
				dK_rnd = Hlp_Random(10);
				slf.aivar[AIV_SelectSpell] += dK_rnd;
			};
			if(slf.aivar[AIV_SelectSpell] < 10)
			{
				if(Kapitel <= 3)
				{
					B_ReadySpell(slf,SPL_InstantFireball,SPL_COST_InstantFireball);
					return TRUE;
				}
				else if(Kapitel <= 4)
				{
					B_ReadySpell(slf,SPL_Deathbolt,SPL_COST_Deathbolt);
					return TRUE;
				}
				else
				{
					B_ReadySpell(slf,SPL_Deathball,SPL_COST_Deathball);
					return TRUE;
				};
			}
			else if(slf.aivar[AIV_SelectSpell] == 10)
			{
				slf.aivar[AIV_SelectSpell] = 11;
				dK_Mega = Hlp_Random(100);
				if(dK_Mega <= 2)
				{
					B_ReadySpell(slf,SPL_Firerain,SPL_Cost_Firerain);
					return TRUE;
				}
				else if(dK_Mega <= 5)
				{
					B_ReadySpell(slf,SPL_Thunderstorm,SPL_Cost_Thunderstorm);
					return TRUE;
				}
				else if(dK_Mega <= 10)
				{
					B_ReadySpell(slf,SPL_LightningFlash,SPL_Cost_LightningFlash);
					return TRUE;
				}
				else
				{
					B_ReadySpell(slf,SPL_Firestorm,SPL_COST_Firestorm);
					return TRUE;
				};
			}
			else if(slf.aivar[AIV_SelectSpell] == 12)
			{
				slf.aivar[AIV_SelectSpell] = 0;
			};
		};
		return TRUE;
	};
	if((slf.guild == GIL_KDF) || (slf.aivar[AIV_MagicUser] == MAGIC_ALWAYS))
	{
		if(Npc_HasItems(slf,ItRu_Concussionbolt) == 0)
		{
			CreateInvItems(slf,ItRu_Concussionbolt,1);
		};
		if(Npc_HasItems(slf,ItRu_InstantFireball) == 0)
		{
			CreateInvItems(slf,ItRu_InstantFireball,1);
		};
		if(Npc_HasItems(slf,ItRu_Deathball) == 0)
		{
			CreateInvItems(slf,ItRu_Deathball,1);
		};
		if(Npc_HasItems(slf,ItRu_FullHeal) == 0)
		{
			CreateInvItems(slf,ItRu_FullHeal,1);
		};
		if(self.attribute[ATR_HITPOINTS] < 200)
		{
			B_ReadySpell(slf,SPL_FullHeal,SPL_Cost_FullHeal);
			return TRUE;
		}
		else if(C_NpcHasAttackReasonToKill(self))
		{
			if((self.flags == NPC_FLAG_IMMORTAL) || (Hlp_GetInstanceID(other) == Hlp_GetInstanceID(Raven)))
			{
				B_ReadySpell(slf,SPL_Deathball,SPL_COST_Deathball);
			}
			else
			{
				B_ReadySpell(slf,SPL_InstantFireball,SPL_COST_InstantFireball);
			};
			return TRUE;
		}
		else
		{
			B_ReadySpell(slf,SPL_ConcussionBolt,SPL_COST_Concussionbolt);
			return TRUE;
		};
	};
	if(slf.guild == GIL_PAL)
	{
		if(slf.fight_tactic == FAI_NAILED)
		{
			return FALSE;
		};
		if(Npc_HasItems(slf,ItRu_PalHolyBolt) == 0)
		{
			CreateInvItems(slf,ItRu_PalHolyBolt,1);
		};
		if((Npc_GetDistToNpc(slf,oth) > FIGHT_DIST_MELEE) && C_NpcIsEvil(oth))
		{
			B_ReadySpell(slf,SPL_PalHolyBolt,SPL_Cost_PalHolyBolt);
			return TRUE;
		}
		else
		{
			return FALSE;
		};
	};
	if(slf.guild == GIL_SKELETON_MAGE)
	{
		if(Npc_HasItems(slf,ItRu_SumSkel) == 0)
		{
			CreateInvItems(slf,ItRu_SumSkel,1);
		};
		if(Npc_HasItems(slf,ItRu_IceCube) == 0)
		{
			CreateInvItems(slf,ItRu_IceCube,1);
		};
		if(Npc_HasItems(slf,ItRu_Icebolt) == 0)
		{
			CreateInvItems(slf,ItRu_Icebolt,1);
		};
		if(slf.aivar[AIV_SelectSpell] >= 6)
		{
			slf.aivar[AIV_SelectSpell] = 1;
		};
		if(!Npc_IsInState(oth,ZS_MagicFreeze) && (slf.aivar[AIV_SelectSpell] == 0))
		{
			B_ReadySpell(slf,SPL_IceCube,SPL_Cost_IceCube);
			return TRUE;
		}
		else if((slf.aivar[AIV_SelectSpell] == 1) && (slf.lp < 5))
		{
			B_ReadySpell(slf,SPL_SummonSkeleton,SPL_Cost_SummonSkeleton);
			return TRUE;
		}
		else
		{
			B_ReadySpell(slf,SPL_Icebolt,SPL_COST_Icebolt);
			return TRUE;
		};
	};
	if(slf.aivar[AIV_MM_REAL_ID] == ID_RAVEN)
	{
		if((self.attribute[ATR_HITPOINTS] < 250) && (ravenenrage_onetime == FALSE))
		{
			AI_PlayAni(self,"T_PRACTICEMAGIC5");
			Npc_ChangeAttribute(self,ATR_HITPOINTS,800);
			Snd_Play("SFX_INNOSEYE");
			Wld_PlayEffect("spellFX_LIGHTSTAR_RingRitual",self,self,0,0,0,FALSE);
			Wld_SpawnNpcRange(self,raven_guard,2,400);
			ravenenrage_onetime = TRUE;
		};
	};
	if(slf.aivar[AIV_MM_REAL_ID] == ID_AMORT)
	{
		if((AMORTBATTLE == FALSE) && (hero.attribute[ATR_HITPOINTS] > 1) && (AMORTBATTLE_ONETIME == FALSE))
		{
			AI_PlayAni(self,"T_GETLOST2");
			Wld_PlayEffect("SPELLFX_LIGHTNINGFLASH",self,other,1,1500,DAM_MAGIC,TRUE);
			AMORTBATTLE_ONETIME = TRUE;
		};
		if((self.attribute[ATR_HITPOINTS] < 1100) && (amortbolt_onetime == FALSE))
		{
			AI_PlayAni(self,"T_GETLOST2");
			Wld_PlayEffect("SPELLFX_INSTANTFIREBALL",self,other,1,200,DAM_MAGIC,TRUE);
			amortbolt_onetime = TRUE;
			AMORTBATTLE_ONETIME = FALSE;
		};
		if((self.attribute[ATR_HITPOINTS] < 700) && (amortenrage_onetime == FALSE))
		{
			AI_PlayAni(self,"T_PRACTICEMAGIC5");
			Wld_PlayEffect("spellFX_LIGHTSTAR_RED",self,self,0,0,0,FALSE);
			Wld_PlayEffect("FX_EarthQuake",self,self,0,0,0,FALSE);
			Npc_ChangeAttribute(self,ATR_HITPOINTS,700);
			Wld_SpawnNpcRange(self,Demon,1,220);
			amortenrage_onetime = TRUE;
			AMORTBATTLE_ONETIME = FALSE;
		};
		if((self.attribute[ATR_HITPOINTS] < 500) && (amortdwave_onetime == FALSE))
		{
			AI_PlayAni(self,"T_PRACTICEMAGIC5");
			AI_PlayAni(oth,"T_DEAD");
			AI_Wait(other,3);
			Npc_ChangeAttribute(self,ATR_HITPOINTS,200);
			hero.attribute[ATR_HITPOINTS] = 25;
			Wld_PlayEffect("spellFX_LIGHTSTAR_RED",self,self,0,0,0,FALSE);
			Wld_PlayEffect("spellFX_Fear",other,other,0,0,0,FALSE);
			Wld_PlayEffect("spellFX_INCOVATION_RED",self,self,0,0,0,FALSE);
			Wld_PlayEffect("FX_EarthQuake",self,self,0,0,0,FALSE);
			amortdwave_onetime = TRUE;
			AMORTBATTLE_ONETIME = FALSE;
		};
	};
	if(slf.aivar[AIV_MM_REAL_ID] == ID_MAG_LORD)
	{
		if(Npc_HasItems(slf,ItRu_Icelance) == 0)
		{
			CreateInvItems(slf,ItRu_Icelance,1);
		};
		if(Npc_HasItems(slf,ItRu_FullHeal) == 0)
		{
			CreateInvItems(slf,ItRu_FullHeal,1);
		};
		if(self.attribute[ATR_HITPOINTS] < 200)
		{
			B_ReadySpell(slf,SPL_FullHeal,SPL_Cost_FullHeal);
			return TRUE;
		}
		else
		{
			B_ReadySpell(slf,SPL_IceLance,SPL_Cost_Icelance);
			return TRUE;
		};
	};
	if(slf.guild == GIL_ICEGOLEM)
	{
		if(Npc_HasItems(slf,ItRu_IceCube) == 0)
		{
			CreateInvItems(slf,ItRu_IceCube,1);
		};
		if((Npc_GetDistToNpc(slf,oth) < FIGHT_DIST_MELEE) || Npc_IsInState(oth,ZS_MagicFreeze))
		{
			return FALSE;
		}
		else
		{
			B_ReadySpell(slf,SPL_IceCube,SPL_Cost_IceCube);
			return TRUE;
		};
	};
	if(slf.guild == GIL_FIREGOLEM)
	{
		if(Npc_HasItems(slf,ItRu_InstantFireball) == 0)
		{
			CreateInvItems(slf,ItRu_InstantFireball,1);
		};
		if(Npc_GetDistToNpc(slf,oth) > FIGHT_DIST_MELEE)
		{
			B_ReadySpell(slf,SPL_InstantFireball,SPL_COST_InstantFireball);
			return TRUE;
		}
		else
		{
			return FALSE;
		};
	};
	if(slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_SWAMP)
	{
		if(Npc_HasItems(slf,ItRu_InstantFireball) == 0)
		{
			CreateInvItems(slf,ItRu_InstantFireball,1);
		};
		if(Npc_GetDistToNpc(slf,oth) > FIGHT_DIST_DRAGON_MAGIC)
		{
			B_ReadySpell(slf,SPL_InstantFireball,SPL_COST_InstantFireball);
			return TRUE;
		}
		else
		{
			return FALSE;
		};
	};
	if(slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_ROCK)
	{
		if(Npc_HasItems(slf,ItRu_InstantFireball) == 0)
		{
			CreateInvItems(slf,ItRu_InstantFireball,1);
		};
		if(Npc_GetDistToNpc(slf,oth) > FIGHT_DIST_DRAGON_MAGIC)
		{
			B_ReadySpell(slf,SPL_InstantFireball,SPL_COST_InstantFireball);
			return TRUE;
		}
		else
		{
			return FALSE;
		};
	};
	if(slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_FIRE)
	{
		if(Npc_HasItems(slf,ItRu_InstantFireball) == 0)
		{
			CreateInvItems(slf,ItRu_InstantFireball,1);
		};
		if(Npc_GetDistToNpc(slf,oth) > FIGHT_DIST_DRAGON_MAGIC)
		{
			B_ReadySpell(slf,SPL_InstantFireball,SPL_COST_InstantFireball);
			return TRUE;
		}
		else
		{
			return FALSE;
		};
	};
	if(slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_ICE)
	{
		if(Npc_HasItems(slf,ItRu_InstantFireball) == 0)
		{
			CreateInvItems(slf,ItRu_InstantFireball,1);
		};
		if(Npc_GetDistToNpc(slf,oth) > FIGHT_DIST_DRAGON_MAGIC)
		{
			B_ReadySpell(slf,SPL_InstantFireball,SPL_COST_InstantFireball);
			return TRUE;
		}
		else
		{
			return FALSE;
		};
	};
	if(slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_UNDEAD)
	{
		if(Npc_HasItems(slf,ItRu_Deathball) == 0)
		{
			CreateInvItems(slf,ItRu_Deathball,1);
		};
		if(Npc_GetDistToNpc(slf,oth) > FIGHT_DIST_DRAGON_MAGIC)
		{
			B_ReadySpell(slf,SPL_Deathball,SPL_COST_Deathball);
			return TRUE;
		}
		else
		{
			return FALSE;
		};
	};
	if(slf.aivar[AIV_MM_REAL_ID] == ID_ORCSHAMAN)
	{
		if(Npc_HasItems(slf,ItRu_InstantFireball) == 0)
		{
			CreateInvItems(slf,ItRu_InstantFireball,1);
		};
		if(Npc_GetDistToNpc(slf,oth) > FIGHT_DIST_MELEE)
		{
			B_ReadySpell(slf,SPL_InstantFireball,SPL_COST_InstantFireball);
			return TRUE;
		}
		else
		{
			return FALSE;
		};
	};
	if(Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(VLK_414_Hanna))
	{
		if(!Npc_IsInState(oth,ZS_MagicFreeze) && (Npc_HasItems(slf,ItSc_IceCube) > 0))
		{
			B_ReadySpell(slf,SPL_IceCube,SPL_Cost_Scroll);
			return TRUE;
		}
		else if(Npc_HasItems(slf,ItSc_Firestorm) > 0)
		{
			B_ReadySpell(slf,SPL_Firestorm,SPL_Cost_Scroll);
			return TRUE;
		}
		else
		{
			return FALSE;
		};
	};
	return FALSE;
};

