
const int Value_Sting = 25;

instance ItAt_Sting(C_Item)
{
	name = "Stinger";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Sting;
	scemeName = "FOOD";
	on_state[0] = Use_Sting;
	visual = "ItAt_Sting.3DS";
	material = MAT_LEATHER;
	description = name;
	text[1] = "Contains a poisonous secretion.";
	text[5] = NAME_Value;
	count[5] = value;
};


func void Use_Sting()
{
	if(Knows_Bloodfly == TRUE)
	{
		if(Bloodfly_Bonus <= 10)
		{
			Npc_ChangeAttribute(self,ATR_HITPOINTS,self.attribute[ATR_HITPOINTS_MAX]);
			Print(PRINT_FullyHealed);
			Bloodfly_Bonus = Bloodfly_Bonus + 1;
		}
		else
		{
			Print(PRINT_Mandibles);
		};
	}
	else
	{
		Print(PRINT_Bloodfly);
		if(self.attribute[ATR_HITPOINTS] > 1)
		{
			self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] - 10;
		};
	};
};

