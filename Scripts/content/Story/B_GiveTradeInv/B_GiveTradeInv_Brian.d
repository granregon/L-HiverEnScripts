
var int Brian_ItemsGiven_Chapter_1;
var int Brian_ItemsGiven_Chapter_2;
var int Brian_ItemsGiven_Chapter_3;
var int Brian_ItemsGiven_Chapter_4;
var int Brian_ItemsGiven_Chapter_5;

func void B_GiveTradeInv_Brian(var C_Npc slf)
{
	if((Kapitel >= 1) && (Brian_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,20);
		CreateInvItems(slf,itmi_steelbar,2);
		CreateInvItems(slf,itmi_woodbar,1);
		Brian_ItemsGiven_Chapter_1 = TRUE;
	};
	if((Kapitel >= 2) && (Brian_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,20);
		CreateInvItems(slf,itmi_steelbar,3);
		Brian_ItemsGiven_Chapter_2 = TRUE;
	};
	if((Kapitel >= 3) && (Brian_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,20);
		CreateInvItems(slf,itmi_steelbar,2);
		CreateInvItems(slf,itmi_woodbar,1);
		Brian_ItemsGiven_Chapter_3 = TRUE;
	};
	if((Kapitel >= 4) && (Brian_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,20);
		CreateInvItems(slf,itmi_steelbar,1);
		Brian_ItemsGiven_Chapter_4 = TRUE;
	};
	if((Kapitel >= 5) && (Brian_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,40);
		CreateInvItems(slf,itmi_steelbar,4);
		Brian_ItemsGiven_Chapter_5 = TRUE;
	};
};

