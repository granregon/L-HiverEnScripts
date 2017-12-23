
var int jan_itemsgiven_chapter_1;
var int jan_itemsgiven_chapter_2;
var int jan_itemsgiven_chapter_3;
var int jan_itemsgiven_chapter_4;
var int jan_itemsgiven_chapter_5;

func void b_givetradeinv_jan(var C_Npc slf)
{
	if((Kapitel >= 1) && (JAN_ITEMSGIVEN_CHAPTER_1 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,100);
		JAN_ITEMSGIVEN_CHAPTER_1 = TRUE;
	};
	if((Kapitel >= 2) && (JAN_ITEMSGIVEN_CHAPTER_2 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,250);
		JAN_ITEMSGIVEN_CHAPTER_2 = TRUE;
	};
	if((Kapitel >= 3) && (JAN_ITEMSGIVEN_CHAPTER_3 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,450);
		JAN_ITEMSGIVEN_CHAPTER_3 = TRUE;
	};
	if((Kapitel >= 4) && (JAN_ITEMSGIVEN_CHAPTER_4 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,700);
		CreateInvItems(slf,itmi_steelbar,2);
		CreateInvItems(slf,itmi_leather,1);
		CreateInvItems(slf,ItMi_Nugget,1);
		CreateInvItems(slf,itwr_smithmasterbook_lvl2,1);
		CreateInvItems(slf,itwr_smithmasterbook_lvl3,1);
		JAN_ITEMSGIVEN_CHAPTER_4 = TRUE;
	};
	if((Kapitel >= 5) && (JAN_ITEMSGIVEN_CHAPTER_5 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,1100);
		CreateInvItems(slf,itmi_steelbar,5);
		CreateInvItems(slf,itmi_leather,3);
		JAN_ITEMSGIVEN_CHAPTER_5 = TRUE;
	};
};

