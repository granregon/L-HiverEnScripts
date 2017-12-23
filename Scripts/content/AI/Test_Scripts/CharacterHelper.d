
var int levelup;
var int LevelStart;
var int MagieStart;
var int AttributeStart;
var int KampfStart;
var int DiebStart;

instance MobsiBrief(C_Item)
{
	name = "MobsiBrief";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItWr_Scroll_02.3DS";
	material = MAT_LEATHER;
	on_state[0] = UseMobsiBrief;
	scemeName = "MAP";
	description = name;
};


func void UseMobsiBrief()
{
	var int nDocID;
	PLAYER_MOBSI_PRODUCTION = MOBSI_NONE;
	self.aivar[AIV_INVINCIBLE] = FALSE;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,0,FONT_BookHeadline);
	Doc_SetMargins(nDocID,-1,50,50,50,50,1);
	Doc_PrintLine(nDocID,0,"StandardBrief");
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Now everything will be all right again.");
	Doc_PrintLines(nDocID,0,"PLAYER_MOBSI_PRODUCTION = MOBSI_NONE;");
	Doc_PrintLines(nDocID,0,"self.aivar[AIV_INVINCIBLE] = FALSE;");
	Doc_Show(nDocID);
};


instance ItSe_Addon_Sack(C_Item)
{
	name = "The bag is full of new weapons!";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 25;
	visual = "ItFo_Fish.3DS";
	material = MAT_LEATHER;
	scemeName = "MAPSEALED";
	on_state[0] = Use_Sack;
	description = name;
	text[1] = "Many different weapons";
};


func void Use_Sack()
{
	Print("I found a stack of new weapons!");
	CreateInvItems(self,ItMw_1H_Sword_L_03,1);
	CreateInvItems(self,ItMW_Addon_Stab01,1);
	CreateInvItems(self,ItMW_Addon_Stab02,1);
	CreateInvItems(self,ItMW_Addon_Stab03,1);
	CreateInvItems(self,ItMW_Addon_Stab04,1);
	CreateInvItems(self,ItMW_Addon_Stab05,1);
	CreateInvItems(self,ItMW_Addon_Hacker_1h_01,1);
	CreateInvItems(self,ItMW_Addon_Hacker_2h_01,1);
	CreateInvItems(self,ItMW_Addon_Hacker_2h_02,1);
	CreateInvItems(self,ItMW_Addon_Hacker_1h_02,1);
	CreateInvItems(self,ItMW_Addon_Keule_1h_01,1);
	CreateInvItems(self,ItMW_Addon_Keule_2h_01,1);
};


instance ItFo_TestTrigger(C_Item)
{
	name = "Trigger 'Enter Jharkendar first time' function";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = 0;
	visual = "ItFo_Honey.3DS";
	material = MAT_STONE;
	scemeName = "FOODHUGE";
	on_state[0] = Use_TestTrigger;
	description = name;
};


func void Use_TestTrigger()
{
	enter_addonworld_firsttime_trigger_func();
};


instance CH(Npc_Default)
{
	name[0] = "Character helper";
	guild = GIL_NONE;
	id = 0;
	voice = 15;
	flags = 0;
	npcType = NPCTYPE_FRIEND;
	aivar[AIV_IgnoresArmor] = TRUE;
	B_SetAttributesToChapter(self,1);
	B_GiveNpcTalents(self);
	fight_tactic = FAI_HUMAN_MASTER;
	B_CreateAmbientInv(self);
	B_SetNpcVisual(self,MALE,"Hum_Head_Pony",Face_N_Player,BodyTex_Player,-1);
	Mdl_SetModelFatness(self,0);
	Mdl_ApplyOverlayMds(self,"Humans_Relaxed.mds");
	daily_routine = Rtn_Start_0;
};


func void Rtn_Start_0()
{
	TA_Stand_ArmsCrossed(8,0,23,0,"XXX");
	TA_Stand_ArmsCrossed(23,0,8,0,"XXX");
};

func void B_SetHeroExp()
{
	var string Attributes;
	hero.exp = 250 * (hero.level + 1) * hero.level;
	hero.exp_next = 250 * (hero.level + 2) * (hero.level + 1);
	hero.lp = hero.level * LP_PER_LEVEL;
	hero.attribute[ATR_HITPOINTS_MAX] = 40 + (10 * hero.level);
	hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
	Attributes = "Level up! Learning points: ";
	Attributes = ConcatStrings(Attributes,IntToString(hero.lp));
	Attributes = ConcatStrings(Attributes," Hitpoints: ");
	Attributes = ConcatStrings(Attributes,IntToString(hero.attribute[ATR_HITPOINTS_MAX]));
	PrintScreen(Attributes,-1,-1,FONT_Screen,3);
	Snd_Play("LEVELUP");
};

func void B_SetHeroWeapon()
{
	if(hero.level <= 6)
	{
		CreateInvItems(hero,ItRw_Crossbow_L_01,1);
	}
	else if(hero.level <= 12)
	{
		CreateInvItems(hero,ItRw_Bow_L_04,1);
		CreateInvItems(hero,ItRw_Crossbow_L_02,1);
	}
	else if(hero.level <= 18)
	{
		CreateInvItems(hero,ItRw_Bow_M_02,1);
		CreateInvItems(hero,ItRw_Crossbow_M_02,1);
	}
	else if(hero.level <= 24)
	{
		CreateInvItems(hero,ItRw_Bow_M_04,1);
		CreateInvItems(hero,ItRw_Crossbow_H_01,1);
	}
	else if(hero.level <= 30)
	{
		CreateInvItems(hero,ItRw_Bow_H_02,1);
		CreateInvItems(hero,ItRw_Crossbow_H_02,1);
	}
	else if(hero.level <= 36)
	{
		CreateInvItems(hero,ItRw_Bow_H_04,1);
		CreateInvItems(hero,ItRw_Bow_L_04,1);
	};
	AI_EquipBestMeleeWeapon(hero);
	AI_EquipBestRangedWeapon(hero);
};

func void B_SetHeroEquipment()
{
	CreateInvItems(hero,ItRw_Arrow,300);
	CreateInvItems(hero,ItLsTorch,30);
	CreateInvItems(hero,ItMi_Gold,50000);
	CreateInvItems(hero,ItPo_Health_Addon_04,25);
	CreateInvItems(hero,ItPo_Mana_Addon_04,25);
	CreateInvItems(hero,ItKE_lockpick,30);
	CreateInvItems(hero,itmw_flameberge,1);
	CreateInvItems(hero,itmw_anduril,1);
	CreateInvItems(hero,itar_geralt_addon,1);
	CreateInvItems(hero,ItRw_Bow_H_04,1);
};

func void B_SetKDFRunes()
{
	if(Npc_GetTalentSkill(hero,NPC_TALENT_MAGE) == 1)
	{
		CreateInvItems(hero,ItRu_Light,1);
		CreateInvItems(hero,ItRu_FireBolt,1);
		CreateInvItems(hero,ItRu_LightHeal,1);
		CreateInvItems(hero,ItRu_SumGobSkel,1);
		CreateInvItems(hero,ItRu_Zap,1);
	}
	else if(Npc_GetTalentSkill(hero,NPC_TALENT_MAGE) == 2)
	{
		CreateInvItems(hero,ItRu_InstantFireball,1);
		CreateInvItems(hero,ItRu_Icebolt,1);
		CreateInvItems(hero,ItRu_SumWolf,1);
		CreateInvItems(hero,ItRu_Windfist,1);
		CreateInvItems(hero,ItRu_Sleep,1);
	}
	else if(Npc_GetTalentSkill(hero,NPC_TALENT_MAGE) == 3)
	{
		CreateInvItems(hero,ItRu_MediumHeal,1);
		CreateInvItems(hero,ItRu_Firestorm,1);
		CreateInvItems(hero,ItRu_ThunderBall,1);
		CreateInvItems(hero,ItRu_SumSkel,1);
		CreateInvItems(hero,ItRu_Fear,1);
		CreateInvItems(hero,ItRu_IceCube,1);
	}
	else if(Npc_GetTalentSkill(hero,NPC_TALENT_MAGE) == 4)
	{
		CreateInvItems(hero,ItRu_SumGol,1);
		CreateInvItems(hero,ItRu_HarmUndead,1);
		CreateInvItems(hero,ItRu_LightningFlash,1);
		CreateInvItems(hero,ItRu_ChargeFireball,1);
	}
	else if(Npc_GetTalentSkill(hero,NPC_TALENT_MAGE) == 5)
	{
		CreateInvItems(hero,ItRu_Pyrokinesis,1);
		CreateInvItems(hero,ItRu_IceWave,1);
		CreateInvItems(hero,ItRu_SumDemon,1);
		CreateInvItems(hero,ItRu_FullHeal,1);
	}
	else if(Npc_GetTalentSkill(hero,NPC_TALENT_MAGE) == 6)
	{
		CreateInvItems(hero,ItRu_Firerain,1);
		CreateInvItems(hero,ItRu_BreathOfDeath,1);
		CreateInvItems(hero,ItRu_MassDeath,1);
		CreateInvItems(hero,ItRu_ArmyOfDarkness,1);
		CreateInvItems(hero,ItRu_Shrink,1);
	};
};

func void b_setkdwrunes()
{
	if(Npc_GetTalentSkill(hero,NPC_TALENT_MAGE) == 2)
	{
		CreateInvItem(hero,ItRu_Icelance);
		CreateInvItem(hero,ItRu_Whirlwind);
	}
	else if(Npc_GetTalentSkill(hero,NPC_TALENT_MAGE) == 3)
	{
		CreateInvItem(hero,ItRu_Thunderstorm);
		CreateInvItem(hero,ItRu_Geyser);
	}
	else if(Npc_GetTalentSkill(hero,NPC_TALENT_MAGE) == 4)
	{
		CreateInvItem(hero,ItRu_Waterfist);
	};
};

func void B_SetPaladinEquipment()
{
	CreateInvItems(hero,ItRu_PalLight,1);
	CreateInvItems(hero,ItRu_PalLightHeal,1);
	CreateInvItems(hero,ItRu_PalHolyBolt,1);
	CreateInvItems(hero,ItRu_PalMediumHeal,1);
	CreateInvItems(hero,ItRu_PalRepelEvil,1);
	CreateInvItems(hero,ItRu_PalFullHeal,1);
	CreateInvItems(hero,ItRu_PalDestroyEvil,1);
	CreateInvItems(hero,ItRu_PalTeleportSecret,1);
};


instance CH_Exit(C_Info)
{
	npc = ch;
	nr = 999;
	condition = CH_Exit_Condition;
	information = CH_Exit_Info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int CH_Exit_Condition()
{
	if((LevelStart == FALSE) && (MagieStart == FALSE) && (AttributeStart == FALSE) && (KampfStart == FALSE) && (DiebStart == FALSE) && (LEVELUP == FALSE))
	{
		return TRUE;
	};
};

func void CH_Exit_Info()
{
	AI_StopProcessInfos(self);
	LEVELUP = FALSE;
	LevelStart = FALSE;
	MagieStart = FALSE;
	AttributeStart = FALSE;
	KampfStart = FALSE;
	DiebStart = FALSE;
};


instance CH_RESET(C_Info)
{
	npc = ch;
	nr = 20;
	condition = CH_RESET_Condition;
	information = CH_RESET_Info;
	permanent = TRUE;
	description = "Total character reset";
};


func int CH_RESET_Condition()
{
	if(LevelStart == TRUE)
	{
		return TRUE;
	};
};

func void CH_RESET_Info()
{
	hero.guild = GIL_NONE;
	Npc_SetTrueGuild(hero,GIL_NONE);
	hero.lp = 10;
	hero.level = 1;
	hero.exp = 24990;
	hero.exp_next = 25000;
	hero.attribute[ATR_STRENGTH] = 10;
	hero.attribute[ATR_DEXTERITY] = 10;
	hero.attribute[ATR_MANA_MAX] = 10;
	hero.attribute[ATR_MANA] = 10;
	hero.attribute[ATR_HITPOINTS] = 10;
	hero.attribute[ATR_HITPOINTS_MAX] = 10;
	Npc_SetTalentSkill(hero,NPC_TALENT_ALCHEMY,0);
	Npc_SetTalentSkill(hero,NPC_TALENT_RUNES,0);
	Npc_SetTalentSkill(hero,NPC_TALENT_MAGE,0);
	Npc_SetTalentSkill(hero,NPC_TALENT_BOW,0);
	other.HitChance[NPC_TALENT_BOW] = 1;
	Npc_SetTalentSkill(hero,NPC_TALENT_CROSSBOW,0);
	other.HitChance[NPC_TALENT_CROSSBOW] = 1;
	Npc_SetTalentSkill(hero,NPC_TALENT_1H,0);
	other.HitChance[NPC_TALENT_1H] = 1;
	Npc_SetTalentSkill(hero,NPC_TALENT_2H,0);
	other.HitChance[NPC_TALENT_2H] = 1;
	Npc_SetTalentSkill(hero,NPC_TALENT_SNEAK,0);
	Npc_SetTalentSkill(hero,NPC_TALENT_PICKLOCK,1);
	Npc_SetTalentSkill(hero,NPC_TALENT_PICKPOCKET,0);
	Npc_SetTalentSkill(hero,NPC_TALENT_TAKEANIMALTROPHY,0);
	AI_EquipBestArmor(hero);
	AI_EquipBestMeleeWeapon(hero);
	AI_EquipBestRangedWeapon(hero);
};


instance CH_TELE1(C_Info)
{
	npc = ch;
	nr = 25;
	condition = ch_tele1_condition;
	information = ch_tele1_info;
	permanent = TRUE;
	description = "Teleport to the Valley of Mines";
};


func int ch_tele1_condition()
{
	if((LevelStart == TRUE) && (CurrentLevel == NEWWORLD_ZEN))
	{
		return TRUE;
	};
};

func void ch_tele1_info()
{
	Npc_ClearAIQueue(hero);
	Wld_PlayEffect("spellFX_Teleport_RING",hero,hero,0,0,0,FALSE);
	Snd_Play("MFX_TELEPORT_CAST");
	AI_StopProcessInfos(self);
	AI_StopProcessInfos(other);
	AI_StopProcessInfos(hero);
	AI_StopProcessInfos(hero);
	AI_StopProcessInfos(other);
	AI_StopProcessInfos(self);
	AI_Teleport(hero,"NW_TELEPORTSTATION_MT");
	AI_StopProcessInfos(self);
	AI_StopProcessInfos(other);
	AI_StopProcessInfos(hero);
	AI_StopProcessInfos(hero);
	AI_StopProcessInfos(other);
	AI_StopProcessInfos(self);
};


instance CH_TELEOW1(C_Info)
{
	npc = ch;
	nr = 25;
	condition = ch_teleow1_condition;
	information = ch_teleow1_info;
	permanent = TRUE;
	description = "Teleport to the Castle";
};


func int ch_teleow1_condition()
{
	if((LevelStart == TRUE) && (CurrentLevel == OldWorld_Zen))
	{
		return TRUE;
	};
};

func void ch_teleow1_info()
{
	Npc_ClearAIQueue(hero);
	Wld_PlayEffect("spellFX_Teleport_RING",hero,hero,0,0,0,FALSE);
	Snd_Play("MFX_TELEPORT_CAST");
	AI_StopProcessInfos(self);
	AI_StopProcessInfos(other);
	AI_StopProcessInfos(hero);
	AI_StopProcessInfos(hero);
	AI_StopProcessInfos(other);
	AI_StopProcessInfos(self);
	AI_Teleport(hero,"OC_CENTER_05_B");
	AI_StopProcessInfos(self);
	AI_StopProcessInfos(other);
	AI_StopProcessInfos(hero);
	AI_StopProcessInfos(hero);
	AI_StopProcessInfos(other);
	AI_StopProcessInfos(self);
};


instance CH_TELE2(C_Info)
{
	npc = ch;
	nr = 27;
	condition = ch_tele2_condition;
	information = ch_tele2_info;
	permanent = TRUE;
	description = "Teleport to the city";
};


func int ch_tele2_condition()
{
	if((LevelStart == TRUE) && (CurrentLevel == NEWWORLD_ZEN))
	{
		return TRUE;
	};
};

func void ch_tele2_info()
{
	Npc_ClearAIQueue(hero);
	Wld_PlayEffect("spellFX_Teleport_RING",hero,hero,0,0,0,FALSE);
	Snd_Play("MFX_TELEPORT_CAST");
	AI_StopProcessInfos(self);
	AI_StopProcessInfos(other);
	AI_StopProcessInfos(hero);
	AI_StopProcessInfos(hero);
	AI_StopProcessInfos(other);
	AI_StopProcessInfos(self);
	AI_Teleport(hero,"NW_CITY_MAINSTREET_03");
	AI_StopProcessInfos(self);
	AI_StopProcessInfos(other);
	AI_StopProcessInfos(hero);
	AI_StopProcessInfos(hero);
	AI_StopProcessInfos(other);
	AI_StopProcessInfos(self);
};


instance CH_TELE3(C_Info)
{
	npc = ch;
	nr = 26;
	condition = ch_tele3_condition;
	information = ch_tele3_info;
	permanent = TRUE;
	description = "Teleport to Jharkendar";
};


func int ch_tele3_condition()
{
	if((LevelStart == TRUE) && (CurrentLevel == NEWWORLD_ZEN))
	{
		return TRUE;
	};
};

func void ch_tele3_info()
{
	Npc_ClearAIQueue(hero);
	Wld_PlayEffect("spellFX_Teleport_RING",hero,hero,0,0,0,FALSE);
	Snd_Play("MFX_TELEPORT_CAST");
	AI_StopProcessInfos(self);
	AI_StopProcessInfos(other);
	AI_StopProcessInfos(hero);
	AI_StopProcessInfos(hero);
	AI_StopProcessInfos(other);
	AI_StopProcessInfos(self);
	AI_Teleport(hero,"NW_TROLLAREA_PORTAL_09");
	AI_StopProcessInfos(self);
	AI_StopProcessInfos(other);
	AI_StopProcessInfos(hero);
	AI_StopProcessInfos(hero);
	AI_StopProcessInfos(other);
	AI_StopProcessInfos(self);
};


instance CH_TELE4(C_Info)
{
	npc = ch;
	nr = 28;
	condition = ch_tele4_condition;
	information = ch_tele4_info;
	permanent = TRUE;
	description = "Teleport to monastery";
};


func int ch_tele4_condition()
{
	if((LevelStart == TRUE) && (CurrentLevel == NEWWORLD_ZEN))
	{
		return TRUE;
	};
};

func void ch_tele4_info()
{
	Npc_ClearAIQueue(hero);
	Wld_PlayEffect("spellFX_Teleport_RING",hero,hero,0,0,0,FALSE);
	Snd_Play("MFX_TELEPORT_CAST");
	AI_StopProcessInfos(self);
	AI_StopProcessInfos(other);
	AI_StopProcessInfos(hero);
	AI_StopProcessInfos(hero);
	AI_StopProcessInfos(other);
	AI_StopProcessInfos(self);
	AI_Teleport(hero,"KLOSTER");
	AI_StopProcessInfos(self);
	AI_StopProcessInfos(other);
	AI_StopProcessInfos(hero);
	AI_StopProcessInfos(hero);
	AI_StopProcessInfos(other);
	AI_StopProcessInfos(self);
};


instance CH_Guild(C_Info)
{
	npc = ch;
	nr = 7;
	condition = CH_Guild_Condition;
	information = CH_Guild_Info;
	important = FALSE;
	permanent = TRUE;
	description = "Guild choice";
};


func int CH_Guild_Condition()
{
	if(LevelStart == TRUE)
	{
		return TRUE;
	};
};

func void CH_Guild_Info()
{
	Info_ClearChoices(CH_Guild);
	Info_AddChoice(CH_Guild,Dialog_Back,CH_Guild_BACK);
	Info_AddChoice(CH_Guild,"Novice",ch_nov);
	Info_AddChoice(CH_Guild,"Magician",ch_kdf);
	Info_AddChoice(CH_Guild,"Mercenary",ch_sld);
	Info_AddChoice(CH_Guild,"Dragon hunter",ch_djg);
	Info_AddChoice(CH_Guild,"Militia",ch_mil);
	Info_AddChoice(CH_Guild,"Paladin",ch_pal);
	Info_AddChoice(CH_Guild,"Guildless",ch_none);
	Info_AddChoice(CH_Guild,"Fake bandit",CH_FakeBandit);
};

func void CH_Guild_BACK()
{
	Info_ClearChoices(CH_Guild);
};

func void CH_FakeBandit()
{
	CreateInvItems(hero,ItAr_BDT_M,1);
	CreateInvItems(hero,ItAr_BDT_H,1);
	CreateInvItems(hero,itar_oldcamp_guard_h,1);
	AI_EquipBestArmor(hero);
};

func void ch_nov()
{
	Info_ClearChoices(CH_Guild);
	other.guild = GIL_NOV;
	Npc_SetTrueGuild(other,GIL_NOV);
	CreateInvItem(hero,ItAr_NOV_L);
	AI_EquipArmor(hero,ItAr_NOV_L);
};

func void ch_kdf()
{
	Info_ClearChoices(CH_Guild);
	other.guild = GIL_KDF;
	Npc_SetTrueGuild(other,GIL_KDF);
	CreateInvItem(hero,ItAr_KDF_L);
	AI_EquipArmor(hero,ItAr_KDF_L);
};

func void ch_sld()
{
	Info_ClearChoices(CH_Guild);
	other.guild = GIL_SLD;
	Npc_SetTrueGuild(other,GIL_SLD);
	CreateInvItem(hero,ItAr_Sld_H);
	AI_EquipArmor(hero,ItAr_Sld_H);
};

func void ch_djg()
{
	Info_ClearChoices(CH_Guild);
	other.guild = GIL_DJG;
	Npc_SetTrueGuild(other,GIL_DJG);
	CreateInvItem(hero,itar_djg_m);
	AI_EquipArmor(hero,itar_djg_m);
};

func void ch_mil()
{
	Info_ClearChoices(CH_Guild);
	other.guild = GIL_MIL;
	Npc_SetTrueGuild(other,GIL_MIL);
	CreateInvItem(hero,ITAR_Mil_L);
	AI_EquipArmor(hero,ITAR_Mil_L);
};

func void ch_pal()
{
	Info_ClearChoices(CH_Guild);
	other.guild = GIL_PAL;
	Npc_SetTrueGuild(other,GIL_PAL);
	CreateInvItem(hero,ItAr_PAl_H);
	AI_EquipArmor(hero,ItAr_PAl_H);
	B_SetPaladinEquipment();
};

func void ch_none()
{
	Info_ClearChoices(CH_Guild);
	other.guild = GIL_NONE;
	Npc_SetTrueGuild(other,GIL_NONE);
	AI_UnequipArmor(hero);
};


instance CH_Level_Start(C_Info)
{
	npc = ch;
	condition = CH_Level_Start_Condition;
	information = CH_Level_Start_Info;
	description = "Level, learning points, guild";
	permanent = TRUE;
};


func int CH_Level_Start_Condition()
{
	if((LevelStart == FALSE) && (MagieStart == FALSE) && (AttributeStart == FALSE) && (KampfStart == FALSE) && (DiebStart == FALSE) && (LEVELUP == FALSE))
	{
		return TRUE;
	};
};

func void CH_Level_Start_Info()
{
	LevelStart = TRUE;
};


instance CH_Level_Stopper(C_Info)
{
	npc = ch;
	nr = 99;
	condition = CH_Level_Stopper_Condition;
	information = CH_Level_Stopper_Info;
	description = Dialog_Back;
	permanent = TRUE;
};


func int CH_Level_Stopper_Condition()
{
	if(LevelStart == TRUE)
	{
		return TRUE;
	};
};

func void CH_Level_Stopper_Info()
{
	Info_ClearChoices(CH_Level_Stopper);
	LevelStart = FALSE;
};


instance CH_Lernpunkte(C_Info)
{
	npc = ch;
	nr = 1;
	condition = CH_Lernpunkte_Condition;
	information = CH_Lernpunkte_Info;
	description = "Learning points";
	permanent = TRUE;
};


func int CH_Lernpunkte_Condition()
{
	if(LevelStart == TRUE)
	{
		return TRUE;
	};
};

func void CH_Lernpunkte_Info()
{
	Info_ClearChoices(CH_Lernpunkte);
	Info_AddChoice(CH_Lernpunkte,Dialog_Back,CH_Lernpunkte_BACK);
	Info_AddChoice(CH_Lernpunkte,"Learning points +50",CH_Lernpunkte_50);
	Info_AddChoice(CH_Lernpunkte,"Learning points +25",CH_Lernpunkte_25);
	Info_AddChoice(CH_Lernpunkte,"Learning points +10",CH_Lernpunkte_10);
	Info_AddChoice(CH_Lernpunkte,"Learning points +5 ",CH_Lernpunkte_5);
};

func void CH_Lernpunkte_BACK()
{
	Info_ClearChoices(CH_Lernpunkte);
};

func void CH_Lernpunkte_50()
{
	Info_ClearChoices(CH_Lernpunkte);
	hero.lp = hero.lp + 50;
	PrintScreen("+50 Learning points",-1,-1,FONT_Screen,3);
	Snd_Play("LEVELUP");
};

func void CH_Lernpunkte_25()
{
	Info_ClearChoices(CH_Lernpunkte);
	hero.lp = hero.lp + 25;
	PrintScreen("+25 Learning points",-1,-1,FONT_Screen,3);
	Snd_Play("LEVELUP");
};

func void CH_Lernpunkte_10()
{
	Info_ClearChoices(CH_Lernpunkte);
	hero.lp = hero.lp + 10;
	PrintScreen("+10 Learning points",-1,-1,FONT_Screen,3);
	Snd_Play("LEVELUP");
};

func void CH_Lernpunkte_5()
{
	Info_ClearChoices(CH_Lernpunkte);
	hero.lp = hero.lp + 5;
	PrintScreen("+5 Learning points",-1,-1,FONT_Screen,3);
	Snd_Play("LEVELUP");
};


instance CH_LEVELUP(C_Info)
{
	npc = ch;
	nr = 2;
	condition = ch_levelup_condition;
	information = ch_levelup_info;
	description = "Level up";
	permanent = TRUE;
};


func int ch_levelup_condition()
{
	if(LevelStart == TRUE)
	{
		return TRUE;
	};
};

func void ch_levelup_info()
{
	LEVELUP = TRUE;
	LevelStart = FALSE;
};


instance CH_LEVELUP_STOP(C_Info)
{
	npc = ch;
	nr = 99;
	condition = ch_levelup_stop_condition;
	information = ch_levelup_stop_info;
	permanent = TRUE;
	description = Dialog_Back;
};


func int ch_levelup_stop_condition()
{
	if(LEVELUP == TRUE)
	{
		return TRUE;
	};
};

func void ch_levelup_stop_info()
{
	LevelStart = TRUE;
	LEVELUP = FALSE;
};


instance CH_Level_niedrig(C_Info)
{
	npc = ch;
	nr = 2;
	condition = CH_Level_niedrig_Condition;
	information = CH_Level_niedrig_Info;
	description = "Level choice 1-25";
	permanent = TRUE;
};


func int CH_Level_niedrig_Condition()
{
	if(LEVELUP == TRUE)
	{
		return TRUE;
	};
};

func void CH_Level_niedrig_Info()
{
	Info_ClearChoices(CH_Level_niedrig);
	Info_AddChoice(CH_Level_niedrig,Dialog_Back,CH_Level_niedrig_BACK);
	Info_AddChoice(CH_Level_niedrig,"Level 21-25",CH_Level21);
	Info_AddChoice(CH_Level_niedrig,"Level 16-20",CH_Level16);
	Info_AddChoice(CH_Level_niedrig,"Level 11-15",CH_Level11);
	Info_AddChoice(CH_Level_niedrig,"Level 6-10",CH_Level6);
	Info_AddChoice(CH_Level_niedrig,"Level 1-5",CH_Level1);
};


instance CH_Level_hoch(C_Info)
{
	npc = ch;
	nr = 3;
	condition = CH_Level_hoch_Condition;
	information = CH_Level_hoch_Info;
	description = "Level choice 26-50";
	permanent = TRUE;
};


func int CH_Level_hoch_Condition()
{
	if(LEVELUP == TRUE)
	{
		return TRUE;
	};
};

func void CH_Level_hoch_Info()
{
	Info_ClearChoices(CH_Level_hoch);
	Info_AddChoice(CH_Level_hoch,Dialog_Back,CH_Level_hoch_BACK);
	Info_AddChoice(CH_Level_hoch,"Level 46-50",CH_Level46);
	Info_AddChoice(CH_Level_hoch,"Level 41-45",CH_Level41);
	Info_AddChoice(CH_Level_hoch,"Level 36-40",CH_Level36);
	Info_AddChoice(CH_Level_hoch,"Level 31-35",CH_Level31);
	Info_AddChoice(CH_Level_hoch,"Level 26-30",CH_Level26);
};

func void CH_Level46()
{
	Info_ClearChoices(CH_Level_hoch);
	Info_AddChoice(CH_Level_hoch,Dialog_Back,CH_Level_hoch_BACK);
	Info_AddChoice(CH_Level_hoch,"Level 50",CH_Level_50);
	Info_AddChoice(CH_Level_hoch,"Level 49",CH_Level_49);
	Info_AddChoice(CH_Level_hoch,"Level 48",CH_Level_48);
	Info_AddChoice(CH_Level_hoch,"Level 47",CH_Level_47);
	Info_AddChoice(CH_Level_hoch,"Level 46",CH_Level_46);
};

func void CH_Level41()
{
	Info_ClearChoices(CH_Level_hoch);
	Info_AddChoice(CH_Level_hoch,Dialog_Back,CH_Level_hoch_BACK);
	Info_AddChoice(CH_Level_hoch,"Level 45",CH_Level_45);
	Info_AddChoice(CH_Level_hoch,"Level 44",CH_Level_44);
	Info_AddChoice(CH_Level_hoch,"Level 43",CH_Level_43);
	Info_AddChoice(CH_Level_hoch,"Level 42",CH_Level_42);
	Info_AddChoice(CH_Level_hoch,"Level 41",CH_Level_41);
};

func void CH_Level36()
{
	Info_ClearChoices(CH_Level_hoch);
	Info_AddChoice(CH_Level_hoch,Dialog_Back,CH_Level_hoch_BACK);
	Info_AddChoice(CH_Level_hoch,"Level 40",CH_Level_40);
	Info_AddChoice(CH_Level_hoch,"Level 39",CH_Level_39);
	Info_AddChoice(CH_Level_hoch,"Level 38",CH_Level_38);
	Info_AddChoice(CH_Level_hoch,"Level 37",CH_Level_37);
	Info_AddChoice(CH_Level_hoch,"Level 36",CH_Level_36);
};

func void CH_Level31()
{
	Info_ClearChoices(CH_Level_hoch);
	Info_AddChoice(CH_Level_hoch,Dialog_Back,CH_Level_hoch_BACK);
	Info_AddChoice(CH_Level_hoch,"Level 35",CH_Level_35);
	Info_AddChoice(CH_Level_hoch,"Level 34",CH_Level_34);
	Info_AddChoice(CH_Level_hoch,"Level 33",CH_Level_33);
	Info_AddChoice(CH_Level_hoch,"Level 32",CH_Level_32);
	Info_AddChoice(CH_Level_hoch,"Level 31",CH_Level_31);
};

func void CH_Level26()
{
	Info_ClearChoices(CH_Level_hoch);
	Info_AddChoice(CH_Level_hoch,Dialog_Back,CH_Level_hoch_BACK);
	Info_AddChoice(CH_Level_hoch,"Level 30",CH_Level_30);
	Info_AddChoice(CH_Level_hoch,"Level 29",CH_Level_29);
	Info_AddChoice(CH_Level_hoch,"Level 28",CH_Level_28);
	Info_AddChoice(CH_Level_hoch,"Level 27",CH_Level_27);
	Info_AddChoice(CH_Level_hoch,"Level 26",CH_Level_26);
};

func void CH_Level21()
{
	Info_ClearChoices(CH_Level_niedrig);
	Info_AddChoice(CH_Level_niedrig,Dialog_Back,CH_Level_niedrig_BACK);
	Info_AddChoice(CH_Level_niedrig,"Level 25",CH_Level_25);
	Info_AddChoice(CH_Level_niedrig,"Level 24",CH_Level_24);
	Info_AddChoice(CH_Level_niedrig,"Level 23",CH_Level_23);
	Info_AddChoice(CH_Level_niedrig,"Level 22",CH_Level_22);
	Info_AddChoice(CH_Level_niedrig,"Level 21",CH_Level_21);
};

func void CH_Level16()
{
	Info_ClearChoices(CH_Level_niedrig);
	Info_AddChoice(CH_Level_niedrig,Dialog_Back,CH_Level_niedrig_BACK);
	Info_AddChoice(CH_Level_niedrig,"Level 20",CH_Level_20);
	Info_AddChoice(CH_Level_niedrig,"Level 19",CH_Level_19);
	Info_AddChoice(CH_Level_niedrig,"Level 18",CH_Level_18);
	Info_AddChoice(CH_Level_niedrig,"Level 17",CH_Level_17);
	Info_AddChoice(CH_Level_niedrig,"Level 16",CH_Level_16);
};

func void CH_Level11()
{
	Info_ClearChoices(CH_Level_niedrig);
	Info_AddChoice(CH_Level_niedrig,Dialog_Back,CH_Level_niedrig_BACK);
	Info_AddChoice(CH_Level_niedrig,"Level 15",CH_Level_15);
	Info_AddChoice(CH_Level_niedrig,"Level 14",CH_Level_14);
	Info_AddChoice(CH_Level_niedrig,"Level 13",CH_Level_13);
	Info_AddChoice(CH_Level_niedrig,"Level 12",CH_Level_12);
	Info_AddChoice(CH_Level_niedrig,"Level 11",CH_Level_11);
};

func void CH_Level6()
{
	Info_ClearChoices(CH_Level_niedrig);
	Info_AddChoice(CH_Level_niedrig,Dialog_Back,CH_Level_niedrig_BACK);
	Info_AddChoice(CH_Level_niedrig,"Level 10",CH_Level_10);
	Info_AddChoice(CH_Level_niedrig,"Level 9",CH_Level_9);
	Info_AddChoice(CH_Level_niedrig,"Level 8",CH_Level_8);
	Info_AddChoice(CH_Level_niedrig,"Level 7",CH_Level_7);
	Info_AddChoice(CH_Level_niedrig,"Level 6",CH_Level_6);
};

func void CH_Level1()
{
	Info_ClearChoices(CH_Level_niedrig);
	Info_AddChoice(CH_Level_niedrig,Dialog_Back,CH_Level_niedrig_BACK);
	Info_AddChoice(CH_Level_niedrig,"Level 5",CH_Level_5);
	Info_AddChoice(CH_Level_niedrig,"Level 4",CH_Level_4);
	Info_AddChoice(CH_Level_niedrig,"Level 3",CH_Level_3);
	Info_AddChoice(CH_Level_niedrig,"Level 2",CH_Level_2);
	Info_AddChoice(CH_Level_niedrig,"Level 1",CH_Level_1);
};

func void CH_Level_niedrig_BACK()
{
	Info_ClearChoices(CH_Level_niedrig);
};

func void CH_Level_hoch_BACK()
{
	Info_ClearChoices(CH_Level_hoch);
};

func void CH_Level_1()
{
	Info_ClearChoices(CH_Level_niedrig);
	hero.level = 1;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_2()
{
	Info_ClearChoices(CH_Level_niedrig);
	hero.level = 2;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_3()
{
	Info_ClearChoices(CH_Level_niedrig);
	hero.level = 3;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_4()
{
	Info_ClearChoices(CH_Level_niedrig);
	hero.level = 4;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_5()
{
	Info_ClearChoices(CH_Level_niedrig);
	hero.level = 5;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_6()
{
	Info_ClearChoices(CH_Level_niedrig);
	hero.level = 6;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_7()
{
	Info_ClearChoices(CH_Level_niedrig);
	hero.level = 7;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_8()
{
	Info_ClearChoices(CH_Level_niedrig);
	hero.level = 8;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_9()
{
	Info_ClearChoices(CH_Level_niedrig);
	hero.level = 9;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_10()
{
	Info_ClearChoices(CH_Level_niedrig);
	hero.level = 10;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_11()
{
	Info_ClearChoices(CH_Level_niedrig);
	hero.level = 11;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_12()
{
	Info_ClearChoices(CH_Level_niedrig);
	hero.level = 12;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_13()
{
	Info_ClearChoices(CH_Level_niedrig);
	hero.level = 13;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_14()
{
	Info_ClearChoices(CH_Level_niedrig);
	hero.level = 14;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_15()
{
	Info_ClearChoices(CH_Level_niedrig);
	hero.level = 15;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_16()
{
	Info_ClearChoices(CH_Level_niedrig);
	hero.level = 16;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_17()
{
	Info_ClearChoices(CH_Level_niedrig);
	hero.level = 17;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_18()
{
	Info_ClearChoices(CH_Level_niedrig);
	hero.level = 18;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_19()
{
	Info_ClearChoices(CH_Level_niedrig);
	hero.level = 19;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_20()
{
	Info_ClearChoices(CH_Level_niedrig);
	hero.level = 20;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_21()
{
	Info_ClearChoices(CH_Level_niedrig);
	hero.level = 21;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_22()
{
	Info_ClearChoices(CH_Level_niedrig);
	hero.level = 22;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_23()
{
	Info_ClearChoices(CH_Level_niedrig);
	hero.level = 23;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_24()
{
	Info_ClearChoices(CH_Level_niedrig);
	hero.level = 24;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_25()
{
	Info_ClearChoices(CH_Level_niedrig);
	hero.level = 25;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_26()
{
	Info_ClearChoices(CH_Level_hoch);
	hero.level = 26;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_27()
{
	Info_ClearChoices(CH_Level_hoch);
	hero.level = 27;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_28()
{
	Info_ClearChoices(CH_Level_hoch);
	hero.level = 28;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_29()
{
	Info_ClearChoices(CH_Level_hoch);
	hero.level = 29;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_30()
{
	Info_ClearChoices(CH_Level_hoch);
	hero.level = 30;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_31()
{
	Info_ClearChoices(CH_Level_hoch);
	hero.level = 31;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_32()
{
	Info_ClearChoices(CH_Level_hoch);
	hero.level = 32;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_33()
{
	Info_ClearChoices(CH_Level_hoch);
	hero.level = 33;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_34()
{
	Info_ClearChoices(CH_Level_hoch);
	hero.level = 34;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_35()
{
	Info_ClearChoices(CH_Level_hoch);
	hero.level = 35;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_36()
{
	Info_ClearChoices(CH_Level_hoch);
	hero.level = 36;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_37()
{
	Info_ClearChoices(CH_Level_hoch);
	hero.level = 37;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_38()
{
	Info_ClearChoices(CH_Level_hoch);
	hero.level = 38;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_39()
{
	Info_ClearChoices(CH_Level_hoch);
	hero.level = 39;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_40()
{
	Info_ClearChoices(CH_Level_hoch);
	hero.level = 40;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_41()
{
	Info_ClearChoices(CH_Level_hoch);
	hero.level = 41;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_42()
{
	Info_ClearChoices(CH_Level_hoch);
	hero.level = 42;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_43()
{
	Info_ClearChoices(CH_Level_hoch);
	hero.level = 43;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_44()
{
	Info_ClearChoices(CH_Level_hoch);
	hero.level = 44;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_45()
{
	Info_ClearChoices(CH_Level_hoch);
	hero.level = 45;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_46()
{
	Info_ClearChoices(CH_Level_hoch);
	hero.level = 46;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_47()
{
	Info_ClearChoices(CH_Level_hoch);
	hero.level = 47;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_48()
{
	Info_ClearChoices(CH_Level_hoch);
	hero.level = 48;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_49()
{
	Info_ClearChoices(CH_Level_hoch);
	hero.level = 49;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};

func void CH_Level_50()
{
	Info_ClearChoices(CH_Level_hoch);
	hero.level = 50;
	B_SetHeroExp();
	B_SetHeroWeapon();
	B_SetHeroEquipment();
};


instance DIA_CH_Attribute_Start(C_Info)
{
	npc = ch;
	nr = 3;
	condition = DIA_CH_Attribute_Start_Condition;
	information = DIA_CH_Attribute_Start_Info;
	permanent = TRUE;
	description = "Strength and dexterity";
};


func int DIA_CH_Attribute_Start_Condition()
{
	if((LevelStart == FALSE) && (MagieStart == FALSE) && (AttributeStart == FALSE) && (KampfStart == FALSE) && (DiebStart == FALSE) && (LEVELUP == FALSE))
	{
		return TRUE;
	};
};

func void DIA_CH_Attribute_Start_Info()
{
	AttributeStart = TRUE;
};


instance DIA_CH_Attribute_Stopper(C_Info)
{
	npc = ch;
	nr = 99;
	condition = DIA_CH_Attribute_Stopper_Condition;
	information = DIA_CH_Attribute_Stopper_Info;
	permanent = TRUE;
	description = Dialog_Back;
};


func int DIA_CH_Attribute_Stopper_Condition()
{
	if(AttributeStart == TRUE)
	{
		return TRUE;
	};
};

func void DIA_CH_Attribute_Stopper_Info()
{
	AttributeStart = FALSE;
};


instance DIA_CH_Strength(C_Info)
{
	npc = ch;
	nr = 2;
	condition = DIA_CH_Strength_Condition;
	information = DIA_CH_Strength_Info;
	permanent = TRUE;
	description = "Increase strength";
};


func int DIA_CH_Strength_Condition()
{
	if(AttributeStart == TRUE)
	{
		return TRUE;
	};
};

func void DIA_CH_Strength_Info()
{
	Info_ClearChoices(DIA_CH_Strength);
	Info_AddChoice(DIA_CH_Strength,Dialog_Back,DIA_CH_Strength_BACK);
	Info_AddChoice(DIA_CH_Strength,B_BuildLearnString("Strength +20",B_GetLearnCostAttribute(other,ATR_STRENGTH,20)),DIA_CH_Strength_20);
	Info_AddChoice(DIA_CH_Strength,B_BuildLearnString("Strength +10",B_GetLearnCostAttribute(other,ATR_STRENGTH,10)),DIA_CH_Strength_10);
	Info_AddChoice(DIA_CH_Strength,B_BuildLearnString("Strength +5",B_GetLearnCostAttribute(other,ATR_STRENGTH,5)),DIA_CH_Strength_5);
	Info_AddChoice(DIA_CH_Strength,B_BuildLearnString("Strength +1",B_GetLearnCostAttribute(other,ATR_STRENGTH,1)),DIA_CH_Strength_1);
};

func void DIA_CH_Strength_BACK()
{
	Info_ClearChoices(DIA_CH_Strength);
};

func void DIA_CH_Strength_1()
{
	B_TeachAttributePoints(self,other,ATR_STRENGTH,1,T_MAX);
	Info_ClearChoices(DIA_CH_Strength);
	Info_AddChoice(DIA_CH_Strength,Dialog_Back,DIA_CH_Strength_BACK);
	Info_AddChoice(DIA_CH_Strength,B_BuildLearnString("Strength +20",B_GetLearnCostAttribute(other,ATR_STRENGTH,20)),DIA_CH_Strength_20);
	Info_AddChoice(DIA_CH_Strength,B_BuildLearnString("Strength +10",B_GetLearnCostAttribute(other,ATR_STRENGTH,10)),DIA_CH_Strength_10);
	Info_AddChoice(DIA_CH_Strength,B_BuildLearnString("Strength +5",B_GetLearnCostAttribute(other,ATR_STRENGTH,5)),DIA_CH_Strength_5);
	Info_AddChoice(DIA_CH_Strength,B_BuildLearnString("Strength +1",B_GetLearnCostAttribute(other,ATR_STRENGTH,1)),DIA_CH_Strength_1);
};

func void DIA_CH_Strength_5()
{
	B_TeachAttributePoints(self,other,ATR_STRENGTH,5,T_MAX);
	Info_ClearChoices(DIA_CH_Strength);
	Info_AddChoice(DIA_CH_Strength,Dialog_Back,DIA_CH_Strength_BACK);
	Info_AddChoice(DIA_CH_Strength,B_BuildLearnString("Strength +20",B_GetLearnCostAttribute(other,ATR_STRENGTH,20)),DIA_CH_Strength_20);
	Info_AddChoice(DIA_CH_Strength,B_BuildLearnString("Strength +10",B_GetLearnCostAttribute(other,ATR_STRENGTH,10)),DIA_CH_Strength_10);
	Info_AddChoice(DIA_CH_Strength,B_BuildLearnString("Strength +5",B_GetLearnCostAttribute(other,ATR_STRENGTH,5)),DIA_CH_Strength_5);
	Info_AddChoice(DIA_CH_Strength,B_BuildLearnString("Strength +1",B_GetLearnCostAttribute(other,ATR_STRENGTH,1)),DIA_CH_Strength_1);
};

func void DIA_CH_Strength_10()
{
	B_TeachAttributePoints(self,other,ATR_STRENGTH,10,T_MAX);
	Info_ClearChoices(DIA_CH_Strength);
	Info_AddChoice(DIA_CH_Strength,Dialog_Back,DIA_CH_Strength_BACK);
	Info_AddChoice(DIA_CH_Strength,B_BuildLearnString("Strength +20",B_GetLearnCostAttribute(other,ATR_STRENGTH,20)),DIA_CH_Strength_20);
	Info_AddChoice(DIA_CH_Strength,B_BuildLearnString("Strength +10",B_GetLearnCostAttribute(other,ATR_STRENGTH,10)),DIA_CH_Strength_10);
	Info_AddChoice(DIA_CH_Strength,B_BuildLearnString("Strength +5",B_GetLearnCostAttribute(other,ATR_STRENGTH,5)),DIA_CH_Strength_5);
	Info_AddChoice(DIA_CH_Strength,B_BuildLearnString("Strength +1",B_GetLearnCostAttribute(other,ATR_STRENGTH,1)),DIA_CH_Strength_1);
};

func void DIA_CH_Strength_20()
{
	B_TeachAttributePoints(self,other,ATR_STRENGTH,20,T_MAX);
	Info_ClearChoices(DIA_CH_Strength);
	Info_AddChoice(DIA_CH_Strength,Dialog_Back,DIA_CH_Strength_BACK);
	Info_AddChoice(DIA_CH_Strength,B_BuildLearnString("Strength +20",B_GetLearnCostAttribute(other,ATR_STRENGTH,20)),DIA_CH_Strength_20);
	Info_AddChoice(DIA_CH_Strength,B_BuildLearnString("Strength +10",B_GetLearnCostAttribute(other,ATR_STRENGTH,10)),DIA_CH_Strength_10);
	Info_AddChoice(DIA_CH_Strength,B_BuildLearnString("Strength +5",B_GetLearnCostAttribute(other,ATR_STRENGTH,5)),DIA_CH_Strength_5);
	Info_AddChoice(DIA_CH_Strength,B_BuildLearnString("Strength +1",B_GetLearnCostAttribute(other,ATR_STRENGTH,1)),DIA_CH_Strength_1);
};


instance DIA_CH_Dex(C_Info)
{
	npc = ch;
	nr = 3;
	condition = DIA_CH_Dex_Condition;
	information = DIA_CH_Dex_Info;
	permanent = TRUE;
	description = "Increase dexterity";
};


func int DIA_CH_Dex_Condition()
{
	if(AttributeStart == TRUE)
	{
		return TRUE;
	};
};

func void DIA_CH_Dex_Info()
{
	Info_ClearChoices(DIA_CH_Dex);
	Info_AddChoice(DIA_CH_Dex,Dialog_Back,DIA_CH_Dex_BACK);
	Info_AddChoice(DIA_CH_Dex,B_BuildLearnString("Dexterity +20",B_GetLearnCostAttribute(other,ATR_DEXTERITY,20)),dia_ch_dex_20);
	Info_AddChoice(DIA_CH_Dex,B_BuildLearnString("Dexterity +10",B_GetLearnCostAttribute(other,ATR_DEXTERITY,10)),dia_ch_dex_10);
	Info_AddChoice(DIA_CH_Dex,B_BuildLearnString("Dexterity +5",B_GetLearnCostAttribute(other,ATR_DEXTERITY,5)),dia_ch_dex_5);
	Info_AddChoice(DIA_CH_Dex,B_BuildLearnString("Dexterity +1",B_GetLearnCostAttribute(other,ATR_DEXTERITY,1)),dia_ch_dex_1);
};

func void DIA_CH_Dex_BACK()
{
	Info_ClearChoices(DIA_CH_Dex);
};

func void dia_ch_dex_1()
{
	B_TeachAttributePoints(self,other,ATR_DEXTERITY,1,T_MAX);
	Info_ClearChoices(DIA_CH_Dex);
	Info_AddChoice(DIA_CH_Dex,Dialog_Back,DIA_CH_Dex_BACK);
	Info_AddChoice(DIA_CH_Dex,B_BuildLearnString("Dexterity +20",B_GetLearnCostAttribute(other,ATR_DEXTERITY,20)),dia_ch_dex_20);
	Info_AddChoice(DIA_CH_Dex,B_BuildLearnString("Dexterity +10",B_GetLearnCostAttribute(other,ATR_DEXTERITY,10)),dia_ch_dex_10);
	Info_AddChoice(DIA_CH_Dex,B_BuildLearnString("Dexterity +5",B_GetLearnCostAttribute(other,ATR_DEXTERITY,5)),dia_ch_dex_5);
	Info_AddChoice(DIA_CH_Dex,B_BuildLearnString("Dexterity +1",B_GetLearnCostAttribute(other,ATR_DEXTERITY,1)),dia_ch_dex_1);
};

func void dia_ch_dex_5()
{
	B_TeachAttributePoints(self,other,ATR_DEXTERITY,5,T_MAX);
	Info_ClearChoices(DIA_CH_Dex);
	Info_AddChoice(DIA_CH_Dex,Dialog_Back,DIA_CH_Dex_BACK);
	Info_AddChoice(DIA_CH_Dex,B_BuildLearnString("Dexterity +20",B_GetLearnCostAttribute(other,ATR_DEXTERITY,20)),dia_ch_dex_20);
	Info_AddChoice(DIA_CH_Dex,B_BuildLearnString("Dexterity +10",B_GetLearnCostAttribute(other,ATR_DEXTERITY,10)),dia_ch_dex_10);
	Info_AddChoice(DIA_CH_Dex,B_BuildLearnString("Dexterity +5",B_GetLearnCostAttribute(other,ATR_DEXTERITY,5)),dia_ch_dex_5);
	Info_AddChoice(DIA_CH_Dex,B_BuildLearnString("Dexterity +1",B_GetLearnCostAttribute(other,ATR_DEXTERITY,1)),dia_ch_dex_1);
};

func void dia_ch_dex_10()
{
	B_TeachAttributePoints(self,other,ATR_DEXTERITY,10,T_MAX);
	Info_ClearChoices(DIA_CH_Dex);
	Info_AddChoice(DIA_CH_Dex,Dialog_Back,DIA_CH_Dex_BACK);
	Info_AddChoice(DIA_CH_Dex,B_BuildLearnString("Dexterity +20",B_GetLearnCostAttribute(other,ATR_DEXTERITY,20)),dia_ch_dex_20);
	Info_AddChoice(DIA_CH_Dex,B_BuildLearnString("Dexterity +10",B_GetLearnCostAttribute(other,ATR_DEXTERITY,10)),dia_ch_dex_10);
	Info_AddChoice(DIA_CH_Dex,B_BuildLearnString("Dexterity +5",B_GetLearnCostAttribute(other,ATR_DEXTERITY,5)),dia_ch_dex_5);
	Info_AddChoice(DIA_CH_Dex,B_BuildLearnString("Dexterity +1",B_GetLearnCostAttribute(other,ATR_DEXTERITY,1)),dia_ch_dex_1);
};

func void dia_ch_dex_20()
{
	B_TeachAttributePoints(self,other,ATR_DEXTERITY,20,T_MAX);
	Info_ClearChoices(DIA_CH_Dex);
	Info_AddChoice(DIA_CH_Dex,Dialog_Back,DIA_CH_Dex_BACK);
	Info_AddChoice(DIA_CH_Dex,B_BuildLearnString("Dexterity +20",B_GetLearnCostAttribute(other,ATR_DEXTERITY,20)),dia_ch_dex_20);
	Info_AddChoice(DIA_CH_Dex,B_BuildLearnString("Dexterity +10",B_GetLearnCostAttribute(other,ATR_DEXTERITY,10)),dia_ch_dex_10);
	Info_AddChoice(DIA_CH_Dex,B_BuildLearnString("Dexterity +5",B_GetLearnCostAttribute(other,ATR_DEXTERITY,5)),dia_ch_dex_5);
	Info_AddChoice(DIA_CH_Dex,B_BuildLearnString("Dexterity +1",B_GetLearnCostAttribute(other,ATR_DEXTERITY,1)),dia_ch_dex_1);
};


instance DIA_CH_MAGIE(C_Info)
{
	npc = ch;
	nr = 3;
	condition = DIA_CH_MAGIE_Condition;
	information = DIA_CH_MAGIE_Info;
	permanent = TRUE;
	description = "Magic: mana, runes, circles";
};


func int DIA_CH_MAGIE_Condition()
{
	if((LevelStart == FALSE) && (MagieStart == FALSE) && (AttributeStart == FALSE) && (KampfStart == FALSE) && (DiebStart == FALSE) && (LEVELUP == FALSE))
	{
		return TRUE;
	};
};

func void DIA_CH_MAGIE_Info()
{
	MagieStart = TRUE;
};


instance DIA_CH_MAGIE_Stopper(C_Info)
{
	npc = ch;
	nr = 99;
	condition = DIA_CH_MAGIE_Stopper_Condition;
	information = DIA_CH_MAGIE_Stopper_Info;
	permanent = TRUE;
	description = Dialog_Back;
};


func int DIA_CH_MAGIE_Stopper_Condition()
{
	if(MagieStart == TRUE)
	{
		return TRUE;
	};
};

func void DIA_CH_MAGIE_Stopper_Info()
{
	MagieStart = FALSE;
};


instance DIA_CH_Mana(C_Info)
{
	npc = ch;
	nr = 3;
	condition = DIA_CH_Mana_Condition;
	information = DIA_CH_Mana_Info;
	permanent = TRUE;
	description = "Increase mana";
};


func int DIA_CH_Mana_Condition()
{
	if(MagieStart == TRUE)
	{
		return TRUE;
	};
};

func void DIA_CH_Mana_Info()
{
	Info_ClearChoices(DIA_CH_Mana);
	Info_AddChoice(DIA_CH_Mana,Dialog_Back,DIA_CH_Mana_BACK);
	Info_AddChoice(DIA_CH_Mana,B_BuildLearnString("Mana +20",B_GetLearnCostAttribute(other,ATR_MANA_MAX,20)),dia_ch_mana_20);
	Info_AddChoice(DIA_CH_Mana,B_BuildLearnString("Mana +10",B_GetLearnCostAttribute(other,ATR_MANA_MAX,10)),dia_ch_mana_10);
	Info_AddChoice(DIA_CH_Mana,B_BuildLearnString("Mana +5",B_GetLearnCostAttribute(other,ATR_MANA_MAX,5)),dia_ch_mana_5);
	Info_AddChoice(DIA_CH_Mana,B_BuildLearnString("Mana +1",B_GetLearnCostAttribute(other,ATR_MANA_MAX,1)),dia_ch_mana_1);
};

func void DIA_CH_Mana_BACK()
{
	Info_ClearChoices(DIA_CH_Mana);
};

func void dia_ch_mana_1()
{
	B_TeachAttributePoints(self,other,ATR_MANA_MAX,1,T_MAX);
	Info_ClearChoices(DIA_CH_Mana);
	Info_AddChoice(DIA_CH_Mana,Dialog_Back,DIA_CH_Mana_BACK);
	Info_AddChoice(DIA_CH_Mana,B_BuildLearnString("Mana +20",B_GetLearnCostAttribute(other,ATR_MANA_MAX,20)),dia_ch_mana_20);
	Info_AddChoice(DIA_CH_Mana,B_BuildLearnString("Mana +10",B_GetLearnCostAttribute(other,ATR_MANA_MAX,10)),dia_ch_mana_10);
	Info_AddChoice(DIA_CH_Mana,B_BuildLearnString("Mana +5",B_GetLearnCostAttribute(other,ATR_MANA_MAX,5)),dia_ch_mana_5);
	Info_AddChoice(DIA_CH_Mana,B_BuildLearnString("Mana +1",B_GetLearnCostAttribute(other,ATR_MANA_MAX,1)),dia_ch_mana_1);
};

func void dia_ch_mana_5()
{
	B_TeachAttributePoints(self,other,ATR_MANA_MAX,5,T_MAX);
	Info_ClearChoices(DIA_CH_Mana);
	Info_AddChoice(DIA_CH_Mana,Dialog_Back,DIA_CH_Mana_BACK);
	Info_AddChoice(DIA_CH_Mana,B_BuildLearnString("Mana +20",B_GetLearnCostAttribute(other,ATR_MANA_MAX,20)),dia_ch_mana_20);
	Info_AddChoice(DIA_CH_Mana,B_BuildLearnString("Mana +10",B_GetLearnCostAttribute(other,ATR_MANA_MAX,10)),dia_ch_mana_10);
	Info_AddChoice(DIA_CH_Mana,B_BuildLearnString("Mana +5",B_GetLearnCostAttribute(other,ATR_MANA_MAX,5)),dia_ch_mana_5);
	Info_AddChoice(DIA_CH_Mana,B_BuildLearnString("Mana +1",B_GetLearnCostAttribute(other,ATR_MANA_MAX,1)),dia_ch_mana_1);
};

func void dia_ch_mana_10()
{
	B_TeachAttributePoints(self,other,ATR_MANA_MAX,10,T_MAX);
	Info_ClearChoices(DIA_CH_Mana);
	Info_AddChoice(DIA_CH_Mana,Dialog_Back,DIA_CH_Mana_BACK);
	Info_AddChoice(DIA_CH_Mana,B_BuildLearnString("Mana +20",B_GetLearnCostAttribute(other,ATR_MANA_MAX,20)),dia_ch_mana_20);
	Info_AddChoice(DIA_CH_Mana,B_BuildLearnString("Mana +10",B_GetLearnCostAttribute(other,ATR_MANA_MAX,10)),dia_ch_mana_10);
	Info_AddChoice(DIA_CH_Mana,B_BuildLearnString("Mana +5",B_GetLearnCostAttribute(other,ATR_MANA_MAX,5)),dia_ch_mana_5);
	Info_AddChoice(DIA_CH_Mana,B_BuildLearnString("Mana +1",B_GetLearnCostAttribute(other,ATR_MANA_MAX,1)),dia_ch_mana_1);
};

func void dia_ch_mana_20()
{
	B_TeachAttributePoints(self,other,ATR_MANA_MAX,20,T_MAX);
	Info_ClearChoices(DIA_CH_Mana);
	Info_AddChoice(DIA_CH_Mana,Dialog_Back,DIA_CH_Mana_BACK);
	Info_AddChoice(DIA_CH_Mana,B_BuildLearnString("Mana +20",B_GetLearnCostAttribute(other,ATR_MANA_MAX,20)),dia_ch_mana_20);
	Info_AddChoice(DIA_CH_Mana,B_BuildLearnString("Mana +10",B_GetLearnCostAttribute(other,ATR_MANA_MAX,10)),dia_ch_mana_10);
	Info_AddChoice(DIA_CH_Mana,B_BuildLearnString("Mana +5",B_GetLearnCostAttribute(other,ATR_MANA_MAX,5)),dia_ch_mana_5);
	Info_AddChoice(DIA_CH_Mana,B_BuildLearnString("Mana +1",B_GetLearnCostAttribute(other,ATR_MANA_MAX,1)),dia_ch_mana_1);
};


instance DIA_CH_KREISE(C_Info)
{
	npc = ch;
	nr = 4;
	condition = DIA_CH_KREISE_Condition;
	information = DIA_CH_KREISE_Info;
	permanent = TRUE;
	description = "Magic Circles";
};


func int DIA_CH_KREISE_Condition()
{
	if(MagieStart == TRUE)
	{
		return TRUE;
	};
};

func void DIA_CH_KREISE_Info()
{
	Info_ClearChoices(dia_ch_kreise);
	Info_AddChoice(dia_ch_kreise,Dialog_Back,ch_kreise_back);
	if(Npc_GetTalentSkill(other,NPC_TALENT_MAGE) < 1)
	{
		Info_AddChoice(dia_ch_kreise,B_BuildLearnString(NAME_CIRCLE_1,B_GetLearnCostTalent(other,NPC_TALENT_MAGE,1)),ch_kreise_1);
	};
	if(Npc_GetTalentSkill(other,NPC_TALENT_MAGE) == 1)
	{
		Info_AddChoice(dia_ch_kreise,B_BuildLearnString(NAME_CIRCLE_2,B_GetLearnCostTalent(other,NPC_TALENT_MAGE,2)),ch_kreise_2);
	};
	if(Npc_GetTalentSkill(other,NPC_TALENT_MAGE) == 2)
	{
		Info_AddChoice(dia_ch_kreise,B_BuildLearnString(NAME_CIRCLE_3,B_GetLearnCostTalent(other,NPC_TALENT_MAGE,3)),ch_kreise_3);
	};
	if(Npc_GetTalentSkill(other,NPC_TALENT_MAGE) == 3)
	{
		Info_AddChoice(dia_ch_kreise,B_BuildLearnString(NAME_CIRCLE_4,B_GetLearnCostTalent(other,NPC_TALENT_MAGE,4)),ch_kreise_4);
	};
	if(Npc_GetTalentSkill(other,NPC_TALENT_MAGE) == 4)
	{
		Info_AddChoice(dia_ch_kreise,B_BuildLearnString(NAME_CIRCLE_5,B_GetLearnCostTalent(other,NPC_TALENT_MAGE,5)),ch_kreise_5);
	};
	if(Npc_GetTalentSkill(other,NPC_TALENT_MAGE) == 5)
	{
		Info_AddChoice(dia_ch_kreise,B_BuildLearnString(NAME_CIRCLE_6,B_GetLearnCostTalent(other,NPC_TALENT_MAGE,6)),ch_kreise_6);
	};
};

func void ch_kreise_back()
{
	Info_ClearChoices(dia_ch_kreise);
};

func void ch_kreise_1()
{
	Info_ClearChoices(dia_ch_kreise);
	B_TeachMagicCircle(self,other,1);
	B_SetKDFRunes();
};

func void ch_kreise_2()
{
	Info_ClearChoices(dia_ch_kreise);
	B_TeachMagicCircle(self,other,2);
	B_SetKDFRunes();
	b_setkdwrunes();
};

func void ch_kreise_3()
{
	Info_ClearChoices(dia_ch_kreise);
	B_TeachMagicCircle(self,other,3);
	B_SetKDFRunes();
	b_setkdwrunes();
};

func void ch_kreise_4()
{
	Info_ClearChoices(dia_ch_kreise);
	B_TeachMagicCircle(self,other,4);
	B_SetKDFRunes();
	b_setkdwrunes();
};

func void ch_kreise_5()
{
	Info_ClearChoices(dia_ch_kreise);
	B_TeachMagicCircle(self,other,5);
	B_SetKDFRunes();
};

func void ch_kreise_6()
{
	Info_ClearChoices(dia_ch_kreise);
	B_TeachMagicCircle(self,other,6);
	B_SetKDFRunes();
};


instance DIA_CH_Runen(C_Info)
{
	npc = ch;
	nr = 5;
	condition = DIA_CH_Runen_Condition;
	information = DIA_CH_Runen_Info;
	permanent = TRUE;
	description = "Runes";
};


func int DIA_CH_Runen_Condition()
{
	if(MagieStart == TRUE)
	{
		return TRUE;
	};
};

func void DIA_CH_Runen_Info()
{
	Info_ClearChoices(DIA_CH_Runen);
	Info_AddChoice(DIA_CH_Runen,Dialog_Back,DIA_CH_Runen_BACK);
	if(Npc_GetTalentSkill(other,NPC_TALENT_MAGE) >= 6)
	{
		Info_AddChoice(DIA_CH_Runen,NAME_CIRCLE_6,DIA_CH_Runen_6);
	};
	if(Npc_GetTalentSkill(other,NPC_TALENT_MAGE) >= 5)
	{
		Info_AddChoice(DIA_CH_Runen,NAME_CIRCLE_5,DIA_CH_Runen_5);
	};
	if(Npc_GetTalentSkill(other,NPC_TALENT_MAGE) >= 4)
	{
		Info_AddChoice(DIA_CH_Runen,NAME_CIRCLE_4,DIA_CH_Runen_4);
	};
	if(Npc_GetTalentSkill(other,NPC_TALENT_MAGE) >= 3)
	{
		Info_AddChoice(DIA_CH_Runen,NAME_CIRCLE_3,DIA_CH_Runen_3);
	};
	if(Npc_GetTalentSkill(other,NPC_TALENT_MAGE) >= 2)
	{
		Info_AddChoice(DIA_CH_Runen,NAME_CIRCLE_2,DIA_CH_Runen_2);
	};
	if(Npc_GetTalentSkill(other,NPC_TALENT_MAGE) >= 1)
	{
		Info_AddChoice(DIA_CH_Runen,NAME_CIRCLE_1,DIA_CH_Runen_1);
	};
};

func void DIA_CH_Runen_BACK()
{
	Info_ClearChoices(DIA_CH_Runen);
};

func void DIA_CH_Runen_1()
{
	Info_ClearChoices(DIA_CH_Runen);
	Info_AddChoice(DIA_CH_Runen,Dialog_Back,DIA_CH_Runen_BACK);
	if(PLAYER_TALENT_RUNES[SPL_SummonGoblinSkeleton] == FALSE)
	{
		Info_AddChoice(DIA_CH_Runen,B_BuildLearnString(NAME_SPL_SummonGoblinSkeleton,B_GetLearnCostTalent(other,NPC_TALENT_RUNES,SPL_SummonGoblinSkeleton)),CH_Training_Runen_Circle_1_SPL_SummonGoblinSkeleton);
	};
	if(PLAYER_TALENT_RUNES[SPL_LightHeal] == FALSE)
	{
		Info_AddChoice(DIA_CH_Runen,B_BuildLearnString(NAME_SPL_LightHeal,B_GetLearnCostTalent(other,NPC_TALENT_RUNES,SPL_LightHeal)),CH_Training_Runen_Circle_1_SPL_LightHeal);
	};
	if(PLAYER_TALENT_RUNES[SPL_Zap] == FALSE)
	{
		Info_AddChoice(DIA_CH_Runen,B_BuildLearnString(NAME_SPL_Zap,B_GetLearnCostTalent(other,NPC_TALENT_RUNES,SPL_Zap)),CH_Training_Runen_Circle_1_SPL_Zap);
	};
	if(PLAYER_TALENT_RUNES[SPL_Firebolt] == FALSE)
	{
		Info_AddChoice(DIA_CH_Runen,B_BuildLearnString(NAME_SPL_Firebolt,B_GetLearnCostTalent(other,NPC_TALENT_RUNES,SPL_Firebolt)),CH_Training_Runen_Circle_1_SPL_Firebolt);
	};
	if(PLAYER_TALENT_RUNES[SPL_Light] == FALSE)
	{
		Info_AddChoice(DIA_CH_Runen,B_BuildLearnString(NAME_SPL_LIGHT,B_GetLearnCostTalent(other,NPC_TALENT_RUNES,SPL_Light)),CH_Training_Runen_Circle_1_SPL_LIGHT);
	};
};

func void CH_Training_Runen_Circle_1_SPL_LIGHT()
{
	B_TeachPlayerTalentRunes(self,other,SPL_Light);
};

func void CH_Training_Runen_Circle_1_SPL_Firebolt()
{
	B_TeachPlayerTalentRunes(self,other,SPL_Firebolt);
};

func void CH_Training_Runen_Circle_1_SPL_Zap()
{
	B_TeachPlayerTalentRunes(self,other,SPL_Zap);
};

func void CH_Training_Runen_Circle_1_SPL_LightHeal()
{
	B_TeachPlayerTalentRunes(self,other,SPL_LightHeal);
};

func void CH_Training_Runen_Circle_1_SPL_SummonGoblinSkeleton()
{
	B_TeachPlayerTalentRunes(self,other,SPL_SummonGoblinSkeleton);
};

func void DIA_CH_Runen_2()
{
	Info_ClearChoices(DIA_CH_Runen);
	Info_AddChoice(DIA_CH_Runen,Dialog_Back,DIA_CH_Runen_BACK);
	if(PLAYER_TALENT_RUNES[SPL_InstantFireball] == FALSE)
	{
		Info_AddChoice(DIA_CH_Runen,B_BuildLearnString(NAME_SPL_InstantFireball,B_GetLearnCostTalent(other,NPC_TALENT_RUNES,SPL_InstantFireball)),CH_Training_Runen_Circle_2_SPL_InstantFireball);
	};
	if(PLAYER_TALENT_RUNES[SPL_Icebolt] == FALSE)
	{
		Info_AddChoice(DIA_CH_Runen,B_BuildLearnString(NAME_SPL_Icebolt,B_GetLearnCostTalent(other,NPC_TALENT_RUNES,SPL_Icebolt)),CH_Training_Runen_Circle_2_SPL_Icebolt);
	};
	if(PLAYER_TALENT_RUNES[SPL_SummonWolf] == FALSE)
	{
		Info_AddChoice(DIA_CH_Runen,B_BuildLearnString(NAME_SPL_SummonWolf,B_GetLearnCostTalent(other,NPC_TALENT_RUNES,SPL_SummonWolf)),CH_Training_Runen_Circle_2_SPL_SummonWolf);
	};
	if(PLAYER_TALENT_RUNES[SPL_WindFist] == FALSE)
	{
		Info_AddChoice(DIA_CH_Runen,B_BuildLearnString(NAME_SPL_WINDFIST,B_GetLearnCostTalent(other,NPC_TALENT_RUNES,SPL_WindFist)),CH_Training_Runen_Circle_2_SPL_WINDFIST);
	};
	if(PLAYER_TALENT_RUNES[SPL_Sleep] == FALSE)
	{
		Info_AddChoice(DIA_CH_Runen,B_BuildLearnString(NAME_SPL_Sleep,B_GetLearnCostTalent(other,NPC_TALENT_RUNES,SPL_Sleep)),CH_Training_Runen_Circle_2_SPL_Sleep);
	};
	if(PLAYER_TALENT_RUNES[SPL_Whirlwind] == FALSE)
	{
		Info_AddChoice(DIA_CH_Runen,B_BuildLearnString(NAME_SPL_Whirlwind,B_GetLearnCostTalent(other,NPC_TALENT_RUNES,SPL_Whirlwind)),ch_training_runen_circle_2_spl_whirlwind);
	};
	if(PLAYER_TALENT_RUNES[SPL_IceLance] == FALSE)
	{
		Info_AddChoice(DIA_CH_Runen,B_BuildLearnString(NAME_SPL_IceLance,B_GetLearnCostTalent(other,NPC_TALENT_RUNES,SPL_IceLance)),ch_training_runen_circle_2_spl_icelance);
	};
};

func void CH_Training_Runen_Circle_2_SPL_InstantFireball()
{
	B_TeachPlayerTalentRunes(self,other,SPL_InstantFireball);
};

func void CH_Training_Runen_Circle_2_SPL_Icebolt()
{
	B_TeachPlayerTalentRunes(self,other,SPL_Icebolt);
};

func void CH_Training_Runen_Circle_2_SPL_SummonWolf()
{
	B_TeachPlayerTalentRunes(self,other,SPL_SummonWolf);
};

func void CH_Training_Runen_Circle_2_SPL_WINDFIST()
{
	B_TeachPlayerTalentRunes(self,other,SPL_WindFist);
};

func void CH_Training_Runen_Circle_2_SPL_Sleep()
{
	B_TeachPlayerTalentRunes(self,other,SPL_Sleep);
};

func void ch_training_runen_circle_2_spl_whirlwind()
{
	B_TeachPlayerTalentRunes(self,other,SPL_Whirlwind);
};

func void ch_training_runen_circle_2_spl_icelance()
{
	B_TeachPlayerTalentRunes(self,other,SPL_IceLance);
};

func void DIA_CH_Runen_3()
{
	Info_ClearChoices(DIA_CH_Runen);
	Info_AddChoice(DIA_CH_Runen,Dialog_Back,DIA_CH_Runen_BACK);
	if(PLAYER_TALENT_RUNES[SPL_MediumHeal] == FALSE)
	{
		Info_AddChoice(DIA_CH_Runen,B_BuildLearnString(NAME_SPL_MediumHeal,B_GetLearnCostTalent(other,NPC_TALENT_RUNES,SPL_MediumHeal)),CH_Training_Runen_Circle_3_SPL_MediumHeal);
	};
	if(PLAYER_TALENT_RUNES[SPL_ChargeZap] == FALSE)
	{
		Info_AddChoice(DIA_CH_Runen,B_BuildLearnString(NAME_SPL_ChargeZap,B_GetLearnCostTalent(other,NPC_TALENT_RUNES,SPL_ChargeZap)),ch_training_runen_circle_3_spl_thunderball);
	};
	if(PLAYER_TALENT_RUNES[SPL_Firestorm] == FALSE)
	{
		Info_AddChoice(DIA_CH_Runen,B_BuildLearnString(NAME_SPL_Firestorm,B_GetLearnCostTalent(other,NPC_TALENT_RUNES,SPL_Firestorm)),ch_training_runen_circle_3_spl_firestorm);
	};
	if(PLAYER_TALENT_RUNES[SPL_SummonSkeleton] == FALSE)
	{
		Info_AddChoice(DIA_CH_Runen,B_BuildLearnString(NAME_SPL_SummonSkeleton,B_GetLearnCostTalent(other,NPC_TALENT_RUNES,SPL_SummonSkeleton)),CH_Training_Runen_Circle_3_SPL_SummonSkeleton);
	};
	if(PLAYER_TALENT_RUNES[SPL_Fear] == FALSE)
	{
		Info_AddChoice(DIA_CH_Runen,B_BuildLearnString(NAME_SPL_Fear,B_GetLearnCostTalent(other,NPC_TALENT_RUNES,SPL_Fear)),CH_Training_Runen_Circle_3_SPL_Fear);
	};
	if(PLAYER_TALENT_RUNES[SPL_IceCube] == FALSE)
	{
		Info_AddChoice(DIA_CH_Runen,B_BuildLearnString(NAME_SPL_IceCube,B_GetLearnCostTalent(other,NPC_TALENT_RUNES,SPL_IceCube)),CH_Training_Runen_Circle_3_SPL_IceCube);
	};
	if(PLAYER_TALENT_RUNES[SPL_Thunderstorm] == FALSE)
	{
		Info_AddChoice(DIA_CH_Runen,B_BuildLearnString(NAME_SPL_Thunderstorm,B_GetLearnCostTalent(other,NPC_TALENT_RUNES,SPL_Thunderstorm)),ch_training_runen_circle_3_spl_thunderstorm);
	};
	if(PLAYER_TALENT_RUNES[SPL_Geyser] == FALSE)
	{
		Info_AddChoice(DIA_CH_Runen,B_BuildLearnString(NAME_SPL_Geyser,B_GetLearnCostTalent(other,NPC_TALENT_RUNES,SPL_Geyser)),ch_training_runen_circle_3_spl_geyser);
	};
};

func void CH_Training_Runen_Circle_3_SPL_MediumHeal()
{
	B_TeachPlayerTalentRunes(self,other,SPL_MediumHeal);
};

func void ch_training_runen_circle_3_spl_thunderball()
{
	B_TeachPlayerTalentRunes(self,other,SPL_ChargeZap);
};

func void ch_training_runen_circle_3_spl_firestorm()
{
	B_TeachPlayerTalentRunes(self,other,SPL_Firestorm);
};

func void CH_Training_Runen_Circle_3_SPL_SummonSkeleton()
{
	B_TeachPlayerTalentRunes(self,other,SPL_SummonSkeleton);
};

func void CH_Training_Runen_Circle_3_SPL_Fear()
{
	B_TeachPlayerTalentRunes(self,other,SPL_Fear);
};

func void CH_Training_Runen_Circle_3_SPL_IceCube()
{
	B_TeachPlayerTalentRunes(self,other,SPL_IceCube);
};

func void ch_training_runen_circle_3_spl_thunderstorm()
{
	B_TeachPlayerTalentRunes(self,other,SPL_Thunderstorm);
};

func void ch_training_runen_circle_3_spl_geyser()
{
	B_TeachPlayerTalentRunes(self,other,SPL_Geyser);
};

func void DIA_CH_Runen_4()
{
	Info_ClearChoices(DIA_CH_Runen);
	Info_AddChoice(DIA_CH_Runen,Dialog_Back,DIA_CH_Runen_BACK);
	if(PLAYER_TALENT_RUNES[SPL_SummonGolem] == FALSE)
	{
		Info_AddChoice(DIA_CH_Runen,B_BuildLearnString(NAME_SPL_SummonGolem,B_GetLearnCostTalent(other,NPC_TALENT_RUNES,SPL_SummonGolem)),CH_Training_Runen_Circle_4_SPL_SummonGolem);
	};
	if(PLAYER_TALENT_RUNES[SPL_DestroyUndead] == FALSE)
	{
		Info_AddChoice(DIA_CH_Runen,B_BuildLearnString(NAME_SPL_DestroyUndead,B_GetLearnCostTalent(other,NPC_TALENT_RUNES,SPL_DestroyUndead)),CH_Training_Runen_Circle_4_SPL_DestroyUndead);
	};
	if(PLAYER_TALENT_RUNES[SPL_LightningFlash] == FALSE)
	{
		Info_AddChoice(DIA_CH_Runen,B_BuildLearnString(NAME_SPL_LightningFlash,B_GetLearnCostTalent(other,NPC_TALENT_RUNES,SPL_LightningFlash)),ch_training_runen_circle_4_spl_lightningflash);
	};
	if(PLAYER_TALENT_RUNES[SPL_ChargeFireball] == FALSE)
	{
		Info_AddChoice(DIA_CH_Runen,B_BuildLearnString(NAME_SPL_ChargeFireball,B_GetLearnCostTalent(other,NPC_TALENT_RUNES,SPL_ChargeFireball)),ch_training_runen_circle_4_spl_chargefireball);
	};
	if(PLAYER_TALENT_RUNES[SPL_WaterFist] == FALSE)
	{
		Info_AddChoice(DIA_CH_Runen,B_BuildLearnString(NAME_SPL_WaterFist,B_GetLearnCostTalent(other,NPC_TALENT_RUNES,SPL_WaterFist)),ch_training_runen_circle_4_spl_waterfist);
	};
};

func void CH_Training_Runen_Circle_4_SPL_SummonGolem()
{
	B_TeachPlayerTalentRunes(self,other,SPL_SummonGolem);
};

func void CH_Training_Runen_Circle_4_SPL_DestroyUndead()
{
	B_TeachPlayerTalentRunes(self,other,SPL_DestroyUndead);
};

func void ch_training_runen_circle_4_spl_lightningflash()
{
	B_TeachPlayerTalentRunes(self,other,SPL_LightningFlash);
};

func void ch_training_runen_circle_4_spl_chargefireball()
{
	B_TeachPlayerTalentRunes(self,other,SPL_ChargeFireball);
};

func void ch_training_runen_circle_4_spl_waterfist()
{
	B_TeachPlayerTalentRunes(self,other,SPL_WaterFist);
};

func void DIA_CH_Runen_5()
{
	Info_ClearChoices(DIA_CH_Runen);
	Info_AddChoice(DIA_CH_Runen,Dialog_Back,DIA_CH_Runen_BACK);
	if(PLAYER_TALENT_RUNES[SPL_IceWave] == FALSE)
	{
		Info_AddChoice(DIA_CH_Runen,B_BuildLearnString(NAME_SPL_IceWave,B_GetLearnCostTalent(other,NPC_TALENT_RUNES,SPL_IceWave)),CH_Training_Runen_Circle_5_SPL_IceWave);
	};
	if(PLAYER_TALENT_RUNES[SPL_SummonDemon] == FALSE)
	{
		Info_AddChoice(DIA_CH_Runen,B_BuildLearnString(NAME_SPL_SummonDemon,B_GetLearnCostTalent(other,NPC_TALENT_RUNES,SPL_SummonDemon)),CH_Training_Runen_Circle_5_SPL_SummonDemon);
	};
	if(PLAYER_TALENT_RUNES[SPL_FullHeal] == FALSE)
	{
		Info_AddChoice(DIA_CH_Runen,B_BuildLearnString(NAME_SPL_FullHeal,B_GetLearnCostTalent(other,NPC_TALENT_RUNES,SPL_FullHeal)),CH_Training_Runen_Circle_5_SPL_FullHeal);
	};
	if(PLAYER_TALENT_RUNES[SPL_Pyrokinesis] == FALSE)
	{
		Info_AddChoice(DIA_CH_Runen,B_BuildLearnString(NAME_SPL_Pyrokinesis,B_GetLearnCostTalent(other,NPC_TALENT_RUNES,SPL_Pyrokinesis)),ch_training_runen_circle_5_spl_pyrokinesis);
	};
};

func void CH_Training_Runen_Circle_5_SPL_IceWave()
{
	B_TeachPlayerTalentRunes(self,other,SPL_IceWave);
};

func void CH_Training_Runen_Circle_5_SPL_SummonDemon()
{
	B_TeachPlayerTalentRunes(self,other,SPL_SummonDemon);
};

func void CH_Training_Runen_Circle_5_SPL_FullHeal()
{
	B_TeachPlayerTalentRunes(self,other,SPL_FullHeal);
};

func void ch_training_runen_circle_5_spl_pyrokinesis()
{
	B_TeachPlayerTalentRunes(self,other,SPL_Pyrokinesis);
};

func void DIA_CH_Runen_6()
{
	Info_ClearChoices(DIA_CH_Runen);
	Info_AddChoice(DIA_CH_Runen,Dialog_Back,DIA_CH_Runen_BACK);
	if(PLAYER_TALENT_RUNES[SPL_Firerain] == FALSE)
	{
		Info_AddChoice(DIA_CH_Runen,B_BuildLearnString(NAME_SPL_Firerain,B_GetLearnCostTalent(other,NPC_TALENT_RUNES,SPL_Firerain)),CH_Training_Runen_Circle_6_SPL_Firerain);
	};
	if(PLAYER_TALENT_RUNES[SPL_BreathOfDeath] == FALSE)
	{
		Info_AddChoice(DIA_CH_Runen,B_BuildLearnString(NAME_SPL_BreathOfDeath,B_GetLearnCostTalent(other,NPC_TALENT_RUNES,SPL_BreathOfDeath)),CH_Training_Runen_Circle_6_SPL_BreathOfDeath);
	};
	if(PLAYER_TALENT_RUNES[SPL_MassDeath] == FALSE)
	{
		Info_AddChoice(DIA_CH_Runen,B_BuildLearnString(NAME_SPL_MassDeath,B_GetLearnCostTalent(other,NPC_TALENT_RUNES,SPL_MassDeath)),CH_Training_Runen_Circle_6_SPL_MassDeath);
	};
	if(PLAYER_TALENT_RUNES[SPL_ArmyOfDarkness] == FALSE)
	{
		Info_AddChoice(DIA_CH_Runen,B_BuildLearnString(NAME_SPL_ArmyOfDarkness,B_GetLearnCostTalent(other,NPC_TALENT_RUNES,SPL_ArmyOfDarkness)),CH_Training_Runen_Circle_6_SPL_ArmyOfDarkness);
	};
	if(PLAYER_TALENT_RUNES[SPL_Shrink] == FALSE)
	{
		Info_AddChoice(DIA_CH_Runen,B_BuildLearnString(NAME_SPL_Shrink,B_GetLearnCostTalent(other,NPC_TALENT_RUNES,SPL_Shrink)),CH_Training_Runen_Circle_6_SPL_Shrink);
	};
};

func void CH_Training_Runen_Circle_6_SPL_Firerain()
{
	B_TeachPlayerTalentRunes(self,other,SPL_Firerain);
};

func void CH_Training_Runen_Circle_6_SPL_BreathOfDeath()
{
	B_TeachPlayerTalentRunes(self,other,SPL_BreathOfDeath);
};

func void CH_Training_Runen_Circle_6_SPL_MassDeath()
{
	B_TeachPlayerTalentRunes(self,other,SPL_MassDeath);
};

func void CH_Training_Runen_Circle_6_SPL_ArmyOfDarkness()
{
	B_TeachPlayerTalentRunes(self,other,SPL_ArmyOfDarkness);
};

func void CH_Training_Runen_Circle_6_SPL_Shrink()
{
	B_TeachPlayerTalentRunes(self,other,SPL_Shrink);
};


instance DIA_CH_Kampf_Start(C_Info)
{
	npc = ch;
	nr = 6;
	condition = DIA_CH_Kampf_Start_Condition;
	information = DIA_CH_Kampf_Start_Info;
	permanent = TRUE;
	description = "Combat skills";
};


func int DIA_CH_Kampf_Start_Condition()
{
	if((KampfStart == FALSE) && (MagieStart == FALSE) && (AttributeStart == FALSE) && (LevelStart == FALSE) && (DiebStart == FALSE) && (LEVELUP == FALSE))
	{
		return TRUE;
	};
};

func void DIA_CH_Kampf_Start_Info()
{
	KampfStart = TRUE;
};


instance DIA_CH_Kampf_Stopper(C_Info)
{
	npc = ch;
	nr = 99;
	condition = DIA_CH_Kampf_Stopper_Condition;
	information = DIA_CH_Kampf_Stopper_Info;
	permanent = TRUE;
	description = Dialog_Back;
};


func int DIA_CH_Kampf_Stopper_Condition()
{
	if(KampfStart == TRUE)
	{
		return TRUE;
	};
};

func void DIA_CH_Kampf_Stopper_Info()
{
	KampfStart = FALSE;
};


instance DIA_CH_Kampf_Einhand(C_Info)
{
	npc = ch;
	nr = 6;
	condition = DIA_CH_Kampf_Einhand_Condition;
	information = DIA_CH_Kampf_Einhand_Info;
	permanent = TRUE;
	description = "One-handed weapons";
};


func int DIA_CH_Kampf_Einhand_Condition()
{
	if(KampfStart == TRUE)
	{
		return TRUE;
	};
};

func void DIA_CH_Kampf_Einhand_Info()
{
	Info_ClearChoices(DIA_CH_Kampf_Einhand);
	Info_AddChoice(DIA_CH_Kampf_Einhand,Dialog_Back,DIA_CH_Kampf_Einhand_BACK);
	Info_AddChoice(DIA_CH_Kampf_Einhand,B_BuildLearnString("One-handed weapons +20",B_GetLearnCostTalent(other,NPC_TALENT_1H,20)),CH_Training_Combat_1H_20);
	Info_AddChoice(DIA_CH_Kampf_Einhand,B_BuildLearnString("One-handed weapons +10",B_GetLearnCostTalent(other,NPC_TALENT_1H,10)),CH_Training_Combat_1H_10);
	Info_AddChoice(DIA_CH_Kampf_Einhand,B_BuildLearnString("One-handed weapons +5",B_GetLearnCostTalent(other,NPC_TALENT_1H,5)),CH_Training_Combat_1H_5);
	Info_AddChoice(DIA_CH_Kampf_Einhand,B_BuildLearnString("One-handed weapons +1",B_GetLearnCostTalent(other,NPC_TALENT_1H,1)),CH_Training_Combat_1H_1);
};

func void DIA_CH_Kampf_Einhand_BACK()
{
	Info_ClearChoices(DIA_CH_Kampf_Einhand);
};

func void CH_Training_Combat_1H_1()
{
	B_TeachFightTalentPercent(self,other,NPC_TALENT_1H,1,100);
	Info_ClearChoices(DIA_CH_Kampf_Einhand);
	Info_AddChoice(DIA_CH_Kampf_Einhand,Dialog_Back,DIA_CH_Kampf_Einhand_BACK);
	Info_AddChoice(DIA_CH_Kampf_Einhand,B_BuildLearnString("One-handed weapons +20",B_GetLearnCostTalent(other,NPC_TALENT_1H,20)),CH_Training_Combat_1H_20);
	Info_AddChoice(DIA_CH_Kampf_Einhand,B_BuildLearnString("One-handed weapons +10",B_GetLearnCostTalent(other,NPC_TALENT_1H,10)),CH_Training_Combat_1H_10);
	Info_AddChoice(DIA_CH_Kampf_Einhand,B_BuildLearnString("One-handed weapons +5",B_GetLearnCostTalent(other,NPC_TALENT_1H,5)),CH_Training_Combat_1H_5);
	Info_AddChoice(DIA_CH_Kampf_Einhand,B_BuildLearnString("One-handed weapons +1",B_GetLearnCostTalent(other,NPC_TALENT_1H,1)),CH_Training_Combat_1H_1);
};

func void CH_Training_Combat_1H_5()
{
	B_TeachFightTalentPercent(self,other,NPC_TALENT_1H,5,100);
	Info_ClearChoices(DIA_CH_Kampf_Einhand);
	Info_AddChoice(DIA_CH_Kampf_Einhand,Dialog_Back,DIA_CH_Kampf_Einhand_BACK);
	Info_AddChoice(DIA_CH_Kampf_Einhand,B_BuildLearnString("One-handed weapons +20",B_GetLearnCostTalent(other,NPC_TALENT_1H,20)),CH_Training_Combat_1H_20);
	Info_AddChoice(DIA_CH_Kampf_Einhand,B_BuildLearnString("One-handed weapons +10",B_GetLearnCostTalent(other,NPC_TALENT_1H,10)),CH_Training_Combat_1H_10);
	Info_AddChoice(DIA_CH_Kampf_Einhand,B_BuildLearnString("One-handed weapons +5",B_GetLearnCostTalent(other,NPC_TALENT_1H,5)),CH_Training_Combat_1H_5);
	Info_AddChoice(DIA_CH_Kampf_Einhand,B_BuildLearnString("One-handed weapons +1",B_GetLearnCostTalent(other,NPC_TALENT_1H,1)),CH_Training_Combat_1H_1);
};

func void CH_Training_Combat_1H_10()
{
	B_TeachFightTalentPercent(self,other,NPC_TALENT_1H,10,100);
	Info_ClearChoices(DIA_CH_Kampf_Einhand);
	Info_AddChoice(DIA_CH_Kampf_Einhand,Dialog_Back,DIA_CH_Kampf_Einhand_BACK);
	Info_AddChoice(DIA_CH_Kampf_Einhand,B_BuildLearnString("One-handed weapons +20",B_GetLearnCostTalent(other,NPC_TALENT_1H,20)),CH_Training_Combat_1H_20);
	Info_AddChoice(DIA_CH_Kampf_Einhand,B_BuildLearnString("One-handed weapons +10",B_GetLearnCostTalent(other,NPC_TALENT_1H,10)),CH_Training_Combat_1H_10);
	Info_AddChoice(DIA_CH_Kampf_Einhand,B_BuildLearnString("One-handed weapons +5",B_GetLearnCostTalent(other,NPC_TALENT_1H,5)),CH_Training_Combat_1H_5);
	Info_AddChoice(DIA_CH_Kampf_Einhand,B_BuildLearnString("One-handed weapons +1",B_GetLearnCostTalent(other,NPC_TALENT_1H,1)),CH_Training_Combat_1H_1);
};

func void CH_Training_Combat_1H_20()
{
	B_TeachFightTalentPercent(self,other,NPC_TALENT_1H,20,100);
	Info_ClearChoices(DIA_CH_Kampf_Einhand);
	Info_AddChoice(DIA_CH_Kampf_Einhand,Dialog_Back,DIA_CH_Kampf_Einhand_BACK);
	Info_AddChoice(DIA_CH_Kampf_Einhand,B_BuildLearnString("One-handed weapons +20",B_GetLearnCostTalent(other,NPC_TALENT_1H,20)),CH_Training_Combat_1H_20);
	Info_AddChoice(DIA_CH_Kampf_Einhand,B_BuildLearnString("One-handed weapons +10",B_GetLearnCostTalent(other,NPC_TALENT_1H,10)),CH_Training_Combat_1H_10);
	Info_AddChoice(DIA_CH_Kampf_Einhand,B_BuildLearnString("One-handed weapons +5",B_GetLearnCostTalent(other,NPC_TALENT_1H,5)),CH_Training_Combat_1H_5);
	Info_AddChoice(DIA_CH_Kampf_Einhand,B_BuildLearnString("One-handed weapons +1",B_GetLearnCostTalent(other,NPC_TALENT_1H,1)),CH_Training_Combat_1H_1);
};


instance DIA_CH_Kampf_Zweihand(C_Info)
{
	npc = ch;
	nr = 7;
	condition = DIA_CH_Kampf_Zweihand_Condition;
	information = DIA_CH_Kampf_Zweihand_Info;
	permanent = TRUE;
	description = "Two-handed weapons";
};


func int DIA_CH_Kampf_Zweihand_Condition()
{
	if(KampfStart == TRUE)
	{
		return TRUE;
	};
};

func void DIA_CH_Kampf_Zweihand_Info()
{
	Info_ClearChoices(DIA_CH_Kampf_Zweihand);
	Info_AddChoice(DIA_CH_Kampf_Zweihand,Dialog_Back,DIA_CH_Kampf_Zweihand_BACK);
	Info_AddChoice(DIA_CH_Kampf_Zweihand,B_BuildLearnString("Two-handed weapons +20",B_GetLearnCostTalent(other,NPC_TALENT_2H,20)),CH_Training_Combat_2H_20);
	Info_AddChoice(DIA_CH_Kampf_Zweihand,B_BuildLearnString("Two-handed weapons +10",B_GetLearnCostTalent(other,NPC_TALENT_2H,10)),CH_Training_Combat_2H_10);
	Info_AddChoice(DIA_CH_Kampf_Zweihand,B_BuildLearnString("Two-handed weapons +5",B_GetLearnCostTalent(other,NPC_TALENT_2H,5)),CH_Training_Combat_2H_5);
	Info_AddChoice(DIA_CH_Kampf_Zweihand,B_BuildLearnString("Two-handed weapons +1",B_GetLearnCostTalent(other,NPC_TALENT_2H,1)),CH_Training_Combat_2H_1);
};

func void DIA_CH_Kampf_Zweihand_BACK()
{
	Info_ClearChoices(DIA_CH_Kampf_Zweihand);
};

func void CH_Training_Combat_2H_1()
{
	B_TeachFightTalentPercent(self,other,NPC_TALENT_2H,1,100);
	Info_ClearChoices(DIA_CH_Kampf_Zweihand);
	Info_AddChoice(DIA_CH_Kampf_Zweihand,Dialog_Back,DIA_CH_Kampf_Zweihand_BACK);
	Info_AddChoice(DIA_CH_Kampf_Zweihand,B_BuildLearnString("Two-handed weapons +20",B_GetLearnCostTalent(other,NPC_TALENT_2H,20)),CH_Training_Combat_2H_20);
	Info_AddChoice(DIA_CH_Kampf_Zweihand,B_BuildLearnString("Two-handed weapons +10",B_GetLearnCostTalent(other,NPC_TALENT_2H,10)),CH_Training_Combat_2H_10);
	Info_AddChoice(DIA_CH_Kampf_Zweihand,B_BuildLearnString("Two-handed weapons +5",B_GetLearnCostTalent(other,NPC_TALENT_2H,5)),CH_Training_Combat_2H_5);
	Info_AddChoice(DIA_CH_Kampf_Zweihand,B_BuildLearnString("Two-handed weapons +1",B_GetLearnCostTalent(other,NPC_TALENT_2H,1)),CH_Training_Combat_2H_1);
};

func void CH_Training_Combat_2H_5()
{
	B_TeachFightTalentPercent(self,other,NPC_TALENT_2H,5,100);
	Info_ClearChoices(DIA_CH_Kampf_Zweihand);
	Info_AddChoice(DIA_CH_Kampf_Zweihand,Dialog_Back,DIA_CH_Kampf_Zweihand_BACK);
	Info_AddChoice(DIA_CH_Kampf_Zweihand,B_BuildLearnString("Two-handed weapons +20",B_GetLearnCostTalent(other,NPC_TALENT_2H,20)),CH_Training_Combat_2H_20);
	Info_AddChoice(DIA_CH_Kampf_Zweihand,B_BuildLearnString("Two-handed weapons +10",B_GetLearnCostTalent(other,NPC_TALENT_2H,10)),CH_Training_Combat_2H_10);
	Info_AddChoice(DIA_CH_Kampf_Zweihand,B_BuildLearnString("Two-handed weapons +5",B_GetLearnCostTalent(other,NPC_TALENT_2H,5)),CH_Training_Combat_2H_5);
	Info_AddChoice(DIA_CH_Kampf_Zweihand,B_BuildLearnString("Two-handed weapons +1",B_GetLearnCostTalent(other,NPC_TALENT_2H,1)),CH_Training_Combat_2H_1);
};

func void CH_Training_Combat_2H_10()
{
	B_TeachFightTalentPercent(self,other,NPC_TALENT_2H,10,100);
	Info_ClearChoices(DIA_CH_Kampf_Zweihand);
	Info_AddChoice(DIA_CH_Kampf_Zweihand,Dialog_Back,DIA_CH_Kampf_Zweihand_BACK);
	Info_AddChoice(DIA_CH_Kampf_Zweihand,B_BuildLearnString("Two-handed weapons +20",B_GetLearnCostTalent(other,NPC_TALENT_2H,20)),CH_Training_Combat_2H_20);
	Info_AddChoice(DIA_CH_Kampf_Zweihand,B_BuildLearnString("Two-handed weapons +10",B_GetLearnCostTalent(other,NPC_TALENT_2H,10)),CH_Training_Combat_2H_10);
	Info_AddChoice(DIA_CH_Kampf_Zweihand,B_BuildLearnString("Two-handed weapons +5",B_GetLearnCostTalent(other,NPC_TALENT_2H,5)),CH_Training_Combat_2H_5);
	Info_AddChoice(DIA_CH_Kampf_Zweihand,B_BuildLearnString("Two-handed weapons +1",B_GetLearnCostTalent(other,NPC_TALENT_2H,1)),CH_Training_Combat_2H_1);
};

func void CH_Training_Combat_2H_20()
{
	B_TeachFightTalentPercent(self,other,NPC_TALENT_2H,20,100);
	Info_ClearChoices(DIA_CH_Kampf_Zweihand);
	Info_AddChoice(DIA_CH_Kampf_Zweihand,Dialog_Back,DIA_CH_Kampf_Zweihand_BACK);
	Info_AddChoice(DIA_CH_Kampf_Zweihand,B_BuildLearnString("Two-handed weapons +20",B_GetLearnCostTalent(other,NPC_TALENT_2H,20)),CH_Training_Combat_2H_20);
	Info_AddChoice(DIA_CH_Kampf_Zweihand,B_BuildLearnString("Two-handed weapons +10",B_GetLearnCostTalent(other,NPC_TALENT_2H,10)),CH_Training_Combat_2H_10);
	Info_AddChoice(DIA_CH_Kampf_Zweihand,B_BuildLearnString("Two-handed weapons +5",B_GetLearnCostTalent(other,NPC_TALENT_2H,5)),CH_Training_Combat_2H_5);
	Info_AddChoice(DIA_CH_Kampf_Zweihand,B_BuildLearnString("Two-handed weapons +1",B_GetLearnCostTalent(other,NPC_TALENT_2H,1)),CH_Training_Combat_2H_1);
};


instance DIA_CH_Kampf_Bogen(C_Info)
{
	npc = ch;
	nr = 8;
	condition = DIA_CH_Kampf_Bogen_Condition;
	information = DIA_CH_Kampf_Bogen_Info;
	permanent = TRUE;
	description = "Bows";
};


func int DIA_CH_Kampf_Bogen_Condition()
{
	if(KampfStart == TRUE)
	{
		return TRUE;
	};
};

func void DIA_CH_Kampf_Bogen_Info()
{
	Info_ClearChoices(DIA_CH_Kampf_Bogen);
	Info_AddChoice(DIA_CH_Kampf_Bogen,Dialog_Back,DIA_CH_Kampf_Bogen_BACK);
	Info_AddChoice(DIA_CH_Kampf_Bogen,B_BuildLearnString("Bows +20",B_GetLearnCostTalent(other,NPC_TALENT_BOW,20)),CH_Training_Combat_BOW_20);
	Info_AddChoice(DIA_CH_Kampf_Bogen,B_BuildLearnString("Bows +10",B_GetLearnCostTalent(other,NPC_TALENT_BOW,10)),CH_Training_Combat_BOW_10);
	Info_AddChoice(DIA_CH_Kampf_Bogen,B_BuildLearnString("Bows +5",B_GetLearnCostTalent(other,NPC_TALENT_BOW,5)),CH_Training_Combat_BOW_5);
	Info_AddChoice(DIA_CH_Kampf_Bogen,B_BuildLearnString("Bows +1",B_GetLearnCostTalent(other,NPC_TALENT_BOW,1)),CH_Training_Combat_BOW_1);
};

func void DIA_CH_Kampf_Bogen_BACK()
{
	Info_ClearChoices(DIA_CH_Kampf_Bogen);
};

func void CH_Training_Combat_BOW_1()
{
	B_TeachFightTalentPercent(self,other,NPC_TALENT_BOW,1,100);
	Info_ClearChoices(DIA_CH_Kampf_Bogen);
	Info_AddChoice(DIA_CH_Kampf_Bogen,Dialog_Back,DIA_CH_Kampf_Bogen_BACK);
	Info_AddChoice(DIA_CH_Kampf_Bogen,B_BuildLearnString("Bows +20",B_GetLearnCostTalent(other,NPC_TALENT_BOW,20)),CH_Training_Combat_BOW_20);
	Info_AddChoice(DIA_CH_Kampf_Bogen,B_BuildLearnString("Bows +10",B_GetLearnCostTalent(other,NPC_TALENT_BOW,10)),CH_Training_Combat_BOW_10);
	Info_AddChoice(DIA_CH_Kampf_Bogen,B_BuildLearnString("Bows +5",B_GetLearnCostTalent(other,NPC_TALENT_BOW,5)),CH_Training_Combat_BOW_5);
	Info_AddChoice(DIA_CH_Kampf_Bogen,B_BuildLearnString("Bows +1",B_GetLearnCostTalent(other,NPC_TALENT_BOW,1)),CH_Training_Combat_BOW_1);
};

func void CH_Training_Combat_BOW_5()
{
	B_TeachFightTalentPercent(self,other,NPC_TALENT_BOW,5,100);
	Info_ClearChoices(DIA_CH_Kampf_Bogen);
	Info_AddChoice(DIA_CH_Kampf_Bogen,Dialog_Back,DIA_CH_Kampf_Bogen_BACK);
	Info_AddChoice(DIA_CH_Kampf_Bogen,B_BuildLearnString("Bows +20",B_GetLearnCostTalent(other,NPC_TALENT_BOW,20)),CH_Training_Combat_BOW_20);
	Info_AddChoice(DIA_CH_Kampf_Bogen,B_BuildLearnString("Bows +10",B_GetLearnCostTalent(other,NPC_TALENT_BOW,10)),CH_Training_Combat_BOW_10);
	Info_AddChoice(DIA_CH_Kampf_Bogen,B_BuildLearnString("Bows +5",B_GetLearnCostTalent(other,NPC_TALENT_BOW,5)),CH_Training_Combat_BOW_5);
	Info_AddChoice(DIA_CH_Kampf_Bogen,B_BuildLearnString("Bows +1",B_GetLearnCostTalent(other,NPC_TALENT_BOW,1)),CH_Training_Combat_BOW_1);
};

func void CH_Training_Combat_BOW_10()
{
	B_TeachFightTalentPercent(self,other,NPC_TALENT_BOW,10,100);
	Info_ClearChoices(DIA_CH_Kampf_Bogen);
	Info_AddChoice(DIA_CH_Kampf_Bogen,Dialog_Back,DIA_CH_Kampf_Bogen_BACK);
	Info_AddChoice(DIA_CH_Kampf_Bogen,B_BuildLearnString("Bows +20",B_GetLearnCostTalent(other,NPC_TALENT_BOW,20)),CH_Training_Combat_BOW_20);
	Info_AddChoice(DIA_CH_Kampf_Bogen,B_BuildLearnString("Bows +10",B_GetLearnCostTalent(other,NPC_TALENT_BOW,10)),CH_Training_Combat_BOW_10);
	Info_AddChoice(DIA_CH_Kampf_Bogen,B_BuildLearnString("Bows +5",B_GetLearnCostTalent(other,NPC_TALENT_BOW,5)),CH_Training_Combat_BOW_5);
	Info_AddChoice(DIA_CH_Kampf_Bogen,B_BuildLearnString("Bows +1",B_GetLearnCostTalent(other,NPC_TALENT_BOW,1)),CH_Training_Combat_BOW_1);
};

func void CH_Training_Combat_BOW_20()
{
	B_TeachFightTalentPercent(self,other,NPC_TALENT_BOW,20,100);
	Info_ClearChoices(DIA_CH_Kampf_Bogen);
	Info_AddChoice(DIA_CH_Kampf_Bogen,Dialog_Back,DIA_CH_Kampf_Bogen_BACK);
	Info_AddChoice(DIA_CH_Kampf_Bogen,B_BuildLearnString("Bows +20",B_GetLearnCostTalent(other,NPC_TALENT_BOW,20)),CH_Training_Combat_BOW_20);
	Info_AddChoice(DIA_CH_Kampf_Bogen,B_BuildLearnString("Bows +10",B_GetLearnCostTalent(other,NPC_TALENT_BOW,10)),CH_Training_Combat_BOW_10);
	Info_AddChoice(DIA_CH_Kampf_Bogen,B_BuildLearnString("Bows +5",B_GetLearnCostTalent(other,NPC_TALENT_BOW,5)),CH_Training_Combat_BOW_5);
	Info_AddChoice(DIA_CH_Kampf_Bogen,B_BuildLearnString("Bows +1",B_GetLearnCostTalent(other,NPC_TALENT_BOW,1)),CH_Training_Combat_BOW_1);
};


instance DIA_CH_Kampf_Armbrust(C_Info)
{
	npc = ch;
	nr = 8;
	condition = DIA_CH_Kampf_Armbrust_Condition;
	information = DIA_CH_Kampf_Armbrust_Info;
	permanent = TRUE;
	description = "Crossbows";
};


func int DIA_CH_Kampf_Armbrust_Condition()
{
	if(KampfStart == TRUE)
	{
		return TRUE;
	};
};

func void DIA_CH_Kampf_Armbrust_Info()
{
	Info_ClearChoices(DIA_CH_Kampf_Armbrust);
	Info_AddChoice(DIA_CH_Kampf_Armbrust,Dialog_Back,DIA_CH_Kampf_Armbrust_BACK);
	Info_AddChoice(DIA_CH_Kampf_Armbrust,B_BuildLearnString("Crossbows +20",B_GetLearnCostTalent(other,NPC_TALENT_CROSSBOW,20)),CH_Training_Combat_CROSSBOW_20);
	Info_AddChoice(DIA_CH_Kampf_Armbrust,B_BuildLearnString("Crossbows +10",B_GetLearnCostTalent(other,NPC_TALENT_CROSSBOW,10)),CH_Training_Combat_CROSSBOW_10);
	Info_AddChoice(DIA_CH_Kampf_Armbrust,B_BuildLearnString("Crossbows +5",B_GetLearnCostTalent(other,NPC_TALENT_CROSSBOW,5)),CH_Training_Combat_CROSSBOW_5);
	Info_AddChoice(DIA_CH_Kampf_Armbrust,B_BuildLearnString("Crossbows +1",B_GetLearnCostTalent(other,NPC_TALENT_CROSSBOW,1)),CH_Training_Combat_CROSSBOW_1);
};

func void DIA_CH_Kampf_Armbrust_BACK()
{
	Info_ClearChoices(DIA_CH_Kampf_Armbrust);
};

func void CH_Training_Combat_CROSSBOW_1()
{
	B_TeachFightTalentPercent(self,other,NPC_TALENT_CROSSBOW,1,100);
	Info_ClearChoices(DIA_CH_Kampf_Armbrust);
	Info_AddChoice(DIA_CH_Kampf_Armbrust,Dialog_Back,DIA_CH_Kampf_Armbrust_BACK);
	Info_AddChoice(DIA_CH_Kampf_Armbrust,B_BuildLearnString("Crossbows +20",B_GetLearnCostTalent(other,NPC_TALENT_CROSSBOW,20)),CH_Training_Combat_CROSSBOW_20);
	Info_AddChoice(DIA_CH_Kampf_Armbrust,B_BuildLearnString("Crossbows +10",B_GetLearnCostTalent(other,NPC_TALENT_CROSSBOW,10)),CH_Training_Combat_CROSSBOW_10);
	Info_AddChoice(DIA_CH_Kampf_Armbrust,B_BuildLearnString("Crossbows +5",B_GetLearnCostTalent(other,NPC_TALENT_CROSSBOW,5)),CH_Training_Combat_CROSSBOW_5);
	Info_AddChoice(DIA_CH_Kampf_Armbrust,B_BuildLearnString("Crossbows +1",B_GetLearnCostTalent(other,NPC_TALENT_CROSSBOW,1)),CH_Training_Combat_CROSSBOW_1);
};

func void CH_Training_Combat_CROSSBOW_5()
{
	B_TeachFightTalentPercent(self,other,NPC_TALENT_CROSSBOW,5,100);
	Info_ClearChoices(DIA_CH_Kampf_Armbrust);
	Info_AddChoice(DIA_CH_Kampf_Armbrust,Dialog_Back,DIA_CH_Kampf_Armbrust_BACK);
	Info_AddChoice(DIA_CH_Kampf_Armbrust,B_BuildLearnString("Crossbows +20",B_GetLearnCostTalent(other,NPC_TALENT_CROSSBOW,20)),CH_Training_Combat_CROSSBOW_20);
	Info_AddChoice(DIA_CH_Kampf_Armbrust,B_BuildLearnString("Crossbows +10",B_GetLearnCostTalent(other,NPC_TALENT_CROSSBOW,10)),CH_Training_Combat_CROSSBOW_10);
	Info_AddChoice(DIA_CH_Kampf_Armbrust,B_BuildLearnString("Crossbows +5",B_GetLearnCostTalent(other,NPC_TALENT_CROSSBOW,5)),CH_Training_Combat_CROSSBOW_5);
	Info_AddChoice(DIA_CH_Kampf_Armbrust,B_BuildLearnString("Crossbows +1",B_GetLearnCostTalent(other,NPC_TALENT_CROSSBOW,1)),CH_Training_Combat_CROSSBOW_1);
};

func void CH_Training_Combat_CROSSBOW_10()
{
	B_TeachFightTalentPercent(self,other,NPC_TALENT_CROSSBOW,10,100);
	Info_ClearChoices(DIA_CH_Kampf_Armbrust);
	Info_AddChoice(DIA_CH_Kampf_Armbrust,Dialog_Back,DIA_CH_Kampf_Armbrust_BACK);
	Info_AddChoice(DIA_CH_Kampf_Armbrust,B_BuildLearnString("Crossbows +20",B_GetLearnCostTalent(other,NPC_TALENT_CROSSBOW,20)),CH_Training_Combat_CROSSBOW_20);
	Info_AddChoice(DIA_CH_Kampf_Armbrust,B_BuildLearnString("Crossbows +10",B_GetLearnCostTalent(other,NPC_TALENT_CROSSBOW,10)),CH_Training_Combat_CROSSBOW_10);
	Info_AddChoice(DIA_CH_Kampf_Armbrust,B_BuildLearnString("Crossbows +5",B_GetLearnCostTalent(other,NPC_TALENT_CROSSBOW,5)),CH_Training_Combat_CROSSBOW_5);
	Info_AddChoice(DIA_CH_Kampf_Armbrust,B_BuildLearnString("Crossbows +1",B_GetLearnCostTalent(other,NPC_TALENT_CROSSBOW,1)),CH_Training_Combat_CROSSBOW_1);
};

func void CH_Training_Combat_CROSSBOW_20()
{
	B_TeachFightTalentPercent(self,other,NPC_TALENT_CROSSBOW,20,100);
	Info_ClearChoices(DIA_CH_Kampf_Armbrust);
	Info_AddChoice(DIA_CH_Kampf_Armbrust,Dialog_Back,DIA_CH_Kampf_Armbrust_BACK);
	Info_AddChoice(DIA_CH_Kampf_Armbrust,B_BuildLearnString("Crossbows +20",B_GetLearnCostTalent(other,NPC_TALENT_CROSSBOW,20)),CH_Training_Combat_CROSSBOW_20);
	Info_AddChoice(DIA_CH_Kampf_Armbrust,B_BuildLearnString("Crossbows +10",B_GetLearnCostTalent(other,NPC_TALENT_CROSSBOW,10)),CH_Training_Combat_CROSSBOW_10);
	Info_AddChoice(DIA_CH_Kampf_Armbrust,B_BuildLearnString("Crossbows +5",B_GetLearnCostTalent(other,NPC_TALENT_CROSSBOW,5)),CH_Training_Combat_CROSSBOW_5);
	Info_AddChoice(DIA_CH_Kampf_Armbrust,B_BuildLearnString("Crossbows +1",B_GetLearnCostTalent(other,NPC_TALENT_CROSSBOW,1)),CH_Training_Combat_CROSSBOW_1);
};


instance DIA_CH_Dieb_Start(C_Info)
{
	npc = ch;
	nr = 6;
	condition = DIA_CH_Dieb_Start_Condition;
	information = DIA_CH_Dieb_Start_Info;
	permanent = TRUE;
	description = "Thief skills";
};


func int DIA_CH_Dieb_Start_Condition()
{
	if((KampfStart == FALSE) && (MagieStart == FALSE) && (AttributeStart == FALSE) && (LevelStart == FALSE) && (DiebStart == FALSE) && (LEVELUP == FALSE))
	{
		return TRUE;
	};
};

func void DIA_CH_Dieb_Start_Info()
{
	Info_ClearChoices(DIA_CH_Dieb_Start);
	Info_AddChoice(DIA_CH_Dieb_Start,Dialog_Back,dia_ch_dieb_start_back);
	if(Npc_GetTalentSkill(other,NPC_TALENT_PICKPOCKET) == FALSE)
	{
		Info_AddChoice(DIA_CH_Dieb_Start,B_BuildLearnString("Pickpocketing",B_GetLearnCostTalent(other,NPC_TALENT_PICKPOCKET,1)),CH_Training_Thief_Pickpocket);
	};
	if(Npc_GetTalentSkill(other,NPC_TALENT_PICKLOCK) == FALSE)
	{
		Info_AddChoice(DIA_CH_Dieb_Start,B_BuildLearnString("Lock picking",B_GetLearnCostTalent(other,NPC_TALENT_PICKLOCK,1)),CH_Training_Thief_Picklock);
	};
	if(Npc_GetTalentSkill(other,NPC_TALENT_SNEAK) == FALSE)
	{
		Info_AddChoice(DIA_CH_Dieb_Start,B_BuildLearnString("Sneaking",B_GetLearnCostTalent(other,NPC_TALENT_SNEAK,1)),CH_Training_Thief_Sneak);
	};
};

func void dia_ch_dieb_start_back()
{
	Info_ClearChoices(DIA_CH_Dieb_Start);
};

func void CH_Training_Thief_Pickpocket()
{
	B_TeachThiefTalent(self,other,NPC_TALENT_PICKPOCKET);
};

func void CH_Training_Thief_Picklock()
{
	B_TeachThiefTalent(self,other,NPC_TALENT_PICKLOCK);
};

func void CH_Training_Thief_Sneak()
{
	B_TeachThiefTalent(self,other,NPC_TALENT_SNEAK);
};

