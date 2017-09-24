
const int Value_CrawlerMandibles = 15;

instance ItAt_CrawlerMandibles(C_Item)
{
	name = "Minecrawler mandibles";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_CrawlerMandibles;
	visual = "ItAt_CrawlerMandibles.3DS";
	material = MAT_LEATHER;
	scemeName = "FOOD";
	on_state[0] = Use_Mandibles;
	description = name;
	text[0] = "The mandibles can be opened";
	text[1] = "in order to drink the secretion inside them.";
	text[2] = "This regenerates magic power.";
	text[3] = "The effect fades in time.";
	text[5] = NAME_Value;
	count[5] = value;
};


func void Use_Mandibles()
{
	if(Mandibles_Bonus <= 9)
	{
		Npc_ChangeAttribute(self,ATR_MANA,self.attribute[ATR_MANA_MAX]);
		Mandibles_Bonus = Mandibles_Bonus + 1;
	}
	else
	{
		PrintScreen(PRINT_Mandibles,-1,YPOS_LevelUp,FONT_ScreenSmall,2);
	};
};

