
var int RavenBlitz;

func int c_bodystatecontainsadd(var C_Npc slf,var int bodystate)
{
	if((Npc_GetBodyState(slf) & (BS_MAX | BS_FLAG_INTERRUPTABLE | BS_FLAG_FREEHANDS)) == (bodystate & (BS_MAX | BS_FLAG_INTERRUPTABLE | BS_FLAG_FREEHANDS)))
	{
		return TRUE;
	}
	else
	{
		return FALSE;
	};
};

func int c_enemyisundead(var C_Npc slf)
{
	if((slf.guild == GIL_GOBBO_SKELETON) || (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_SKELETON) || (slf.guild == GIL_SUMMONED_GOBBO_SKELETON) || (slf.guild == GIL_SKELETON) || (slf.guild == GIL_SUMMONED_SKELETON) || (slf.guild == GIL_SKELETON_MAGE) || (slf.guild == GIL_ZOMBIE) || (slf.guild == GIL_SHADOWBEAST_SKELETON) || (slf.guild == GIL_UNDEADORC) || (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_UNDEAD))
	{
		return TRUE;
	};
	return FALSE;
};

func void b_mm_assesscs(var C_Npc self)
{
	var int kritdmg;
	if(c_bodystatecontainsadd(other,BS_HIT) && Npc_IsInFightMode(other,FMODE_MELEE) && !Npc_IsInState(self,ZS_Attack) && !Npc_IsInState(self,ZS_MM_Attack))
	{
		kritdmg = other.level + other.attribute[ATR_DEXTERITY] + BACKSTAB;
		B_MagicHurtNpc(other,self,kritdmg);
		PrintScreen("Critical hit!",-1,40,FONT_SCREENBRIGHTLARGE,2);
	};
};

func void B_BeliarsWeaponSpecialDamage(var C_Npc oth,var C_Npc slf)
{
	var int RavenRandy;
	var int ravenrandclawdmg;
	var int heroclawdmg;
	var int DamageRandy;
	var int dmgforevil_01;
	var int dmgforevil_02;
	var int dmgforevil_03;
	var int masterdmg;
	var int greatbowdmg;
	var int armordmg;
	var int trollstun;
	var int trollsdmg;
	var int dragoncrit;
	var int dragoncritdmg;
	var int weapstun;
	var int weapstundmg;
	if(Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(Raven))
	{
		ravenrandclawdmg = Hlp_Random(50);
		Wld_PlayEffect("spellFX_BELIARSRAGE_COLLIDE",slf,slf,0,0,0,FALSE);
		if(RavenBlitz <= 0)
		{
			Wld_PlayEffect("spellFX_BELIARSRAGE",oth,oth,0,0,0,FALSE);
			B_MagicHurtNpc(slf,oth,ravenrandclawdmg);
			RavenBlitz += 1;
		}
		else if(RavenBlitz >= 3)
		{
			RavenRandy = Hlp_Random(3);
			if(RavenRandy <= 50)
			{
				RavenBlitz = 0;
			};
		}
		else
		{
			RavenBlitz += 1;
		};
	}
	else if(Hlp_GetInstanceID(oth) == Hlp_GetInstanceID(hero))
	{
		DamageRandy = Hlp_Random(100);
		heroclawdmg = 25 + Hlp_Random(75);
		if(C_ScHasReadiedBeliarsWeapon() && (DamageRandy <= BeliarDamageChance))
		{
			if(slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_UNDEAD)
			{
				Wld_PlayEffect("spellFX_BELIARSRAGE",oth,oth,0,0,0,FALSE);
				B_MagicHurtNpc(slf,oth,heroclawdmg);
			}
			else if((slf.flags != NPC_FLAG_IMMORTAL) && !c_bodystatecontainsadd(slf,BS_PARADE))
			{
				Wld_PlayEffect("spellFX_BELIARSRAGE",slf,slf,0,0,0,FALSE);
				B_MagicHurtNpc(oth,slf,heroclawdmg);
			};
			Wld_PlayEffect("spellFX_BELIARSRAGE_COLLIDE",hero,hero,0,0,0,FALSE);
		};
		if(C_ScHasReadiedBeliarsWeapon() && (DamageRandy <= 50))
		{
			Wld_PlayEffect("spellFX_BELIARSRAGE_COLLIDE",hero,hero,0,0,0,FALSE);
		};
	};
	if(Hlp_GetInstanceID(oth) == Hlp_GetInstanceID(hero))
	{
		if(c_schasreadiedblessedweapon_01())
		{
			dmgforevil_01 = 25 + Hlp_Random(25);
			if(c_enemyisundead(self) && !c_bodystatecontainsadd(self,BS_PARADE) && c_bodystatecontainsadd(self,BS_STUMBLE))
			{
				Wld_PlayEffect("VOB_EVILBURN",slf,slf,0,0,0,FALSE);
				B_MagicHurtNpc(oth,slf,dmgforevil_01);
			};
		};
		if(c_schasreadiedblessedweapon_02())
		{
			dmgforevil_02 = 40 + Hlp_Random(40);
			if(c_enemyisundead(self) && !c_bodystatecontainsadd(self,BS_PARADE) && c_bodystatecontainsadd(self,BS_STUMBLE))
			{
				Wld_PlayEffect("VOB_EVILBURN",slf,slf,0,0,0,FALSE);
				B_MagicHurtNpc(oth,slf,dmgforevil_02);
			};
		};
		if(c_schasreadiedblessedweapon_03())
		{
			dmgforevil_03 = 55 + Hlp_Random(55);
			if(c_enemyisundead(self) && !c_bodystatecontainsadd(self,BS_PARADE) && c_bodystatecontainsadd(self,BS_STUMBLE))
			{
				Wld_PlayEffect("VOB_EVILBURN",slf,slf,0,0,0,FALSE);
				B_MagicHurtNpc(oth,slf,dmgforevil_03);
			};
		};
		if(c_schasreadiedmasterweapon())
		{
			masterdmg = other.level + (other.attribute[ATR_DEXTERITY] / 2);
			if(((self.guild == GIL_ORC) || (self.guild == GIL_DRACONIAN) || (self.guild == GIL_SKELETON) || (self.guild < GIL_SEPERATOR_HUM) || (self.aivar[AIV_MM_REAL_ID] == ID_D_RAGE)) && c_bodystatecontainsadd(self,BS_PARADE))
			{
				AI_PlayAni(other,"S_ATTACK_MASTER");
				AI_PlayAni(self,"T_STUMBLEB");
				B_MagicHurtNpc(other,self,masterdmg);
			};
		};
		if(c_schasreadiedgreatbow())
		{
			greatbowdmg = other.level + (other.attribute[ATR_DEXTERITY] / 2);
			trollstun = Hlp_Random(5);
			trollsdmg = 35 + Hlp_Random(35);
			if(self.guild == GIL_TROLL)
			{
				B_MagicHurtNpc(oth,slf,greatbowdmg);
				if((trollstun == 2) || (trollstun == 4))
				{
					B_MagicHurtNpc(oth,slf,trollsdmg);
					AI_PlayAni(self,"T_STUMBLEB");
				};
			};
		};
		if(c_schasreadiedhsweapon())
		{
			armordmg = Hlp_Random(25) + (other.attribute[ATR_STRENGTH] / 4);
			if(((self.aivar[90] == TRUE) || (self.guild == GIL_PAL)) && c_bodystatecontainsadd(self,BS_STUMBLE) && (Npc_GetDistToNpc(self,hero) < 350))
			{
				B_MagicHurtNpc(oth,slf,armordmg);
				Snd_Play("METAL_HEAVY");
			};
		};
		if(c_schasreadieddragonslayer())
		{
			dragoncrit = Hlp_Random(7);
			dragoncritdmg = Hlp_Random(25) + (other.attribute[ATR_STRENGTH] / 4);
			if(self.guild == GIL_DRAGON)
			{
				B_MagicHurtNpc(oth,slf,dragoncritdmg);
				Snd_Play("DRG_DS");
				if((dragoncrit == 2) || (dragoncrit == 5))
				{
					B_MagicHurtNpc(oth,slf,dragoncritdmg);
					Snd_Play("DRG_HURT_A3");
				};
			};
		};
		if(c_schasreadiedstunweapon())
		{
			weapstun = Hlp_Random(7);
			weapstundmg = Hlp_Random(35) + (other.attribute[ATR_STRENGTH] / 4);
			if(((self.guild < GIL_SEPERATOR_HUM) || (self.guild == GIL_ORC) || (self.guild == GIL_DRACONIAN)) && c_bodystatecontainsadd(self,BS_STUMBLE) && (Npc_GetDistToNpc(self,hero) < 350))
			{
				if((weapstun == 3) || (weapstun == 5))
				{
					B_MagicHurtNpc(oth,slf,armordmg);
					Snd_Play("BLUNT_FLESH");
					AI_PlayAni(self,"T_BASH");
					AI_Wait(self,1);
				};
			};
		};
		if((Npc_GetDistToNpc(self,other) < 355) && !Npc_CanSeeNpc(self,other))
		{
			b_mm_assesscs(self);
		};
	};
};

