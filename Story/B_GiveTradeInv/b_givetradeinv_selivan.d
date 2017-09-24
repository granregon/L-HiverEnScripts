
var int selivan_itemsgiven_chapter_1;
var int selivan_itemsgiven_chapter_2;
var int selivan_itemsgiven_chapter_3;
var int selivan_itemsgiven_chapter_4;
var int selivan_itemsgiven_chapter_5;

func void b_givetradeinv_selivan(var C_Npc slf)
{
	if((Kapitel >= 1) && (SELIVAN_ITEMSGIVEN_CHAPTER_1 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,31);
		CreateInvItems(slf,ItSc_Light,6);
		CreateInvItems(slf,ItSc_Sleep,1);
		CreateInvItems(slf,ItSc_Firebolt,20);
		CreateInvItems(slf,ItSc_Icebolt,8);
		CreateInvItems(slf,ItSc_InstantFireball,10);
		CreateInvItems(slf,ItSc_LightningFlash,5);
		CreateInvItems(slf,ItSc_HarmUndead,1);
		CreateInvItems(slf,ItSc_Firestorm,3);
		CreateInvItems(slf,ItSc_IceWave,1);
		CreateInvItems(slf,ItSc_Zap,5);
		CreateInvItems(slf,ItSc_IceCube,3);
		CreateInvItems(slf,ItSc_Windfist,3);
		CreateInvItems(slf,ItSc_IceWave,1);
		CreateInvItems(slf,ItSc_Shrink,1);
		CreateInvItems(slf,ItSc_SumGobSkel,1);
		CreateInvItems(slf,ItSc_SumSkel,1);
		CreateInvItems(slf,ItSc_SumWolf,1);
		CreateInvItems(slf,ItSc_SumGol,1);
		CreateInvItems(slf,ItBe_Addon_Prot_MAGIC,1);
		CreateInvItems(slf,ItAm_Hp_Mana_01,1);
		CreateInvItems(slf,ItAm_Prot_Fire_01,1);
		CreateInvItems(slf,ItAm_Prot_Point_01,1);
		CreateInvItems(slf,ItRi_HP_01,1);
		CreateInvItems(slf,ItMi_Aquamarine,1);
		CreateInvItems(slf,ItMi_Quartz,2);
		CreateInvItems(slf,ItMi_Rockcrystal,3);
		CreateInvItems(slf,ItMi_HolyWater,1);
		CreateInvItems(slf,ItMi_Pliers,1);
		CreateInvItems(slf,ItMi_Coal,2);
		CreateInvItems(slf,ItMi_Flask,6);
		CreateInvItems(slf,itmi_amthstdust_01,1);
		CreateInvItems(slf,itmi_rubdust_01,1);
		CreateInvItems(slf,itmi_amber,1);
		CreateInvItems(slf,itmi_topaz,1);
		CreateInvItems(slf,ItMi_SilverNecklace,1);
		CreateInvItems(slf,itbe_addon_enchleather_01,1);
		SELIVAN_ITEMSGIVEN_CHAPTER_1 = TRUE;
	};
	if((Kapitel >= 2) && (SELIVAN_ITEMSGIVEN_CHAPTER_2 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,60);
		CreateInvItems(slf,ItMi_RuneBlank,1);
		CreateInvItems(slf,itmi_emrlddust_01,1);
		CreateInvItems(slf,itmi_amethyst,1);
		CreateInvItems(slf,itmi_amber,1);
		CreateInvItems(slf,ItSc_Thunderstorm,1);
		SELIVAN_ITEMSGIVEN_CHAPTER_2 = TRUE;
	};
	if((Kapitel >= 3) && (SELIVAN_ITEMSGIVEN_CHAPTER_3 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,120);
		CreateInvItems(slf,ItSc_HarmUndead,1);
		CreateInvItems(slf,ItSc_Firerain,1);
		CreateInvItems(slf,ItSc_SumDemon,1);
		CreateInvItems(slf,itmi_spphrdust_01,1);
		CreateInvItems(slf,ItMi_Aquamarine,2);
		CreateInvItems(slf,ItMi_SilverNecklace,1);
		SELIVAN_ITEMSGIVEN_CHAPTER_3 = TRUE;
	};
	if((Kapitel >= 4) && (SELIVAN_ITEMSGIVEN_CHAPTER_4 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,220);
		CreateInvItems(slf,itmi_dmnddust_01,1);
		CreateInvItems(slf,ItSc_HarmUndead,1);
		CreateInvItems(slf,ItMi_SilverNecklace,1);
		SELIVAN_ITEMSGIVEN_CHAPTER_4 = TRUE;
	};
	if((Kapitel >= 5) && (SELIVAN_ITEMSGIVEN_CHAPTER_5 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,321);
		CreateInvItems(slf,ItMi_Aquamarine,3);
		CreateInvItems(slf,ItSc_HarmUndead,1);
		CreateInvItems(slf,ItSc_Firerain,1);
		CreateInvItems(slf,ItMi_RuneBlank,1);
		CreateInvItems(slf,ItMi_Flask,25);
		SELIVAN_ITEMSGIVEN_CHAPTER_5 = TRUE;
	};
};

