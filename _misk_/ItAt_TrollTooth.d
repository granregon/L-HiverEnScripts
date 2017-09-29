
const int Value_TrollTooth = 300;

instance ItAt_TrollTooth(C_Item)
{
	name = "Troll tusk";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_TrollTooth;
	visual = "ItAt_TrollTooth.3DS";
	material = MAT_LEATHER;
	description = name;
	text[5] = NAME_04KG;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_RING_STANDARD;
};

