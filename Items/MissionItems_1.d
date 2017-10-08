
instance ItKe_Xardas(C_Item)
{
	name = NAME_Key;
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = Value_Key_01;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Chest key,";
	text[3] = "belonging to Xardas.";
};

instance ItWr_Canthars_KomproBrief_MIS(C_Item)
{
	name = "Letter";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItWr_Scroll_01_v3.3DS";
	material = MAT_LEATHER;
	on_state[0] = Use_Canthars_KomproBrief;
	scemeName = "MAP";
	description = "Canthar's letter to the merchant Sarah.";
};


func void Use_Canthars_KomproBrief()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,-1,FONT_Book);
	Doc_SetMargins(nDocID,-1,55,50,100,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"Last warning");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_SetMargins(nDocID,-1,65,50,100,50,1);
	Doc_PrintLine(nDocID,0,"I have already reminded you several");
	Doc_PrintLine(nDocID,0,"times in the friendliest");
	Doc_PrintLine(nDocID,0,"terms that I urgently require the");
	Doc_PrintLine(nDocID,0,"weapons I ordered from you a week");
	Doc_PrintLine(nDocID,0,"ago.");
	Doc_PrintLine(nDocID,0,"If I don't hear from you very soon,");
	Doc_PrintLine(nDocID,0,"Sarah, I will be forced to change my");
	Doc_PrintLine(nDocID,0,"attitude to you. I hope we understand");
	Doc_PrintLine(nDocID,0,"each other!!!!!!!!!!!!");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"            Onar");
	Doc_Show(nDocID);
};


instance ItMw_2h_Rod(C_Item)
{
	name = "Rod's two-hander";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_2HD_SWD;
	material = MAT_METAL;
	value = Value_Sld2hSchwert;
	damageTotal = Damage_Rod;
	damagetype = DAM_EDGE;
	range = Range_Sld2hSchwert;
	on_equip = mw2h_minus_equip_10;
	on_unequip = mw2h_minus_unequip_10;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = Condition_Rod;
	visual = "ItMw_035_2h_sld_sword_01.3DS";
	description = name;
	text[0] = NAME_TwoHanded;
	text[1] = NAME_Dam_Edge;
	count[1] = damageTotal;
	text[2] = NAME_RANGE;
	count[2] = range;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_ADDON_MALUS_2H;
	count[4] = Waffenbonus_10;
	text[5] = NAME_6KG;
	count[5] = value;
};

instance ItMi_CoragonsSilber(C_Item)
{
	name = "Coragon's silver";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_SilverCup;
	visual = "ItMi_SilverCup.3DS";
	material = MAT_METAL;
	description = name;
	text[5] = NAME_03KG;
	count[5] = value;
};

instance ItMi_TheklasPaket(C_Item)
{
	name = "Thekla's parcel";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION | ITEM_MULTI;
	value = 0;
	visual = "ItMi_Packet.3ds";
	scemeName = "MAPSEALED";
	material = MAT_LEATHER;
	on_state[0] = Use_TheklasPacket;
	description = name;
	text[5] = "Weight: 1 kg";
};


func void Use_TheklasPacket()
{
	CreateInvItems(hero,ItPl_Mana_Herb_01,3);
	CreateInvItems(hero,ItPl_Health_Herb_02,1);
	CreateInvItems(hero,ItPl_Speed_Herb_01,1);
	CreateInvItems(hero,ItPl_Blueplant,2);
	Print(PRINT_GotPlants);
};


instance ItMi_MariasGoldPlate(C_Item)
{
	name = "Heavy gold plate";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_GoldPlate;
	visual = "ItMi_GoldPlate.3DS";
	material = MAT_METAL;
	description = name;
	text[2] = "The plate is engraved with";
	text[3] = "the names Onar and Maria.";
	text[5] = NAME_03KG;
	count[5] = value;
};

instance ItRi_ValentinosRing(C_Item)
{
	name = NAME_Ring;
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_RING;
	value = Value_Ri_ProtEdge;
	visual = "ItRi_Prot_Edge_01.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = Equip_ValentinosRing;
	on_unequip = UnEquip_ValentinosRing;
	description = "Valentino's ring";
	text[2] = NAME_Prot_Edge;
	count[2] = Ri_ProtEdge;
	text[5] = NAME_03KG;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_RING_STANDARD;
	inv_rotz = INVCAM_Z_RING_STANDARD;
	inv_rotx = INVCAM_X_RING_STANDARD;
};


func void Equip_ValentinosRing()
{
	self.protection[PROT_EDGE] += Ri_ProtEdge;
	self.protection[PROT_BLUNT] += Ri_ProtEdge;
	STAT_SWORDDEF = STAT_SWORDDEF + (Ri_ProtEdge * 1);
	Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
};

func void UnEquip_ValentinosRing()
{
	self.protection[PROT_EDGE] -= Ri_ProtEdge;
	self.protection[PROT_BLUNT] -= Ri_ProtEdge;
	STAT_SWORDDEF = STAT_SWORDDEF - (Ri_ProtEdge * 1);
	Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,STAT_SWORDDEF);
};


instance ItKe_Dexter(C_Item)
{
	name = NAME_Key;
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = Value_Key_01;
	visual = "ItKe_Key_03.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Chest key,";
	text[3] = "belonging to Dexter.";
};

instance ItWr_Kraeuterliste(C_Item)
{
	name = "List";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = Use_Kraeuterliste;
	scemeName = "MAP";
	description = "Constantino's list of herbs";
};


func void Use_Kraeuterliste()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,-1,FONT_Book);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0," Alchemical herbs");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"    Healing plant");
	Doc_PrintLine(nDocID,0,"    Healing herb");
	Doc_PrintLine(nDocID,0,"    Healing root");
	Doc_PrintLine(nDocID,0,"    Fire nettle");
	Doc_PrintLine(nDocID,0,"    Fireweed");
	Doc_PrintLine(nDocID,0,"    Fire root");
	Doc_PrintLine(nDocID,0,"    Goblin berry");
	Doc_PrintLine(nDocID,0,"    Dragonroot");
	Doc_PrintLine(nDocID,0,"    Snapperweed");
	Doc_PrintLine(nDocID,0,"    Meadow knotweed");
	Doc_PrintLine(nDocID,0,"    King's sorrel");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Note: let a potential apprentice fetch the plants for you. That way you'll know if he's any good.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"            Regards, Zuris");
	Doc_Show(nDocID);
};


instance ItWr_ManaRezept(C_Item)
{
	name = "Recipe";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 20;
	visual = "ItWr_Scroll_01_v4.3DS";
	material = MAT_LEATHER;
	on_state[0] = Use_ManaRezept;
	scemeName = "MAP";
	description = "Recipe for magical essence";
};


func void Use_ManaRezept()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,-1,FONT_Book);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"Magic potions");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"To brew magic potions, a skilled alchemist needs:");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"Fire nettle");
	Doc_PrintLine(nDocID,0,"Fireweed");
	Doc_PrintLine(nDocID,0,"Fire root");
	Doc_PrintLine(nDocID,0,"King's sorrel");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"Master Neoras");
	Doc_Show(nDocID);
};


instance ItWr_Passierschein(C_Item)
{
	name = "Pass";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 50;
	visual = "ItWr_Scroll_02_V2.3DS";
	material = MAT_LEATHER;
	on_state[0] = UsePassierschein;
	scemeName = "MAP";
	description = name;
	text[3] = "This paper permits me";
	text[4] = "to pass the city guards.";
	inv_rotx = INVCAM_X_KEY_STANDARD;
};


func void UsePassierschein()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"Scroll_01.TGA",0);
	Doc_SetFont(nDocID,-1,FONT_BookHeadline);
	Doc_SetMargins(nDocID,-1,100,100,50,50,1);
	Doc_PrintLine(nDocID,0,"Pass");
	Doc_PrintLine(nDocID,0,"   for Khorinis");
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_SetMargins(nDocID,-1,100,100,100,100,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"This document entitles");
	Doc_PrintLine(nDocID,0," the bearer to move freely");
	Doc_PrintLine(nDocID,0,"  in the lower areas of Khorinis");
	Doc_PrintLine(nDocID,0,"   for an unlimited time period.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"        Larius,");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"            the King's governor");
	Doc_Show(nDocID);
};


instance ItMi_HerbPaket(C_Item)
{
	name = "Parcel of weed";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 200;
	visual = "ItMi_Packet.3ds";
	material = MAT_LEATHER;
	description = name;
	text[2] = "A heavy, sticky package,";
	text[3] = "that stinks of swampweed.";
	text[5] = NAME_1KG;
	count[5] = value;
};

instance ItKe_Storage(C_Item)
{
	name = "Storehouse key";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = Value_Key_01;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Key to the port";
	text[3] = "warehouse.";
};


const int HP_Hering = 20;

instance ItFo_SmellyFish(C_Item)
{
	name = "Herring";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 15;
	visual = "ItFo_Fish.3DS";
	material = MAT_LEATHER;
	scemeName = "FOOD";
	on_state[0] = Use_SmellyFish;
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Hering;
	text[2] = NAME_BONUS_HANGR_50;
	text[5] = NAME_03KG;
	count[5] = value;
};


func void Use_SmellyFish()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Hering);
	if(Npc_IsPlayer(self))
	{
		STAT_HANGR -= 50;
	};
};


instance ItFo_HalvorFish_MIS(C_Item)
{
	name = "Strange fish";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItFo_Fish.3DS";
	material = MAT_LEATHER;
	scemeName = "MAPSEALED";
	on_state[0] = Use_HalvorFish;
	description = "A weird-looking fish";
	text[2] = "There's something wrong with this fish";
	text[3] = "looks like it's been sewn up...";
	text[5] = "Weight: 0.5 kg";
};


func void Use_HalvorFish()
{
	CreateInvItems(hero,ItWr_HalvorMessage,1);
	Print(PRINT_FishLetter);
};


instance ItWr_HalvorMessage(C_Item)
{
	name = "Stinking note";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = UseHalvorMessage;
	scemeName = "MAP";
	description = name;
	text[2] = "This note was hidden inside a fish.";
};


func void UseHalvorMessage()
{
	var int nDocID;
	Knows_Halvor = TRUE;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,-1,FONT_Book);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"    Keep your heads low, guys! ");
	Doc_PrintLine(nDocID,0,"    The militia's getting suspicious.");
	Doc_PrintLines(nDocID,0,"    Don't do anything until you hear from me again!");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"    Halvor");
	Doc_Show(nDocID);
};


instance ItMw_AlriksSword_Mis(C_Item)
{
	name = "Alrik's sword";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_MISSION | ITEM_SWD;
	material = MAT_METAL;
	value = Value_Alrik;
	damageTotal = Damage_Alrik;
	damagetype = DAM_EDGE;
	range = Range_Alrik;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = Condition_Alrik;
	visual = "ItMw_025_1h_Sld_Sword_01.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[5] = NAME_1P4KG;
	count[5] = value;
};

instance ItWr_VatrasMessage(C_Item)
{
	name = "Sealed message";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItWr_Scroll_02.3DS";
	material = MAT_LEATHER;
	on_state[0] = UseVatrasMessage;
	scemeName = "MAPSEALED";
	description = name;
	text[2] = "A message from Vatras";
	text[3] = "for the Fire Mages.";
	inv_rotx = INVCAM_X_KEY_STANDARD;
};


func void UseVatrasMessage()
{
	var int nDocID;
	CreateInvItems(self,ItWr_VatrasMessage_Open,1);
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,-1,FONT_Book);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLine(nDocID,0,"Dear Isgaroth,");
	Doc_PrintLines(nDocID,0,"I sense the ever-growing presence of another force.");
	Doc_PrintLines(nDocID,0,"It's a force so far unknown to us. Can it be that there are vassals of Beliar near?");
	Doc_PrintLines(nDocID,0,"I could be mistaken, but I believe father Pyrokar would be wise to take the matter in hand.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"May our prayers be answered.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"Vatras");
	Doc_Show(nDocID);
};


instance ItWr_VatrasMessage_Open(C_Item)
{
	name = "Message";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItWr_Scroll_01_v2.3DS";
	material = MAT_LEATHER;
	on_state[0] = UseVatrasMessageOpen;
	scemeName = "MAP";
	description = name;
	text[2] = "A message from Vatras";
	text[3] = "for the Fire Mages.";
	text[4] = "The seal has been broken.";
};


func void UseVatrasMessageOpen()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,-1,FONT_Book);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLine(nDocID,0,"Dear Isgaroth,");
	Doc_PrintLines(nDocID,0,"I sense the ever-growing presence of another force.");
	Doc_PrintLines(nDocID,0,"It's a force so far unknown to us. Can it be that there are vassals of Beliar near?");
	Doc_PrintLines(nDocID,0,"I could be mistaken, but I believe father Pyrokar would be wise to take the matter in hand.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"May our prayers be answered.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"Vatras");
	Doc_Show(nDocID);
};


instance ItKe_Hotel(C_Item)
{
	name = "Room key";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItKe_Key_02.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Room key";
	text[3] = "of the hotel.";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ItKe_ThiefGuildKey_MIS(C_Item)
{
	name = "Rusty key";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "This key has been damaged by salty seawater.";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ItKe_ThiefGuildKey_Hotel_MIS(C_Item)
{
	name = "Rusty key";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "The key to the hotel cellar.";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ItKe_Innos_MIS(C_Item)
{
	name = NAME_Key;
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItKe_Key_02.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "The key to the entrance";
	text[3] = "of the monastery of Innos.";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ItKe_KlosterSchatz(C_Item)
{
	name = NAME_Key;
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = Value_Key_01;
	visual = "ItKe_Key_02.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "The key to the monastery's";
	text[3] = "treasury.";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ItKe_KlosterStore(C_Item)
{
	name = NAME_Key;
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = Value_Key_01;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "The key to the monastery's";
	text[3] = "larder.";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ItKe_KDFPlayer(C_Item)
{
	name = NAME_Key;
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = Value_Key_01;
	visual = "ItKe_Key_02.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "The key to the monastery's";
	text[3] = "cell.";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ItKe_KlosterBibliothek(C_Item)
{
	name = NAME_Key;
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = Value_Key_01;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "The key to the monastery's";
	text[3] = "library.";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ItFo_Schafswurst(C_Item)
{
	name = "Sheep sausage";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Sausage;
	visual = "ItFo_Sausage.3DS";
	material = MAT_LEATHER;
	scemeName = "FOOD";
	on_state[0] = Use_Schafswurst;
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Sausage;
	text[5] = NAME_05KG;
	count[5] = Value_Sausage;
};


func void Use_Schafswurst()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Sausage);
};


instance ItPo_Perm_LittleMana(C_Item)
{
	name = NAME_Trank;
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = 150;
	visual = "ItPo_Perm_Mana.3ds";
	material = MAT_GLAS;
	on_state[0] = UseItPo_LittleMana;
	scemeName = "POTIONFAST";
	description = "Essence of spirit";
	text[1] = NAME_Bonus_ManaMax;
	count[1] = 3;
	text[5] = NAME_065KG;
	count[5] = value;
};


func void UseItPo_LittleMana()
{
	B_RaiseAttribute(self,ATR_MANA_MAX,3);
	Npc_ChangeAttribute(self,ATR_MANA,3);
};


instance Holy_Hammer_MIS(C_Item)
{
	name = "Sacred hammer";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_MISSION | ITEM_2HD_AXE;
	material = MAT_METAL;
	value = Value_HolyHammer;
	owner = Nov_608_Garwig;
	damageTotal = Damage_HolyHammer;
	damagetype = DAM_BLUNT;
	range = Range_HolyHammer;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = Condition_HolyHammer;
	visual = "ItMw_030_2h_kdf_hammer_01.3DS";
	description = name;
	text[2] = "Damage:                    ??";
	text[3] = "Strength required:          ??";
	text[4] = "Two-handed weapon";
	text[5] = "Weight: 6 kg                      Value: cannot be determined";
};

instance ItKe_MagicChest(C_Item)
{
	name = "Old key";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION | ITEM_MULTI;
	value = 0;
	visual = "ItKe_Key_02.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Old iron key.";
	text[3] = "Perhaps, this is the key";
	text[4] = "which belong to a padlock.";
};

instance ItWr_Passage_MIS(C_Item)
{
	name = "Peace offer for the paladins";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItWr_Scroll_01_v3.3DS";
	material = MAT_LEATHER;
	on_state[0] = UsePassage;
	scemeName = "MAP";
	description = name;
	text[3] = "This note should help me";
	text[4] = "to meet lord Hagen.";
};


func void UsePassage()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,-1,FONT_Book);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"Honored Lord Hagen,");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"we are both aware of your situation. I therefore propose the following arrangement: grant my men and myself total absolution before Innos and before the King.");
	Doc_PrintLines(nDocID,0,"In return, we offer to assist you in the defense of the town and the surrounding lands.");
	Doc_PrintLines(nDocID,0,"Moreover, I personally shall see to it that my men steer clear of the surrounding farms, except, of course, that of Onar, where we will continue to be stationed.");
	Doc_PrintLines(nDocID,0,"I am aware that there is enough room for myself and some of my men on the ship aboard which you will depart to the mainland. When you set sail, I want to be on board.");
	Doc_PrintLines(nDocID,0,"I beseech you: make your decision with all the wisdom given to you.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"Signed General Lee");
	Doc_Show(nDocID);
};


instance ItWr_BanditLetter_MIS(C_Item)
{
	name = "Message";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItWr_Scroll_01_v3.3DS";
	material = MAT_LEATHER;
	on_state[0] = UseBanditLetter;
	scemeName = "MAP";
	description = name;
};


func void UseBanditLetter()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_SetMargins(nDocID,-1,50,50,75,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"Stop all men who come");
	Doc_PrintLine(nDocID,0," from the mountains.");
	Doc_PrintLine(nDocID,0,"If someone comes along the pass,");
	Doc_PrintLine(nDocID,0," it will probably be an old man.");
	Doc_PrintLine(nDocID,0,"Don't let him fool you -");
	Doc_PrintLine(nDocID,0,"    he is a dangerous sorcerer.");
	Doc_PrintLine(nDocID,0,"Keep an eye on him.");
	Doc_PrintLine(nDocID,0,"     ");
	Doc_PrintLine(nDocID,0,"It's possible the guy we're looking for");
	Doc_PrintLine(nDocID,0,"    will contact him.");
	Doc_PrintLine(nDocID,0,"With this letter I'm sending you");
	Doc_PrintLine(nDocID,0,"    thirty pieces of gold.");
	Doc_PrintLine(nDocID,0,"I will give another thirty to anyone");
	Doc_PrintLine(nDocID,0,"    who kills the man.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"Bring his head to the");
	Doc_PrintLine(nDocID,0,"    old mine near the landowner.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"D.");
	Doc_Show(nDocID);
};


instance ItWr_Poster_MIS(C_Item)
{
	name = "Wanted note";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MULTI | ITEM_MISSION;
	value = 0;
	visual = "ItWr_Gesucht_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = UsePoster;
	scemeName = "MAP";
	description = name;
	text[3] = "A picture of me!";
};


func void UsePoster()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"Gesucht.TGA",0);
	Doc_Show(nDocID);
};


instance ItKe_Bandit(C_Item)
{
	name = "Chest key";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = Value_Key_01;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "This key belonged to";
	text[3] = "a bandit.";
};

instance ItRw_Bow_L_03_MIS(C_Item)
{
	name = "Hunting bow";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW | ITEM_MISSION;
	material = MAT_WOOD;
	value = Value_Jagdbogen;
	damageTotal = Damage_Jagdbogen;
	damagetype = DAM_POINT;
	munition = ItRw_Arrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = Condition_Jagdbogen;
	visual = "ItRw_Bow_L_03.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Dex_needed;
	count[3] = cond_value[2];
	text[4] = "Bosper's hunting bow.";
	text[5] = NAME_1KG;
	count[5] = value;
};

instance ItRi_Prot_Point_01_MIS(C_Item)
{
	name = "Constantino's ring";
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_RING | ITEM_MISSION;
	value = Value_Ri_ProtPoint;
	visual = "ItRi_Prot_Point_01.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = Equip_ItRi_Prot_Point_01_MIS;
	on_unequip = UnEquip_ItRi_Prot_Point_01_MIS;
	description = "Ring of wooden skin";
	text[2] = NAME_Prot_Point;
	count[2] = Ri_ProtPoint;
	text[5] = NAME_003KG;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_RING_STANDARD;
	inv_rotz = INVCAM_Z_RING_STANDARD;
	inv_rotx = INVCAM_X_RING_STANDARD;
};


func void Equip_ItRi_Prot_Point_01_MIS()
{
	self.protection[PROT_POINT] += Ri_ProtPoint;
};

func void UnEquip_ItRi_Prot_Point_01_MIS()
{
	self.protection[PROT_POINT] -= Ri_ProtPoint;
};


instance ItMi_EddasStatue(C_Item)
{
	name = "Statue of Innos";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI | ITEM_MISSION;
	value = 50;
	visual = "ItMi_InnosStatue.3DS";
	material = MAT_METAL;
	description = name;
	text[2] = "Innos, Lord of Justice,";
	text[3] = "bless and guard me,";
	text[4] = "and spare me from harm.";
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItKe_EVT_CRYPT_01(C_Item)
{
	name = "Old brass key";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = Value_Key_01;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "The key from the skeleton in room 1.";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ItKe_EVT_CRYPT_02(C_Item)
{
	name = "Old brass key";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = Value_Key_01;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "The key from the skeleton in room 2.";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ItKe_EVT_CRYPT_03(C_Item)
{
	name = "Old brass key";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = Value_Key_01;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "The key from the skeleton in room 3.";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};


const int VALUE_ITAR_PAL_SKEL = 500;

instance ITAR_PAL_SKEL(C_Item)
{
	name = "Old knight's armor";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 100;
	protection[PROT_BLUNT] = 100;
	protection[PROT_POINT] = 100;
	protection[PROT_FIRE] = 50;
	protection[PROT_MAGIC] = 50;
	value = value_itar_pal_skel;
	wear = WEAR_TORSO;
	visual = "ItAr_Pal_H.3ds";
	visual_change = "Armor_Pal_Skeleton.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITAR_KDF_SKEL(C_Item)
{
	name = "Old fire mage's robe";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 50;
	protection[PROT_BLUNT] = 50;
	protection[PROT_POINT] = 50;
	protection[PROT_FIRE] = 50;
	protection[PROT_MAGIC] = 50;
	value = VALUE_ITAR_PAL_SKEL;
	wear = WEAR_TORSO;
	visual = "ItAr_KdF_L.3ds";
	visual_change = "Armor_KDF_L_SKE.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITAR_BM_SKEL(C_Item)
{
	name = "Old battle-mage armor";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 60;
	protection[PROT_BLUNT] = 60;
	protection[PROT_POINT] = 30;
	protection[PROT_FIRE] = 20;
	protection[PROT_MAGIC] = 70;
	value = VALUE_ITAR_PAL_SKEL;
	wear = WEAR_TORSO;
	visual = "ItAr_BM_L.3ds";
	visual_change = "Armor_BM_SKE.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItKe_Valentino(C_Item)
{
	name = "Chest key";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = Value_Key_01;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Belonging to Valentino.";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ItKe_Buerger(C_Item)
{
	name = "Chest key";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = Value_Key_01;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "It was lying around on a windowsill.";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ItKe_Richter(C_Item)
{
	name = "Chest key";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = Value_Key_01;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Belonging to the Judge.";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ItKe_Salandril(C_Item)
{
	name = "Chest key";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = Value_Key_01;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "belonging to the Alchemist Salandril.";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ItKe_PaladinTruhe(C_Item)
{
	name = "Chest key";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = Value_Key_01;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "A small brass key from";
	text[3] = "the house of the paladins.";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ItKe_ThiefTreasure(C_Item)
{
	name = NAME_Key;
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION | ITEM_MULTI;
	value = Value_Key_01;
	visual = "ItKe_Key_03.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "A small key.";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ItKe_Fingers(C_Item)
{
	name = NAME_Key;
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = Value_Key_01;
	visual = "ItKe_Key_03.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Rusty door key";
	text[3] = "for the sewers.";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ItWr_Schuldenbuch(C_Item)
{
	name = "Book of debts";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_05.3ds";
	material = MAT_LEATHER;
	scemeName = "MAP";
	description = "Lehmar's book of debts";
	text[5] = NAME_1KG;
	count[5] = value;
	on_state[0] = UseSchuldBuch;
};


func void UseSchuldBuch()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,2);
	Doc_SetPage(nDocID,0,"Book_Brown_L.tga",0);
	Doc_SetPage(nDocID,1,"Book_Brown_R.tga",0);
	Doc_SetMargins(nDocID,0,275,20,30,20,1);
	Doc_SetFont(nDocID,0,FONT_BookHeadline);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Deals and debts");
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"I, Master Thorben, carpenter of Khorinis, owe to the honorable Lehmar a debt of 200 gold coins.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"             Thorben");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"I, Coragon, innkeeper of Khorinis, owe the honorable Lehmar a debt of 150 in gold.");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"             Coragon");
	Doc_PrintLine(nDocID,0,"");
	Doc_SetMargins(nDocID,-1,30,20,275,20,1);
	Doc_SetFont(nDocID,1,FONT_Book);
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLines(nDocID,1,"I, Hanna, hotelier of Khorinis, owe the honorable Lehmar a debt of 250 gold coins.");
	Doc_PrintLine(nDocID,1,"");
	Doc_PrintLine(nDocID,1,"               Hanna");
	Doc_PrintLines(nDocID,1,"");
	Doc_Show(nDocID);
};


instance ItPl_Sagitta_Herb_MIS(C_Item)
{
	name = "Sun aloe";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Strength_Herb_01;
	visual = "ItPl_Strength_Herb_01.3DS";
	material = MAT_WOOD;
	scemeName = "FOOD";
	description = name;
	text[1] = "It only grows on the excrements of a black troll";
	text[5] = NAME_01KG;
	count[5] = Value_Strength_Herb_01;
};

instance ITKE_ORLAN_HOTELZIMMER(C_Item)
{
	name = "Room key";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = Value_Key_01;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "From the tavern 'The Dead Harpy'.";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ItRw_DragomirsArmbrust_MIS(C_Item)
{
	name = "Dragomir's crossbow";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_CROSSBOW;
	material = MAT_WOOD;
	value = Value_LeichteArmbrust;
	damageTotal = Damage_LeichteArmbrust;
	damagetype = DAM_POINT;
	munition = ItRw_Bolt;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = Condition_LeichteArmbrust;
	visual = "ItRw_Crossbow_L_02.mms";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[5] = NAME_1P5KG;
	count[5] = value;
};

