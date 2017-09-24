
instance ItSe_ErzFisch(C_Item)
{
	name = "Ball-shaped fish";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItFo_Fish.3DS";
	material = MAT_LEATHER;
	scemeName = "MAPSEALED";
	on_state[0] = Use_ErzFisch;
	description = name;
	text[2] = "Something is hidden inside this fish.";
};


func void Use_ErzFisch()
{
	B_PlayerFindItem(ItMi_Nugget,1);
};


instance ItSe_GoldFisch(C_Item)
{
	name = "Heavy fish";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItFo_Fish.3DS";
	material = MAT_LEATHER;
	scemeName = "MAPSEALED";
	on_state[0] = Use_GoldFisch;
	description = name;
	text[2] = "Something is hidden inside this fish.";
};


func void Use_GoldFisch()
{
	B_PlayerFindItem(ItMi_Gold,50);
};


instance ItSe_Ringfisch(C_Item)
{
	name = "Small fish";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItFo_Fish.3DS";
	material = MAT_LEATHER;
	scemeName = "MAPSEALED";
	on_state[0] = Use_Ringfisch;
	description = name;
	text[2] = "Something is hidden inside this fish.";
};


func void Use_Ringfisch()
{
	B_PlayerFindItem(ItRi_Prot_Fire_01,1);
};


instance ItSe_LockpickFisch(C_Item)
{
	name = "Light fish";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItFo_Fish.3DS";
	material = MAT_LEATHER;
	scemeName = "MAPSEALED";
	on_state[0] = Use_LockpickFisch;
	description = name;
	text[2] = "Something is hidden inside this fish.";
};


func void Use_LockpickFisch()
{
	B_PlayerFindItem(ItKE_lockpick,3);
};


instance ItSe_GoldPocket25(C_Item)
{
	name = "Leather satchel";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 25;
	visual = "ItMi_Pocket.3ds";
	scemeName = "MAPSEALED";
	material = MAT_LEATHER;
	on_state[0] = GoldPocket25;
	description = name;
	text[0] = "";
	text[1] = "";
	text[2] = "There are a few coins jingling inside.";
	text[3] = "";
	text[4] = "";
	text[5] = NAME_Value;
	count[5] = value;
};


func void GoldPocket25()
{
	B_PlayerFindItem(ItMi_Gold,25);
};


instance ItSe_GoldPocket50(C_Item)
{
	name = "Leather satchel";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_Pocket.3ds";
	scemeName = "MAPSEALED";
	material = MAT_LEATHER;
	on_state[0] = GoldPocket50;
	description = name;
	text[0] = "";
	text[1] = "";
	text[2] = "The bag is full of coins.";
	text[3] = "";
	text[4] = "";
	count[5] = value;
};


func void GoldPocket50()
{
	B_PlayerFindItem(ItMi_Gold,50);
};


instance ItSe_GoldPocket100(C_Item)
{
	name = "Leather satchel";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 100;
	visual = "ItMi_Pocket.3ds";
	scemeName = "MAPSEALED";
	material = MAT_LEATHER;
	on_state[0] = GoldPocket100;
	description = name;
	text[0] = "";
	text[1] = "";
	text[2] = "A heavy bag,";
	text[3] = "full of gold coins.";
	text[4] = "";
	text[5] = NAME_Value;
	count[5] = value;
};


func void GoldPocket100()
{
	B_PlayerFindItem(ItMi_Gold,100);
};


instance ItSe_HannasBeutel(C_Item)
{
	name = "Leather satchel";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 100;
	visual = "ItMi_Pocket.3ds";
	scemeName = "MAPSEALED";
	material = MAT_LEATHER;
	on_state[0] = HannasBeutel;
	description = name;
	text[0] = "";
	text[1] = "";
	text[2] = "Hanna gave it to me.";
	text[3] = "";
	text[4] = "";
	text[5] = NAME_Value;
	count[5] = value;
};


func void HannasBeutel()
{
	CreateInvItems(hero,ItKE_lockpick,10);
	CreateInvItems(hero,ItKe_ThiefTreasure,1);
	Print(PRINT_HannasBeutel);
};


instance ITSE_MBOLTPOCKET25(C_Item)
{
	name = "Rotten bag";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 500;
	visual = "ItMi_BoltPocket.3ds";
	scemeName = "MAPSEALED";
	material = MAT_LEATHER;
	on_state[0] = mboltpocket25;
	description = name;
	text[0] = "";
	text[1] = "";
	text[2] = "A few crossbow bolts inside.";
	text[3] = "";
	text[4] = "";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = 150;
	inv_rotz = 25;
	inv_rotx = 35;
};


func void mboltpocket25()
{
	B_PlayerFindItem(ItRw_Addon_MagicBolt,25);
};

