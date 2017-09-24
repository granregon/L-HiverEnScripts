
instance ITKE_PORTALTEMPELWALKTHROUGH_ADDON(C_Item)
{
	name = "Rusty key";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = Value_Key_01;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Fits the door of the";
	text[3] = "teleporter stone in the portal temple";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ITKE_Greg_ADDON_MIS(C_Item)
{
	name = "Greg's Key";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = Value_Key_01;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "The key to captain Greg's hut";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ITKE_Addon_Tavern_01(C_Item)
{
	name = "Lou's key";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = Value_Key_01;
	visual = "ItKe_Key_02.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Opens the door ";
	text[3] = "in the bandit camp tavern.";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ITKE_ADDON_ESTEBAN(C_Item)
{
	name = "Esteban's key";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = Value_Key_01;
	visual = "ItKe_Key_02.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Fits the chest";
	text[3] = "in his hideout.";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ITKE_ORLAN_TELEPORTSTATION(C_Item)
{
	name = "Orlan's key";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = Value_Key_01;
	visual = "ItKe_Key_02.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Fits the door of the cave";
	text[3] = "south of his tavern.";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ITKE_CANYONLIBRARY_HIERARCHY_BOOKS_ADDON(C_Item)
{
	name = NAME_Key;
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = Value_Key_01;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "It belonged to the orc shaman in the camp";
	text[3] = "in front of the Library of the Scholars";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ITKE_ADDON_BUDDLER_01(C_Item)
{
	name = NAME_Key;
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 0;
	owner = BDT_1084_Addon_Senyan;
	visual = "ItKe_Key_02.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "From the bandit camp";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ITKE_ADDON_SKINNER(C_Item)
{
	name = "Skinner's key";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItKe_Key_02.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Fits Skinner's chest.";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ITKE_Addon_Thorus(C_Item)
{
	name = "Thorus' key";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItKe_Key_02.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Fits his chest.";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ITKE_OLDXRDS_ADDON(C_Item)
{
	name = "Old key";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = Value_Key_01;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Old chest key";
	text[3] = "from Sekob's farm.";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ITKE_XPASS_ORK(C_Item)
{
	name = "Key from the pass";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = "Rusty key";
	text[1] = "Opens the door of an abandoned pass.";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ITKE_EBRSJ_ADDON(C_Item)
{
	name = "Old key";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = Value_Key_01;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Similar to those that were";
	text[2] = "used in the Old Camp";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ITKE_LHSKE01_ADDON(C_Item)
{
	name = "Rusty key";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = Value_Key_01;
	visual = "ItKe_Key_02.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Gained in battle with";
	text[3] = "the Lord of Shadows";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ITKE_SEAPORT01_ADDON(C_Item)
{
	name = "Door key";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = Value_Key_01;
	visual = "ItKe_Key_02.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Found in a room";
	text[3] = "under Khorinis' castle";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ITKE_TCHR1_ADDON(C_Item)
{
	name = "Key";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = Value_Key_01;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Constantino's key.";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ITKE_TCHR2_ADDON(C_Item)
{
	name = "Key";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = Value_Key_01;
	visual = "ItKe_Key_02.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Harad's key.";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ITKE_TCHR3_ADDON(C_Item)
{
	name = "Key";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = Value_Key_01;
	visual = "ItKe_Key_03.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Bosper's key.";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ITKE_VTRSSECRET_ADDON(C_Item)
{
	name = "Chest key";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = Value_Key_01;
	visual = "ItKe_Key_02.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Found around";
	text[3] = "the temple square in Khorinis";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ITKE_OCMAGEADDDOOR_ADDON(C_Item)
{
	name = "Door Key";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = Value_Key_01;
	visual = "ItKe_Key_03.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Found on the table in the old mages' building";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ITKE_CITY_CORAGON_01(C_Item)
{
	name = "Coragon's key.";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 0;
	owner = VLK_420_Coragon;
	visual = "ItKe_Key_02.3ds";
	material = MAT_METAL;
	description = name;
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

