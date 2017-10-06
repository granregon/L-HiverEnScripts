
const int VALUE_ITAR_PIR_L_Addon = 1100;
const int VALUE_ITAR_PIR_M_Addon = 1300;
const int VALUE_ITAR_PIR_H_Addon = 1500;
const int VALUE_ITAR_Raven_Addon = 1300;
const int VALUE_Itar_OreBaron_Addon = 1300;
const int VALUE_ITAR_LEE_ADDON = 7500;
const int VALUE_ITAR_LHBO_ADDON = 11000;
const int VALUE_ITAR_RANGER_Addon = 1300;
const int VALUE_ITAR_GERALT_ADDON = 510;
const int VALUE_ITAR_TROLL_ADDON = 810;
const int VALUE_ITAR_WMA_ADDON = 1315;
const int VALUE_ITAR_NADJA_ADDON = 700;

instance ITAR_PIR_L_Addon(C_Item)
{
	name = "Pirate clothes";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 30;
	protection[PROT_BLUNT] = 30;
	protection[PROT_POINT] = 30;
	protection[PROT_FIRE] = 0;
	protection[PROT_MAGIC] = 0;
	value = VALUE_ITAR_PIR_L_Addon;
	wear = WEAR_TORSO;
	visual = "ItAr_PIR_L_ADDON.3ds";
	visual_change = "Armor_Pir_L_Addon.ASC";
	visual_skin = 0;
	material = MAT_LEATHER;
	on_equip = equip_pir_l_addon;
	on_unequip = unequip_pir_l_addon;
	description = name;
	text[0] = NAME_Prot_Edge;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};


func void equip_pir_l_addon()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF + (30 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};

func void unequip_pir_l_addon()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF - (30 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};


instance ITAR_PIR_M_Addon(C_Item)
{
	name = "Pirate armor";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 40;
	protection[PROT_BLUNT] = 40;
	protection[PROT_POINT] = 40;
	protection[PROT_FIRE] = 0;
	protection[PROT_MAGIC] = 0;
	value = VALUE_ITAR_PIR_M_Addon;
	wear = WEAR_TORSO;
	visual = "ItAr_PIR_M_ADDON.3ds";
	visual_change = "Armor_PIR_M_ADDON.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	on_equip = equip_pir_m_addon;
	on_unequip = unequip_pir_m_addon;
	description = name;
	text[0] = NAME_Prot_Edge;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};


func void equip_pir_m_addon()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF + (40 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};

func void unequip_pir_m_addon()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF - (40 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};


instance ITAR_PIR_H_Addon(C_Item)
{
	name = "Captain's clothes";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 50;
	protection[PROT_BLUNT] = 50;
	protection[PROT_POINT] = 50;
	protection[PROT_FIRE] = 0;
	protection[PROT_MAGIC] = 0;
	value = VALUE_ITAR_PIR_H_Addon;
	wear = WEAR_TORSO;
	visual = "ItAr_PIR_H_ADDON.3ds";
	visual_change = "Armor_PIR_H_ADDON.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	on_equip = equip_pir_h_addon;
	on_unequip = unequip_pir_h_addon;
	description = name;
	text[0] = NAME_Prot_Edge;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};


func void equip_pir_h_addon()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF + (50 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};

func void unequip_pir_h_addon()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF - (50 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};


instance ITAR_Raven_Addon(C_Item)
{
	name = "Raven's armor";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 80;
	protection[PROT_BLUNT] = 80;
	protection[PROT_POINT] = 80;
	protection[PROT_FIRE] = 80;
	protection[PROT_MAGIC] = 30;
	value = VALUE_ITAR_Raven_Addon;
	wear = WEAR_TORSO;
	visual = "ItAr_Raven_ADDON.3ds";
	visual_change = "Armor_Raven_ADDON.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	on_equip = equip_raven_addon;
	on_unequip = unequip_raven_addon;
	description = name;
	text[0] = NAME_Prot_Edge;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};


func void equip_raven_addon()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF + (80 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};

func void unequip_raven_addon()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF - (80 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};


instance ITAR_OreBaron_Addon(C_Item)
{
	name = "Ore Baron armor";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 65;
	protection[PROT_BLUNT] = 60;
	protection[PROT_POINT] = 45;
	protection[PROT_FIRE] = 20;
	protection[PROT_MAGIC] = 30;
	value = VALUE_Itar_OreBaron_Addon;
	wear = WEAR_TORSO;
	visual = "ItAr_CHAOS_ADDON.3ds";
	visual_change = "Armor_CHAOS_ADDON.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	on_equip = equip_orebaron_addon;
	on_unequip = unequip_orebaron_addon;
	description = name;
	text[0] = NAME_Prot_Edge;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};


func void equip_orebaron_addon()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF + (65 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};

func void unequip_orebaron_addon()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF - (65 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};


instance ITAR_RANGER_Addon(C_Item)
{
	name = "Armor of the 'Ring of Water'";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 38;
	protection[PROT_BLUNT] = 30;
	protection[PROT_POINT] = 20;
	protection[PROT_FIRE] = 10;
	protection[PROT_MAGIC] = 10;
	value = VALUE_ITAR_RANGER_Addon;
	wear = WEAR_TORSO;
	visual = "ItAr_Ranger_ADDON.3ds";
	visual_change = "Armor_Ranger_ADDON.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	on_equip = equip_ranger_addon;
	on_unequip = unequip_ranger_addon;
	description = name;
	text[0] = NAME_Prot_Edge;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};


func void equip_ranger_addon()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF + (38 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};

func void unequip_ranger_addon()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF - (38 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};


instance ITAR_Fake_RANGER(C_Item)
{
	name = "Broken armor";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 0;
	protection[PROT_BLUNT] = 0;
	protection[PROT_POINT] = 0;
	protection[PROT_FIRE] = 0;
	protection[PROT_MAGIC] = 0;
	value = VALUE_ITAR_RANGER_Addon;
	wear = WEAR_TORSO;
	visual = "ItAr_Ranger_ADDON.3ds";
	visual_change = "Armor_Ranger_ADDON.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	on_equip = equip_fake_ranger;
	on_unequip = unequip_fake_ranger;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};


func void equip_fake_ranger()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF + (0 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};

func void unequip_fake_ranger()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF - (0 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};

func void equip_bloodwyn_addon()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF + (60 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};

func void unequip_bloodwyn_addon()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF - (60 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};


instance ITAR_MayaZombie_Addon(C_Item)
{
	name = "Old armor";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 50;
	protection[PROT_BLUNT] = 50;
	protection[PROT_POINT] = 50;
	protection[PROT_FIRE] = 50;
	protection[PROT_MAGIC] = 50;
	value = 0;
	wear = WEAR_TORSO;
	visual = "ItAr_Raven_ADDON.3ds";
	visual_change = "Armor_MayaZombie_Addon.asc";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = equip_mayazombie_addon;
	on_unequip = unequip_mayazombie_addon;
	description = name;
	text[0] = NAME_Prot_Edge;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
};


func void equip_mayazombie_addon()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF + (50 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};

func void unequip_mayazombie_addon()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF - (50 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};


instance ITAR_BM_L(C_Item)
{
	name = "Light battle-mage armor";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 65;
	protection[PROT_BLUNT] = 55;
	protection[PROT_POINT] = 35;
	protection[PROT_FIRE] = 15;
	protection[PROT_MAGIC] = 75;
	value = VALUE_ITAR_LEE_ADDON;
	wear = WEAR_TORSO;
	visual = "ItAr_BM_L.3ds";
	visual_change = "ARMOR_BM_L.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	on_equip = equip_bm_l;
	on_unequip = unequip_bm_l;
	description = name;
	text[0] = NAME_Prot_Edge;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};


func void equip_bm_l()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF + (65 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};

func void unequip_bm_l()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF - (65 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};


instance ITAR_BM_M(C_Item)
{
	name = "Heavy battle-mage armor";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 70;
	protection[PROT_BLUNT] = 60;
	protection[PROT_POINT] = 40;
	protection[PROT_FIRE] = 15;
	protection[PROT_MAGIC] = 80;
	value = VALUE_ITAR_LEE_ADDON;
	wear = WEAR_TORSO;
	visual = "ItAr_BM_L.3ds";
	visual_change = "ARMOR_BM_M.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	on_equip = equip_bm_m;
	on_unequip = unequip_bm_m;
	description = name;
	text[0] = NAME_Prot_Edge;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};


func void equip_bm_m()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF + (70 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};

func void unequip_bm_m()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF - (70 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};


instance ItAr_FireArmor_Addon(C_Item)
{
	name = "Magic armor";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 60;
	protection[PROT_BLUNT] = 100;
	protection[PROT_POINT] = 50;
	protection[PROT_FIRE] = 50;
	protection[PROT_MAGIC] = 50;
	value = VALUE_ITAR_XARDAS;
	wear = WEAR_TORSO;
	visual = "ItAr_Xardas.3ds";
	visual_change = "Armor_Xardas.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	on_equip = equip_firearmor_addon;
	on_unequip = unequip_firearmor_addon;
	description = name;
	text[0] = NAME_Prot_Edge;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};


func void equip_firearmor_addon()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF + (60 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};

func void unequip_firearmor_addon()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF - (60 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};


instance ITAR_LEE_ADDON(C_Item)
{
	name = "General's armor";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 80;
	protection[PROT_BLUNT] = 70;
	protection[PROT_POINT] = 50;
	protection[PROT_FIRE] = 20;
	protection[PROT_MAGIC] = 30;
	value = value_itar_lee_addon;
	wear = WEAR_TORSO;
	visual = "ItAr_CHAOS_ADDON.3ds";
	visual_change = "Armor_LEE_ADDON.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	on_equip = equip_lee_addon;
	on_unequip = unequip_lee_addon;
	description = name;
	text[0] = NAME_Prot_Edge;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};


func void equip_lee_addon()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF + (80 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};

func void unequip_lee_addon()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF - (80 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};


instance ITAR_LHBO_ADDON(C_Item)
{
	name = "Black ore armor";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 85;
	protection[PROT_BLUNT] = 80;
	protection[PROT_POINT] = 60;
	protection[PROT_FIRE] = 40;
	protection[PROT_MAGIC] = 55;
	value = value_itar_lhbo_addon;
	wear = WEAR_TORSO;
	visual = "ITAR_LHBO_ADDON.3ds";
	visual_change = "ARMOR_LHBO_ADDON.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	on_equip = equip_lhbo_addon;
	on_unequip = unequip_lhbo_addon;
	description = name;
	text[0] = NAME_Prot_Edge;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};


func void equip_lhbo_addon()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF + (85 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};

func void unequip_lhbo_addon()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF - (85 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};


instance ITAR_TROLL_ADDON(C_Item)
{
	name = "Troll hide armor";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 45;
	protection[PROT_BLUNT] = 40;
	protection[PROT_POINT] = 50;
	protection[PROT_FIRE] = 0;
	protection[PROT_MAGIC] = 20;
	value = value_itar_troll_addon;
	wear = WEAR_TORSO;
	visual = "ItAr_Troll_Add.3ds";
	visual_change = "Armor_TROLL_ADDON.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	on_equip = equip_troll_addon;
	on_unequip = unequip_troll_addon;
	description = name;
	text[0] = NAME_Prot_Edge;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};


func void equip_troll_addon()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF + (45 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};

func void unequip_troll_addon()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF - (45 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};


instance ITAR_GERALT_ADDON(C_Item)
{
	name = "Hunter's armor";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 35;
	protection[PROT_BLUNT] = 20;
	protection[PROT_POINT] = 10;
	protection[PROT_FIRE] = 10;
	protection[PROT_MAGIC] = 20;
	value = value_itar_geralt_addon;
	wear = WEAR_TORSO;
	visual = "ITAR_GERALT_ADDON.3ds";
	visual_change = "Armor_GERALT_ADDON.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	on_equip = equip_geralt_addon;
	on_unequip = unequip_geralt_addon;
	description = name;
	text[0] = NAME_Prot_Edge;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};


func void equip_geralt_addon()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF + (35 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};

func void unequip_geralt_addon()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF - (35 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};


instance ITAR_GERALT_ADDON_GRD1(C_Item)
{
	name = "Enhanced hunter's armor";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 40;
	protection[PROT_BLUNT] = 30;
	protection[PROT_POINT] = 20;
	protection[PROT_FIRE] = 15;
	protection[PROT_MAGIC] = 25;
	value = VALUE_ITAR_GERALT_ADDON;
	wear = WEAR_TORSO;
	visual = "ITAR_GERALT_ADDON.3ds";
	visual_change = "Armor_GERALT_ADDON_Grd1.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	on_equip = equip_geralt_addon_grd1;
	on_unequip = unequip_geralt_addon_grd1;
	description = name;
	text[0] = NAME_Prot_Edge;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};


func void equip_geralt_addon_grd1()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF + (40 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};

func void unequip_geralt_addon_grd1()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF - (40 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};


instance ITAR_GERALT_ADDON_GRD2(C_Item)
{
	name = "Reinforced hunter's armor";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 45;
	protection[PROT_BLUNT] = 35;
	protection[PROT_POINT] = 25;
	protection[PROT_FIRE] = 15;
	protection[PROT_MAGIC] = 30;
	value = VALUE_ITAR_GERALT_ADDON;
	wear = WEAR_TORSO;
	visual = "ITAR_GERALT_ADDON.3ds";
	visual_change = "Armor_GERALT_ADDON_Grd2.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	on_equip = equip_geralt_addon_grd2;
	on_unequip = unequip_geralt_addon_grd2;
	description = name;
	text[0] = NAME_Prot_Edge;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};


func void equip_geralt_addon_grd2()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF + (45 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};

func void unequip_geralt_addon_grd2()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF - (45 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};


instance ITAR_GERALT_ADDON_GRD3(C_Item)
{
	name = "Heavy hunter's armor";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 55;
	protection[PROT_BLUNT] = 45;
	protection[PROT_POINT] = 35;
	protection[PROT_FIRE] = 20;
	protection[PROT_MAGIC] = 35;
	value = VALUE_ITAR_GERALT_ADDON;
	wear = WEAR_TORSO;
	visual = "ITAR_GERALT_ADDON.3ds";
	visual_change = "Armor_GERALT_ADDON_Grd3.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	on_equip = equip_geralt_addon_grd3;
	on_unequip = unequip_geralt_addon_grd3;
	description = name;
	text[0] = NAME_Prot_Edge;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};


func void equip_geralt_addon_grd3()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF + (55 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};

func void unequip_geralt_addon_grd3()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF - (55 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};


instance ITAR_WMA_BASE(C_Item)
{
	name = "Master armor";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 35;
	protection[PROT_BLUNT] = 35;
	protection[PROT_POINT] = 35;
	protection[PROT_FIRE] = 20;
	protection[PROT_MAGIC] = 20;
	value = VALUE_ITAR_WMA_ADDON;
	wear = WEAR_TORSO;
	visual = "ITAR_WMA_ADDON.3ds";
	visual_change = "ARMOR_WMA_BASE.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	on_equip = equip_wma_base;
	on_unequip = unequip_wma_base;
	description = name;
	text[0] = NAME_Prot_Edge;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};


func void equip_wma_base()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF + (35 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};

func void unequip_wma_base()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF - (35 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};


instance ITAR_WMA_ASSN(C_Item)
{
	name = "Assassin's armor";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 45;
	protection[PROT_BLUNT] = 45;
	protection[PROT_POINT] = 45;
	protection[PROT_FIRE] = 20;
	protection[PROT_MAGIC] = 20;
	value = VALUE_ITAR_WMA_ADDON;
	wear = WEAR_TORSO;
	visual = "ITAR_WMA_ADDON.3ds";
	visual_change = "ARMOR_WMA_ASSN.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	on_equip = equip_wma_assn;
	on_unequip = unequip_wma_assn;
	description = name;
	text[0] = NAME_Prot_Edge;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};


func void equip_wma_assn()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF + (45 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};

func void unequip_wma_assn()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF - (45 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};


instance ITAR_WMA_ALHM(C_Item)
{
	name = "Alchemist's vesture";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 35;
	protection[PROT_BLUNT] = 35;
	protection[PROT_POINT] = 35;
	protection[PROT_FIRE] = 25;
	protection[PROT_MAGIC] = 45;
	value = VALUE_ITAR_WMA_ADDON;
	wear = WEAR_TORSO;
	visual = "ITAR_WMA_ADDON.3ds";
	visual_change = "ARMOR_WMA_ALHM.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	on_equip = equip_wma_alhm;
	on_unequip = unequip_wma_alhm;
	description = name;
	text[0] = NAME_Prot_Edge;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};


func void equip_wma_alhm()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF + (35 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};

func void unequip_wma_alhm()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF - (35 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};


instance ITAR_W2_VES(C_Item)
{
	name = "Sarah's clothes";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 30;
	protection[PROT_BLUNT] = 30;
	protection[PROT_POINT] = 20;
	protection[PROT_FIRE] = 5;
	protection[PROT_MAGIC] = 20;
	value = VALUE_ITAR_NADJA_ADDON;
	wear = WEAR_TORSO;
	visual = "ItAr_CHAOS_ADDON.3ds";
	visual_change = "ARMOR_W2_VES.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	on_equip = equip_ves_addon;
	on_unequip = unequip_ves_addon;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};


func void equip_ves_addon()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF + (30 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};

func void unequip_ves_addon()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF - (30 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};


instance ITAR_NADJA_ADDON(C_Item)
{
	name = "Corset";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 10;
	protection[PROT_BLUNT] = 10;
	protection[PROT_POINT] = 10;
	protection[PROT_FIRE] = 10;
	protection[PROT_MAGIC] = 30;
	value = value_itar_nadja_addon;
	wear = WEAR_TORSO;
	visual = "ItAr_CHAOS_ADDON.3ds";
	visual_change = "HUM_BODY_NADJA.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	on_equip = equip_nadja_addon;
	on_unequip = unequip_nadja_addon;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};


func void equip_nadja_addon()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF + (10 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};

func void unequip_nadja_addon()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF - (10 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};


instance ITAR_BARON_BABE_ADDON(C_Item)
{
	name = "Lingerie";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 10;
	protection[PROT_BLUNT] = 10;
	protection[PROT_POINT] = 10;
	protection[PROT_FIRE] = 10;
	protection[PROT_MAGIC] = 30;
	value = VALUE_ITAR_NADJA_ADDON;
	wear = WEAR_TORSO;
	visual = "ItAr_CHAOS_ADDON.3ds";
	visual_change = "HUM_BARON_BABE.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	on_equip = equip_baron_babe_addon;
	on_unequip = unequip_baron_babe_addon;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};


func void equip_baron_babe_addon()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF + (10 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};

func void unequip_baron_babe_addon()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF - (10 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};


instance ITAR_LUCIA_ADDON(C_Item)
{
	name = "Lucia's clothes";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 20;
	protection[PROT_BLUNT] = 20;
	protection[PROT_POINT] = 10;
	protection[PROT_FIRE] = 5;
	protection[PROT_MAGIC] = 30;
	value = VALUE_ITAR_NADJA_ADDON;
	wear = WEAR_TORSO;
	visual = "ItAr_CHAOS_ADDON.3ds";
	visual_change = "HUM_BODY_LUCIA.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	on_equip = equip_lucia_addon;
	on_unequip = unequip_lucia_addon;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};


func void equip_lucia_addon()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF + (20 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};

func void unequip_lucia_addon()
{
	if(Npc_IsPlayer(self))
	{
		STAT_SWORDDEF = STAT_SWORDDEF - (20 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
	};
};

