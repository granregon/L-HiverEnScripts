
var int hero_itmw_1hfs;
var int hero_itsh_1hfs;
var int morgan_1hfs;
var int morgan_bonus;
var int hero_itmw_1h_bonus;

func void mw1h_plus_equip_01()
{
	if(Npc_IsPlayer(self))
	{
		if((self.HitChance[NPC_TALENT_1H] >= 100) || (self.HitChance[NPC_TALENT_1H] <= 0))
		{
			HERO_ITMW_1HFS = 0;
		}
		else if((self.HitChance[NPC_TALENT_1H] <= 99) && (self.HitChance[NPC_TALENT_1H] > 0) && (self.HitChance[NPC_TALENT_1H] < 100))
		{
			HERO_ITMW_1HFS = 1;
		};
		hero_itmw_1h_bonus = 1;
		B_AddFightSkill(self,NPC_TALENT_1H,HERO_ITMW_1HFS);
		b_meleeweaponchange(HERO_ITMW_1HFS,0,0);
	};
};

func void mw1h_plus_unequip_01()
{
	if(Npc_IsPlayer(self) && (MELEEWEAPONCHANGEDHERO || (SCRIPTPATCHWEAPONCHANGE == FALSE)))
	{
		hero_itmw_1h_bonus = 0;
		B_AddFightSkill(self,NPC_TALENT_1H,-HERO_ITMW_1HFS);
		b_meleeweaponundochange();
	};
};

func void mw1h_plus_equip_02()
{
	if(Npc_IsPlayer(self))
	{
		if((self.HitChance[NPC_TALENT_1H] >= 100) || (self.HitChance[NPC_TALENT_1H] <= 0))
		{
			HERO_ITMW_1HFS = 0;
		}
		else if((self.HitChance[NPC_TALENT_1H] >= 99) && (self.HitChance[NPC_TALENT_1H] < 100))
		{
			HERO_ITMW_1HFS = 1;
		}
		else if((self.HitChance[NPC_TALENT_1H] <= 98) && (self.HitChance[NPC_TALENT_1H] > 0))
		{
			HERO_ITMW_1HFS = 2;
		};
		hero_itmw_1h_bonus = 2;
		B_AddFightSkill(self,NPC_TALENT_1H,HERO_ITMW_1HFS);
		b_meleeweaponchange(HERO_ITMW_1HFS,0,0);
	};
};

func void mw1h_plus_unequip_02()
{
	if(Npc_IsPlayer(self) && (MELEEWEAPONCHANGEDHERO || (SCRIPTPATCHWEAPONCHANGE == FALSE)))
	{
		hero_itmw_1h_bonus = 0;
		B_AddFightSkill(self,NPC_TALENT_1H,-HERO_ITMW_1HFS);
		b_meleeweaponundochange();
	};
};

func void mw1h_plus_equip_03()
{
	if(Npc_IsPlayer(self))
	{
		if((self.HitChance[NPC_TALENT_1H] >= 100) || (self.HitChance[NPC_TALENT_1H] <= 0))
		{
			HERO_ITMW_1HFS = 0;
		}
		else if((self.HitChance[NPC_TALENT_1H] >= 98) && (self.HitChance[NPC_TALENT_1H] < 100))
		{
			HERO_ITMW_1HFS = 100 - self.HitChance[NPC_TALENT_1H];
		}
		else if((self.HitChance[NPC_TALENT_1H] <= 97) && (self.HitChance[NPC_TALENT_1H] > 0))
		{
			HERO_ITMW_1HFS = 3;
		};
		hero_itmw_1h_bonus = 3;
		B_AddFightSkill(self,NPC_TALENT_1H,HERO_ITMW_1HFS);
		b_meleeweaponchange(HERO_ITMW_1HFS,0,0);
	};
};

func void mw1h_plus_unequip_03()
{
	if(Npc_IsPlayer(self) && (MELEEWEAPONCHANGEDHERO || (SCRIPTPATCHWEAPONCHANGE == FALSE)))
	{
		hero_itmw_1h_bonus = 0;
		B_AddFightSkill(self,NPC_TALENT_1H,-HERO_ITMW_1HFS);
		b_meleeweaponundochange();
	};
};

func void mw1h_plus_equip_04()
{
	if(Npc_IsPlayer(self))
	{
		if((self.HitChance[NPC_TALENT_1H] >= 100) || (self.HitChance[NPC_TALENT_1H] <= 0))
		{
			HERO_ITMW_1HFS = 0;
		}
		else if((self.HitChance[NPC_TALENT_1H] >= 97) && (self.HitChance[NPC_TALENT_1H] < 100))
		{
			HERO_ITMW_1HFS = 100 - self.HitChance[NPC_TALENT_1H];
		}
		else if((self.HitChance[NPC_TALENT_1H] <= 96) && (self.HitChance[NPC_TALENT_1H] > 0))
		{
			HERO_ITMW_1HFS = 4;
		};
		hero_itmw_1h_bonus = 4;
		B_AddFightSkill(self,NPC_TALENT_1H,HERO_ITMW_1HFS);
		b_meleeweaponchange(HERO_ITMW_1HFS,0,0);
	};
};

func void mw1h_plus_unequip_04()
{
	if(Npc_IsPlayer(self) && (MELEEWEAPONCHANGEDHERO || (SCRIPTPATCHWEAPONCHANGE == FALSE)))
	{
		hero_itmw_1h_bonus = 0;
		B_AddFightSkill(self,NPC_TALENT_1H,-HERO_ITMW_1HFS);
		b_meleeweaponundochange();
	};
};

func void mw1h_plus_equip_05()
{
	if(Npc_IsPlayer(self))
	{
		if((self.HitChance[NPC_TALENT_1H] >= 100) || (self.HitChance[NPC_TALENT_1H] <= 0))
		{
			HERO_ITMW_1HFS = 0;
		}
		else if((self.HitChance[NPC_TALENT_1H] >= 96) && (self.HitChance[NPC_TALENT_1H] < 100))
		{
			HERO_ITMW_1HFS = 100 - self.HitChance[NPC_TALENT_1H];
		}
		else if((self.HitChance[NPC_TALENT_1H] <= 95) && (self.HitChance[NPC_TALENT_1H] > 0))
		{
			HERO_ITMW_1HFS = 5;
		};
		hero_itmw_1h_bonus = 5;
		B_AddFightSkill(self,NPC_TALENT_1H,HERO_ITMW_1HFS);
		b_meleeweaponchange(HERO_ITMW_1HFS,0,0);
	};
};

func void mw1h_plus_unequip_05()
{
	if(Npc_IsPlayer(self) && (MELEEWEAPONCHANGEDHERO || (SCRIPTPATCHWEAPONCHANGE == FALSE)))
	{
		hero_itmw_1h_bonus = 0;
		B_AddFightSkill(self,NPC_TALENT_1H,-HERO_ITMW_1HFS);
		b_meleeweaponundochange();
	};
};

func void mw1h_plus_equip_06()
{
	if(Npc_IsPlayer(self))
	{
		if((self.HitChance[NPC_TALENT_1H] >= 100) || (self.HitChance[NPC_TALENT_1H] <= 0))
		{
			HERO_ITMW_1HFS = 0;
		}
		else if((self.HitChance[NPC_TALENT_1H] >= 95) && (self.HitChance[NPC_TALENT_1H] < 100))
		{
			HERO_ITMW_1HFS = 100 - self.HitChance[NPC_TALENT_1H];
		}
		else if((self.HitChance[NPC_TALENT_1H] <= 94) && (self.HitChance[NPC_TALENT_1H] > 0))
		{
			HERO_ITMW_1HFS = 6;
		};
		hero_itmw_1h_bonus = 6;
		B_AddFightSkill(self,NPC_TALENT_1H,HERO_ITMW_1HFS);
		b_meleeweaponchange(HERO_ITMW_1HFS,0,0);
	};
};

func void mw1h_plus_unequip_06()
{
	if(Npc_IsPlayer(self) && (MELEEWEAPONCHANGEDHERO || (SCRIPTPATCHWEAPONCHANGE == FALSE)))
	{
		hero_itmw_1h_bonus = 0;
		B_AddFightSkill(self,NPC_TALENT_1H,-HERO_ITMW_1HFS);
		b_meleeweaponundochange();
	};
};

func void mw1h_plus_equip_07()
{
	if(Npc_IsPlayer(self))
	{
		if((self.HitChance[NPC_TALENT_1H] >= 100) || (self.HitChance[NPC_TALENT_1H] <= 0))
		{
			HERO_ITMW_1HFS = 0;
		}
		else if((self.HitChance[NPC_TALENT_1H] >= 94) && (self.HitChance[NPC_TALENT_1H] < 100))
		{
			HERO_ITMW_1HFS = 100 - self.HitChance[NPC_TALENT_1H];
		}
		else if((self.HitChance[NPC_TALENT_1H] <= 93) && (self.HitChance[NPC_TALENT_1H] > 0))
		{
			HERO_ITMW_1HFS = 7;
		};
		hero_itmw_1h_bonus = 7;
		B_AddFightSkill(self,NPC_TALENT_1H,HERO_ITMW_1HFS);
		b_meleeweaponchange(HERO_ITMW_1HFS,0,0);
	};
};

func void mw1h_plus_unequip_07()
{
	if(Npc_IsPlayer(self) && (MELEEWEAPONCHANGEDHERO || (SCRIPTPATCHWEAPONCHANGE == FALSE)))
	{
		hero_itmw_1h_bonus = 0;
		B_AddFightSkill(self,NPC_TALENT_1H,-HERO_ITMW_1HFS);
		b_meleeweaponundochange();
	};
};

func void mw1h_plus_equip_08()
{
	if(Npc_IsPlayer(self))
	{
		if((self.HitChance[NPC_TALENT_1H] >= 100) || (self.HitChance[NPC_TALENT_1H] <= 0))
		{
			HERO_ITMW_1HFS = 0;
		}
		else if((self.HitChance[NPC_TALENT_1H] >= 93) && (self.HitChance[NPC_TALENT_1H] < 100))
		{
			HERO_ITMW_1HFS = 100 - self.HitChance[NPC_TALENT_1H];
		}
		else if((self.HitChance[NPC_TALENT_1H] <= 92) && (self.HitChance[NPC_TALENT_1H] > 0))
		{
			HERO_ITMW_1HFS = 8;
		};
		hero_itmw_1h_bonus = 8;
		B_AddFightSkill(self,NPC_TALENT_1H,HERO_ITMW_1HFS);
		b_meleeweaponchange(HERO_ITMW_1HFS,0,0);
	};
};

func void mw1h_plus_unequip_08()
{
	if(Npc_IsPlayer(self) && (MELEEWEAPONCHANGEDHERO || (SCRIPTPATCHWEAPONCHANGE == FALSE)))
	{
		hero_itmw_1h_bonus = 0;
		B_AddFightSkill(self,NPC_TALENT_1H,-HERO_ITMW_1HFS);
		b_meleeweaponundochange();
	};
};

func void mw1h_plus_equip_09()
{
	if(Npc_IsPlayer(self))
	{
		if((self.HitChance[NPC_TALENT_1H] >= 100) || (self.HitChance[NPC_TALENT_1H] <= 0))
		{
			HERO_ITMW_1HFS = 0;
		}
		else if((self.HitChance[NPC_TALENT_1H] >= 92) && (self.HitChance[NPC_TALENT_1H] < 100))
		{
			HERO_ITMW_1HFS = 100 - self.HitChance[NPC_TALENT_1H];
		}
		else if((self.HitChance[NPC_TALENT_1H] <= 91) && (self.HitChance[NPC_TALENT_1H] > 0))
		{
			HERO_ITMW_1HFS = 9;
		};
		hero_itmw_1h_bonus = 9;
		B_AddFightSkill(self,NPC_TALENT_1H,HERO_ITMW_1HFS);
		b_meleeweaponchange(HERO_ITMW_1HFS,0,0);
	};
};

func void mw1h_plus_unequip_09()
{
	if(Npc_IsPlayer(self) && (MELEEWEAPONCHANGEDHERO || (SCRIPTPATCHWEAPONCHANGE == FALSE)))
	{
		hero_itmw_1h_bonus = 0;
		B_AddFightSkill(self,NPC_TALENT_1H,-HERO_ITMW_1HFS);
		b_meleeweaponundochange();
	};
};

func void mw1h_plus_equip_10()
{
	if(Npc_IsPlayer(self))
	{
		if((self.HitChance[NPC_TALENT_1H] >= 100) || (self.HitChance[NPC_TALENT_1H] <= 0))
		{
			HERO_ITMW_1HFS = 0;
		}
		else if((self.HitChance[NPC_TALENT_1H] >= 91) && (self.HitChance[NPC_TALENT_1H] < 100))
		{
			HERO_ITMW_1HFS = 100 - self.HitChance[NPC_TALENT_1H];
		}
		else if((self.HitChance[NPC_TALENT_1H] <= 90) && (self.HitChance[NPC_TALENT_1H] > 0))
		{
			HERO_ITMW_1HFS = 10;
		};
		hero_itmw_1h_bonus = 10;
		B_AddFightSkill(self,NPC_TALENT_1H,HERO_ITMW_1HFS);
		b_meleeweaponchange(HERO_ITMW_1HFS,0,0);
	};
};

func void mw1h_plus_unequip_10()
{
	if(Npc_IsPlayer(self) && (MELEEWEAPONCHANGEDHERO || (SCRIPTPATCHWEAPONCHANGE == FALSE)))
	{
		hero_itmw_1h_bonus = 0;
		B_AddFightSkill(self,NPC_TALENT_1H,-HERO_ITMW_1HFS);
		b_meleeweaponundochange();
	};
};

func void glamdring_equip_10()
{
	if(Npc_IsPlayer(self))
	{
		if((self.HitChance[NPC_TALENT_1H] >= 100) || (self.HitChance[NPC_TALENT_1H] <= 0))
		{
			HERO_ITMW_1HFS = 0;
		}
		else if((self.HitChance[NPC_TALENT_1H] >= 91) && (self.HitChance[NPC_TALENT_1H] < 100))
		{
			HERO_ITMW_1HFS = 100 - self.HitChance[NPC_TALENT_1H];
		}
		else if((self.HitChance[NPC_TALENT_1H] <= 90) && (self.HitChance[NPC_TALENT_1H] > 0))
		{
			HERO_ITMW_1HFS = 10;
		};
		hero_itmw_1h_bonus = 10;
		self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] + 30;
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] + 30;
		B_AddFightSkill(self,NPC_TALENT_1H,HERO_ITMW_1HFS);
		b_meleeweaponchange(HERO_ITMW_1HFS,0,30);
	};
};

func void glamdring_unequip_10()
{
	if(Npc_IsPlayer(self) && (MELEEWEAPONCHANGEDHERO || (SCRIPTPATCHWEAPONCHANGE == FALSE)))
	{
		hero_itmw_1h_bonus = 0;
		B_AddFightSkill(self,NPC_TALENT_1H,-HERO_ITMW_1HFS);
		self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] - 30;
		if(self.attribute[ATR_MANA] > 30)
		{
			self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - 30;
		}
		else
		{
			self.attribute[ATR_MANA] = 0;
		};
		b_meleeweaponundochange();
	};
};

func void mw1h_minus_equip_10()
{
	if(Npc_IsPlayer(self))
	{
		if(self.HitChance[NPC_TALENT_1H] >= 25)
		{
			HERO_ITMW_1HFS = 10;
		}
		else if((self.HitChance[NPC_TALENT_1H] <= 24) && (self.HitChance[NPC_TALENT_1H] > 15))
		{
			HERO_ITMW_1HFS = self.HitChance[NPC_TALENT_1H] - 15;
		}
		else if(self.HitChance[NPC_TALENT_1H] <= 15)
		{
			HERO_ITMW_1HFS = 0;
		};
		hero_itmw_1h_bonus = -10;
		B_AddFightSkill(self,NPC_TALENT_1H,-HERO_ITMW_1HFS);
		b_meleeweaponchange(HERO_ITMW_1HFS,0,0);
	};
};

func void mw1h_minus_unequip_10()
{
	if(Npc_IsPlayer(self) && (MELEEWEAPONCHANGEDHERO || (SCRIPTPATCHWEAPONCHANGE == FALSE)))
	{
		hero_itmw_1h_bonus = 0;
		B_AddFightSkill(self,NPC_TALENT_1H,HERO_ITMW_1HFS);
		b_meleeweaponundochange();
	};
};

func void morgan_equip_10()
{
	if(Npc_IsPlayer(self))
	{
		if((self.HitChance[NPC_TALENT_1H] >= 100) || (self.HitChance[NPC_TALENT_1H] <= 0))
		{
			MORGAN_1HFS = 0;
		}
		else if((self.HitChance[NPC_TALENT_1H] >= 91) && (self.HitChance[NPC_TALENT_1H] < 100))
		{
			MORGAN_1HFS = 100 - self.HitChance[NPC_TALENT_1H];
		}
		else if((self.HitChance[NPC_TALENT_1H] <= 90) && (self.HitChance[NPC_TALENT_1H] > 0))
		{
			MORGAN_1HFS = 10;
		};
		morgan_bonus = 10;
		B_AddFightSkill(self,NPC_TALENT_1H,MORGAN_1HFS);
	};
};

func void morgan_unequip_10()
{
	if(Npc_IsPlayer(self))
	{
		morgan_bonus = 0;
		B_AddFightSkill(self,NPC_TALENT_1H,-MORGAN_1HFS);
	};
};

func void b_sh_equip(var C_Npc self)
{
	self.aivar[91] = TRUE;
};

func void b_sh_unequip(var C_Npc self)
{
	self.aivar[91] = FALSE;
};


var int shield_normal_hp;

func void b_sh_hpraise(var C_Npc self,var int shhp)
{
	if(Npc_IsPlayer(self))
	{
		if(self.attribute[ATR_HITPOINTS] >= shhp)
		{
			self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] + shhp;
			self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] + shhp;
			SHIELD_NORMAL_HP = TRUE;
		}
		else
		{
			self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] + shhp;
			SHIELD_NORMAL_HP = FALSE;
		};
	};
};

func void b_sh_hpraise_unequip(var C_Npc self,var int shhp_unequip)
{
	if(Npc_IsPlayer(self))
	{
		self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] - shhp_unequip;
		if((SHIELD_NORMAL_HP == TRUE) && ((self.attribute[ATR_HITPOINTS] - shhp_unequip) < 2))
		{
			self.attribute[ATR_HITPOINTS] = 2;
		}
		else if(SHIELD_NORMAL_HP == TRUE)
		{
			self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] - shhp_unequip;
			SHIELD_NORMAL_HP = FALSE;
		};
	};
};

func void b_sworddef(var C_Npc self,var int edge_def)
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF + edge_def;
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};

var int real_1h_talent;

func void b_shfs_equip_17()
{
	if(Npc_IsPlayer(self))
	{
		real_1h_talent = 5 + self.aivar[REAL_TALENT_1H] + morgan_bonus + hero_itmw_1h_bonus;
		if(self.HitChance[NPC_TALENT_1H] >= 17)
		{
			if(real_1h_talent > 100) 
			{
				HERO_ITSH_1HFS = 100 - (real_1h_talent - 17);
			} else {
				HERO_ITSH_1HFS = 17;
			};

			if(HERO_ITSH_1HFS < 0) 
			{
				HERO_ITSH_1HFS = 0;
			};
		}
		else if(self.HitChance[NPC_TALENT_1H] < 17)
		{
			HERO_ITSH_1HFS = self.HitChance[NPC_TALENT_1H];
		};
		B_AddFightSkill(self,NPC_TALENT_1H,-HERO_ITSH_1HFS);
	};
};

func void b_shfs_unequip_17()
{
	if(Npc_IsPlayer(self))
	{
		B_AddFightSkill(self,NPC_TALENT_1H,HERO_ITSH_1HFS);
	};
};

func void b_shfs_equip_15()
{
	if(Npc_IsPlayer(self))
	{
		real_1h_talent = 5 + self.aivar[REAL_TALENT_1H] + morgan_bonus + hero_itmw_1h_bonus;
		Print(ConcatStrings("REAL 1h is:",IntToString(real_1h_talent)));
		if(self.HitChance[NPC_TALENT_1H] >= 15)
		{
			if(real_1h_talent > 100) 
			{
				HERO_ITSH_1HFS = 100 - (real_1h_talent - 15);
			} else {
				HERO_ITSH_1HFS = 15;
			};

			if(HERO_ITSH_1HFS < 0) 
			{
				HERO_ITSH_1HFS = 0;
			};
		}
		else if(self.HitChance[NPC_TALENT_1H] < 15)
		{
			HERO_ITSH_1HFS = self.HitChance[NPC_TALENT_1H];
		};
		B_AddFightSkill(self,NPC_TALENT_1H,-HERO_ITSH_1HFS);
	};
};

func void b_shfs_unequip_15()
{
	if(Npc_IsPlayer(self))
	{
		B_AddFightSkill(self,NPC_TALENT_1H,HERO_ITSH_1HFS);
	};
};

func void b_shfs_equip_12()
{
	if(Npc_IsPlayer(self))
	{
		real_1h_talent = 5 + self.aivar[REAL_TALENT_1H] + morgan_bonus + hero_itmw_1h_bonus;
		if(self.HitChance[NPC_TALENT_1H] >= 12)
		{
			if(real_1h_talent > 100) 
			{
				HERO_ITSH_1HFS = 100 - (real_1h_talent - 12);
			} else {
				HERO_ITSH_1HFS = 12;
			};

			if(HERO_ITSH_1HFS < 0) 
			{
				HERO_ITSH_1HFS = 0;
			};
		}
		else if(self.HitChance[NPC_TALENT_1H] < 12)
		{
			HERO_ITSH_1HFS = self.HitChance[NPC_TALENT_1H];
		};
		B_AddFightSkill(self,NPC_TALENT_1H,-HERO_ITSH_1HFS);
	};
};

func void b_shfs_unequip_12()
{
	if(Npc_IsPlayer(self))
	{
		B_AddFightSkill(self,NPC_TALENT_1H,HERO_ITSH_1HFS);
	};
};

func void b_shfs_equip_10()
{
	if(Npc_IsPlayer(self))
	{
		real_1h_talent = 5 + self.aivar[REAL_TALENT_1H] + morgan_bonus + hero_itmw_1h_bonus;
		if(self.HitChance[NPC_TALENT_1H] >= 10)
		{
			if(real_1h_talent > 100) 
			{
				HERO_ITSH_1HFS = 100 - (real_1h_talent - 10);
			} else {
				HERO_ITSH_1HFS = 10;
			};

			if(HERO_ITSH_1HFS < 0) 
			{
				HERO_ITSH_1HFS = 0;
			};
		}
		else if(self.HitChance[NPC_TALENT_1H] < 10)
		{
			HERO_ITSH_1HFS = self.HitChance[NPC_TALENT_1H];
		};
		B_AddFightSkill(self,NPC_TALENT_1H,-HERO_ITSH_1HFS);
	};
};

func void b_shfs_unequip_10()
{
	if(Npc_IsPlayer(self))
	{
		B_AddFightSkill(self,NPC_TALENT_1H,HERO_ITSH_1HFS);
	};
};

func void b_shfs_equip_7()
{
	if(Npc_IsPlayer(self))
	{
		real_1h_talent = 5 + self.aivar[REAL_TALENT_1H] + morgan_bonus + hero_itmw_1h_bonus;
		if(self.HitChance[NPC_TALENT_1H] >= 7)
		{
			if(real_1h_talent > 100) 
			{
				HERO_ITSH_1HFS = 100 - (real_1h_talent - 7);
			} else {
				HERO_ITSH_1HFS = 7;
			};

			if(HERO_ITSH_1HFS < 0) 
			{
				HERO_ITSH_1HFS = 0;
			};
		}
		else if(self.HitChance[NPC_TALENT_1H] < 7)
		{
			HERO_ITSH_1HFS = self.HitChance[NPC_TALENT_1H];
		};
		B_AddFightSkill(self,NPC_TALENT_1H,-HERO_ITSH_1HFS);
	};
};

func void b_shfs_unequip_7()
{
	if(Npc_IsPlayer(self))
	{
		B_AddFightSkill(self,NPC_TALENT_1H,HERO_ITSH_1HFS);
	};
};

func void b_shfs_equip_5()
{
	if(Npc_IsPlayer(self))
	{
		real_1h_talent = 5 + self.aivar[REAL_TALENT_1H] + morgan_bonus + hero_itmw_1h_bonus;
		if(self.HitChance[NPC_TALENT_1H] >= 5)
		{
			if(real_1h_talent > 100) 
			{
				HERO_ITSH_1HFS = 100 - (real_1h_talent - 5);
			} else {
				HERO_ITSH_1HFS = 5;
			};

			if(HERO_ITSH_1HFS < 0) 
			{
				HERO_ITSH_1HFS = 0;
			};
		}
		else if(self.HitChance[NPC_TALENT_1H] < 5)
		{
			HERO_ITSH_1HFS = self.HitChance[NPC_TALENT_1H];
		};
		B_AddFightSkill(self,NPC_TALENT_1H,-HERO_ITSH_1HFS);
	};
};

func void b_shfs_unequip_5()
{
	if(Npc_IsPlayer(self))
	{
		B_AddFightSkill(self,NPC_TALENT_1H,HERO_ITSH_1HFS);
	};
};

func void b_shfs_equip_4()
{
	if(Npc_IsPlayer(self))
	{
		real_1h_talent = 5 + self.aivar[REAL_TALENT_1H] + morgan_bonus + hero_itmw_1h_bonus;
		if(self.HitChance[NPC_TALENT_1H] >= 4)
		{
			if(real_1h_talent > 100) 
			{
				HERO_ITSH_1HFS = 100 - (real_1h_talent - 4);
			} else {
				HERO_ITSH_1HFS = 4;
			};

			if(HERO_ITSH_1HFS < 0) 
			{
				HERO_ITSH_1HFS = 0;
			};
		}
		else if(self.HitChance[NPC_TALENT_1H] < 4)
		{
			HERO_ITSH_1HFS = self.HitChance[NPC_TALENT_1H];
		};
		B_AddFightSkill(self,NPC_TALENT_1H,-HERO_ITSH_1HFS);
	};
};

func void b_shfs_unequip_4()
{
	if(Npc_IsPlayer(self))
	{
		B_AddFightSkill(self,NPC_TALENT_1H,HERO_ITSH_1HFS);
	};
};

func void b_shfs_equip_3()
{
	if(Npc_IsPlayer(self))
	{
		real_1h_talent = 5 + self.aivar[REAL_TALENT_1H] + morgan_bonus + hero_itmw_1h_bonus;
		if(self.HitChance[NPC_TALENT_1H] >= 3)
		{
			if(real_1h_talent > 100) 
			{
				HERO_ITSH_1HFS = 100 - (real_1h_talent - 3);
			} else {
				HERO_ITSH_1HFS = 3;
			};

			if(HERO_ITSH_1HFS < 0) 
			{
				HERO_ITSH_1HFS = 0;
			};
		}
		else if(self.HitChance[NPC_TALENT_1H] < 3)
		{
			HERO_ITSH_1HFS = self.HitChance[NPC_TALENT_1H];
		};
		B_AddFightSkill(self,NPC_TALENT_1H,-HERO_ITSH_1HFS);
	};
};

func void b_shfs_unequip_3()
{
	if(Npc_IsPlayer(self))
	{
		B_AddFightSkill(self,NPC_TALENT_1H,HERO_ITSH_1HFS);
	};
};

