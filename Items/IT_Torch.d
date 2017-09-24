
const int Value_Fackel = 2;

instance ItLsTorch(C_Item)
{
	name = "Torch";
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_TORCH | ITEM_MULTI;
	value = Value_Fackel;
	visual = "ItLs_Torch_01.3ds";
	material = MAT_WOOD;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ItLsTorchburning(C_Item)
{
	name = "Burning Torch";
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_TORCH;
	value = 0;
	visual = "ITLSTORCHBURNING.ZEN";
	material = MAT_WOOD;
	description = name;
	text[3] = "Ordinary Torch.";
};

instance ItLsTorchburned(C_Item)
{
	name = "Torch";
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_TORCH | ITEM_MULTI;
	value = 0;
	visual = "ItLs_Torchburned_01.3ds";
	material = MAT_WOOD;
	description = name;
	text[3] = "Burned Torch.";
};

instance ItLsTorchFirespit(C_Item)
{
	name = "Torch";
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_TORCH;
	value = 1;
	visual = "ITLSTORCHBURNING.ZEN";
	material = MAT_WOOD;
	scemeName = "FIRESPIT";
	description = name;
	text[4] = NAME_Value;
	count[4] = value;
};

