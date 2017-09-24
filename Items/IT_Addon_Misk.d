
const int Value_Goldnugget = 18;
const int VALUE_IRONNUGGET = 2;
const int Value_WhitePearl = 120;
const int Value_Addon_Joint_01 = 60;

instance ItMi_GoldNugget_Addon(C_Item)
{
	name = "Gold nugget";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Goldnugget;
	visual = "ItMi_GoldNugget_01.3ds";
	material = MAT_STONE;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_MISC2_STANDARD;
};

instance ITMI_IRONNUGGET_ADDON(C_Item)
{
	name = "Iron ore";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 10;
	visual = "ItMi_IronNugget_01.3ds";
	material = MAT_STONE;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_MISC_STANDARD;
};

instance ITMI_STEELBAR(C_Item)
{
	name = "Steel bar";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 75;
	visual = "ItMi_SteelBar_01.3ds";
	material = MAT_STONE;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_MISC2_STANDARD;
};

instance ITMI_MAGICBAR(C_Item)
{
	name = "Ore bar";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 400;
	visual = "ItMi_MagicBar_01.3ds";
	material = MAT_STONE;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_MISC2_STANDARD;
};

instance ITMI_FIRSTBLADE_BLADE(C_Item)
{
	name = "Unfinished blade (incandescent)";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_firstblade_Blade.3ds";
	material = MAT_STONE;
	description = name;
	text[2] = "Used to forge <<Sword>>";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_BLADE_STANDARD;
	inv_rotz = INVCAM_Z_BLADE_STANDARD;
	inv_rotx = INVCAM_X_BLADE_STANDARD;
};

instance ITMI_FIRSTBLADE_BLADE_NH(C_Item)
{
	name = "Unfinished blade";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_firstblade_Blade.3ds";
	material = MAT_STONE;
	description = name;
	text[2] = "Used to forge <<Sword>>";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_BLADE_STANDARD;
	inv_rotz = INVCAM_Z_BLADE_STANDARD;
	inv_rotx = INVCAM_X_BLADE_STANDARD;
};

instance ITMI_1HFINESWORD_BLADE(C_Item)
{
	name = "Unfinished blade (incandescent)";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_1hfinesword_Blade.3ds";
	material = MAT_STONE;
	description = name;
	text[2] = "Used to forge <<Steel Longsword>>";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_BLADE_STANDARD;
	inv_rotz = INVCAM_Z_BLADE_STANDARD;
	inv_rotx = INVCAM_X_BLADE_STANDARD;
};

instance ITMI_1HFINESWORD_BLADE_NH(C_Item)
{
	name = "Unfinished blade";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_1hfinesword_Blade.3ds";
	material = MAT_STONE;
	description = name;
	text[2] = "Used to forge <<Steel Longsword>>";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_BLADE_STANDARD;
	inv_rotz = INVCAM_Z_BLADE_STANDARD;
	inv_rotx = INVCAM_X_BLADE_STANDARD;
};

instance ITMI_SOT_BLADE(C_Item)
{
	name = "Unfinished blade (incandescent)";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_SoT_Blade.3ds";
	material = MAT_STONE;
	description = name;
	text[2] = "Used to forge <<Sword Of Truth>>";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_BLADE_STANDARD;
	inv_rotz = INVCAM_Z_BLADE_STANDARD;
	inv_rotx = INVCAM_X_BLADE_STANDARD;
};

instance ITMI_SOT_BLADE_NH(C_Item)
{
	name = "Unfinished blade";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_SoT_Blade.3ds";
	material = MAT_STONE;
	description = name;
	text[2] = "Used to forge <<Sword Of Truth>>";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_BLADE_STANDARD;
	inv_rotz = INVCAM_Z_BLADE_STANDARD;
	inv_rotx = INVCAM_X_BLADE_STANDARD;
};

instance ITMI_FINEBASTARD_BLADE(C_Item)
{
	name = "Unfinished blade (incandescent)";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_FineBastard_Blade.3ds";
	material = MAT_STONE;
	description = name;
	text[2] = "Used to forge <<Fine Bastard Sword>>";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_BLADE_STANDARD;
	inv_rotz = INVCAM_Z_BLADE_STANDARD;
	inv_rotx = INVCAM_X_BLADE_STANDARD;
};

instance ITMI_FINEBASTARD_BLADE_NH(C_Item)
{
	name = "Unfinished blade";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_FineBastard_Blade.3ds";
	material = MAT_STONE;
	description = name;
	text[2] = "Used to forge <<Fine Bastard Sword>>";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_BLADE_STANDARD;
	inv_rotz = INVCAM_Z_BLADE_STANDARD;
	inv_rotx = INVCAM_X_BLADE_STANDARD;
};

instance ITMI_ANDURIL_BLADE(C_Item)
{
	name = "Unfinished blade (incandescent)";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_Anduril_Blade.3ds";
	material = MAT_STONE;
	description = name;
	text[2] = "Used to forge <<Elegant Bastard Sword>>";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_BLADE_STANDARD;
	inv_rotz = INVCAM_Z_BLADE_STANDARD;
	inv_rotx = INVCAM_X_BLADE_STANDARD;
};

instance ITMI_ANDURIL_BLADE_NH(C_Item)
{
	name = "Unfinished blade";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_Anduril_Blade.3ds";
	material = MAT_STONE;
	description = name;
	text[2] = "Used to forge <<Elegant Bastard Sword>>";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_BLADE_STANDARD;
	inv_rotz = INVCAM_Z_BLADE_STANDARD;
	inv_rotx = INVCAM_X_BLADE_STANDARD;
};

instance ITMI_FIRSTBLADE2H_BLADE(C_Item)
{
	name = "Unfinished blade (incandescent)";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_firstblade2h_Blade.3ds";
	material = MAT_STONE;
	description = name;
	text[2] = "Used to forge <<Two-Handed Blade>>";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_BLADE_STANDARD;
	inv_rotz = INVCAM_Z_BLADE_STANDARD;
	inv_rotx = INVCAM_X_BLADE_STANDARD;
};

instance ITMI_FIRSTBLADE2H_BLADE_NH(C_Item)
{
	name = "Unfinished blade";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_firstblade2h_Blade.3ds";
	material = MAT_STONE;
	description = name;
	text[2] = "Used to forge <<Two-Handed Blade>>";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_BLADE_STANDARD;
	inv_rotz = INVCAM_Z_BLADE_STANDARD;
	inv_rotx = INVCAM_X_BLADE_STANDARD;
};

instance ITMI_2HFINESWORD_BLADE(C_Item)
{
	name = "Unfinished blade (incandescent)";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_2hfinesword_Blade.3ds";
	material = MAT_STONE;
	description = name;
	text[2] = "Used to forge <<Steel Two-Hander>>";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_BLADE_STANDARD;
	inv_rotz = INVCAM_Z_BLADE_STANDARD;
	inv_rotx = INVCAM_X_BLADE_STANDARD;
};

instance ITMI_2HFINESWORD_BLADE_NH(C_Item)
{
	name = "Unfinished blade";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_2hfinesword_Blade.3ds";
	material = MAT_STONE;
	description = name;
	text[2] = "Used to forge <<Steel Two-Hander>>";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_BLADE_STANDARD;
	inv_rotz = INVCAM_Z_BLADE_STANDARD;
	inv_rotx = INVCAM_X_BLADE_STANDARD;
};

instance ITMI_CLAYMORE_BLADE(C_Item)
{
	name = "Unfinished blade (incandescent)";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_Claymore_Blade.3ds";
	material = MAT_STONE;
	description = name;
	text[2] = "Used to forge <<Claymore>>";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_BLADE_STANDARD;
	inv_rotz = INVCAM_Z_BLADE_STANDARD;
	inv_rotx = INVCAM_X_BLADE_STANDARD;
};

instance ITMI_CLAYMORE_BLADE_NH(C_Item)
{
	name = "Unfinished blade";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_Claymore_Blade.3ds";
	material = MAT_STONE;
	description = name;
	text[2] = "Used to forge <<Claymore>>";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_BLADE_STANDARD;
	inv_rotz = INVCAM_Z_BLADE_STANDARD;
	inv_rotx = INVCAM_X_BLADE_STANDARD;
};

instance ITMI_DEMONSLAYER_BLADE(C_Item)
{
	name = "Unfinished blade (incandescent)";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_DemonSlayer_Blade.3ds";
	material = MAT_STONE;
	description = name;
	text[2] = "Used to forge <<Demonslayer>>";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_BLADE_STANDARD;
	inv_rotz = INVCAM_Z_BLADE_STANDARD;
	inv_rotx = INVCAM_X_BLADE_STANDARD;
};

instance ITMI_DEMONSLAYER_BLADE_NH(C_Item)
{
	name = "Unfinished blade";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_DemonSlayer_Blade.3ds";
	material = MAT_STONE;
	description = name;
	text[2] = "Used to forge <<Demonslayer>>";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_BLADE_STANDARD;
	inv_rotz = INVCAM_Z_BLADE_STANDARD;
	inv_rotx = INVCAM_X_BLADE_STANDARD;
};

instance ITMI_FLAMEBERGE_BLADE(C_Item)
{
	name = "Unfinished blade (incandescent)";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_FlameBerge_Blade.3ds";
	material = MAT_STONE;
	description = name;
	text[2] = "Used to forge <<Flamberge>>";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_BLADE_STANDARD;
	inv_rotz = INVCAM_Z_BLADE_STANDARD;
	inv_rotx = INVCAM_X_BLADE_STANDARD;
};

instance ITMI_FLAMEBERGE_BLADE_NH(C_Item)
{
	name = "Unfinished blade";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_FlameBerge_Blade.3ds";
	material = MAT_STONE;
	description = name;
	text[2] = "Used to forge <<Flamberge>>";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_BLADE_STANDARD;
	inv_rotz = INVCAM_Z_BLADE_STANDARD;
	inv_rotx = INVCAM_X_BLADE_STANDARD;
};

instance ItMi_Addon_WhitePearl(C_Item)
{
	name = "Pearl";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_WhitePearl;
	visual = "ItMi_WhitePearl_01.3ds";
	material = MAT_STONE;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_MISC_STANDARD;
};

instance ItMi_Addon_Joint_01(C_Item)
{
	name = "Green novice";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Addon_Joint_01;
	visual = "ItMi_Joint_US.3ds";
	material = MAT_LEATHER;
	scemeName = "JOINT";
	on_state[0] = Use_Addon_Joint_01;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_RING_STANDARD;
};


var int FirstJoint;

func void Use_Addon_Joint_01()
{
	if(Npc_IsPlayer(self))
	{
		if(FirstJoint == FALSE)
		{
			FirstJoint = TRUE;
			B_GivePlayerXP(5);
		};
		Wld_PlayEffect("SLOW_TIME",self,self,0,0,0,FALSE);
	};
};


instance ItMi_BaltramPaket(C_Item)
{
	name = "Baltram's shipment";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 200;
	visual = "ItMi_Packet.3ds";
	material = MAT_LEATHER;
	description = name;
	text[2] = "A heavy package of goods";
	text[3] = "from Akil the farmer";
};

instance ItMi_Packet_Baltram4Skip_Addon(C_Item)
{
	name = "Package for Skip";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 200;
	visual = "ItMi_Packet.3ds";
	material = MAT_LEATHER;
	description = name;
	text[2] = "This heavy package of goods";
	text[3] = "is meant for the pirate Skip";
};

instance ItMi_BromorsGeld_Addon(C_Item)
{
	name = "Bromor's golden dish";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI | ITEM_MISSION;
	value = Value_Nugget;
	visual = "ItMi_GoldChalice.3DS";
	material = MAT_METAL;
	description = name;
	text[2] = "The name 'Bromor' ";
	text[3] = "is scratched into the bottom";
	text[4] = "of the dish with a sharp object.";
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItSe_ADDON_CavalornsBeutel(C_Item)
{
	name = "Cavalorn's leather bag";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI | ITEM_MISSION;
	value = Value_Nugget;
	visual = "ItMi_Pocket.3ds";
	scemeName = "MAPSEALED";
	material = MAT_LEATHER;
	on_state[0] = Use_CavalornsBeutel;
	description = name;
	text[1] = "It bears a tag with the name 'Cavalorn'.";
	text[2] = "There is a lump of ore inside.";
	text[5] = NAME_Value;
	count[5] = value;
};


func void Use_CavalornsBeutel()
{
	CreateInvItems(hero,ItMi_Nugget,1);
	Print(PRINT_FoundOreNugget);
	SC_OpenedCavalornsBeutel = TRUE;
	Log_CreateTopic(TOPIC_Addon_CavalornTheHut,LOG_MISSION);
	Log_SetTopicStatus(TOPIC_Addon_CavalornTheHut,LOG_Running);
	B_LogEntry(TOPIC_Addon_CavalornTheHut,"I found a bag with one lump of ore near Cavalorn's hut in the Valley of mines. That old rogue Cavalorn must have forgotten it here.");
};


instance ItMi_Skull(C_Item)
{
	name = "Skull";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 10;
	visual = "DT_SKELETON_V01_HEAD.3ds";
	material = MAT_LEATHER;
	description = name;
};

instance ItMi_IECello(C_Item)
{
	name = "Cello";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 1;
	visual = "Itmi_IE_Cello.3ds";
	material = MAT_WOOD;
	scemeName = "CELLO";
	on_state[0] = Use_Cello;
	description = name;
};


func void Use_Cello()
{
};


instance ItMi_IECelloBow(C_Item)
{
	name = "Cello bow";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 1;
	visual = "Itmi_IE_CelloBow.3ds";
	material = MAT_WOOD;
	description = name;
};

instance ItMi_IEDrum(C_Item)
{
	name = "Drum";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 1;
	visual = "Itmi_IE_Drum.3ds";
	material = MAT_WOOD;
	scemeName = "PAUKE";
	on_state[0] = Use_Drum;
	description = name;
};


func void Use_Drum()
{
};


instance ItMi_IEDrumScheit(C_Item)
{
	name = "Trumpet";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 1;
	visual = "Itmi_IE_Drumscheit.3ds";
	material = MAT_WOOD;
	scemeName = "DRUMSCHEIT";
	on_state[0] = Use_Drumscheit;
	description = name;
};


func void Use_Drumscheit()
{
};


instance ItMi_IEDrumStick(C_Item)
{
	name = "Drumstick";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 1;
	visual = "Itmi_IE_DrumStick.3ds";
	material = MAT_WOOD;
	description = name;
};

instance ItMi_IEDudelBlau(C_Item)
{
	name = "Blue bagpipes";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 1;
	visual = "Itmi_IE_DudelBlau.3ds";
	material = MAT_WOOD;
	scemeName = "DUDEL";
	on_state[0] = Use_Dudel;
	description = name;
};


func void Use_Dudel()
{
};


instance ItMi_IEDudelGelb(C_Item)
{
	name = "Yellow bagpipes";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 1;
	visual = "Itmi_IE_DudelGelb.3ds";
	material = MAT_WOOD;
	scemeName = "DUDEL";
	on_state[0] = Use_Dudel;
	description = name;
};

instance ItMi_IEHarfe(C_Item)
{
	name = "Harp";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 1;
	visual = "Itmi_IE_Harfe.3ds";
	material = MAT_WOOD;
	scemeName = "HARFE";
	on_state[0] = Use_Harfe;
	description = name;
};


func void Use_Harfe()
{
};


instance ItMi_IELaute(C_Item)
{
	name = "Lute";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 1;
	visual = "Itmi_IE_Laute.3ds";
	material = MAT_WOOD;
	scemeName = "IELAUTE";
	on_state[0] = Use_Laute;
	description = name;
};


func void Use_Laute()
{
};


instance ItMi_Addon_Lennar_Paket(C_Item)
{
	name = "Jingling package";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 300;
	visual = "ItMi_Packet.3ds";
	scemeName = "MAPSEALED";
	on_state[0] = Use_LennarPaket;
	material = MAT_LEATHER;
	description = name;
	text[2] = "There are many lock picks inside";
	text[5] = NAME_Value;
	count[5] = value;
};


func void Use_LennarPaket()
{
	B_PlayerFindItem(ItKE_lockpick,Lennar_picklock_amount);
	Snd_Play("Geldbeutel");
	LennarPaket_Open = TRUE;
};


instance ItMi_Zeitspalt_Addon(C_Item)
{
	name = "Black ore";
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = 0;
	visual = "ItMi_Zeitspalt_Addon.3DS";
	scemeName = "MAPSEALED";
	on_state[0] = Use_Zeitspalt_Addon;
	material = MAT_STONE;
	description = name;
	text[3] = "Effects unknown.";
	inv_zbias = INVCAM_ENTF_MISC_STANDARD;
};


func void Use_Zeitspalt_Addon()
{
	if(Npc_IsPlayer(self))
	{
		Wld_PlayEffect("spellFX_BELIARSRAGE",self,self,0,0,0,FALSE);
		Wld_StopEffect("SLOW_MOTION");
		Wld_PlayEffect("SLOW_MOTION",self,self,0,0,0,FALSE);
	};
};

