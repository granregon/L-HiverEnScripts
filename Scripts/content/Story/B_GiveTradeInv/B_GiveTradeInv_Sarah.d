
var int Sarah_ItemsGiven_Chapter_1;
var int Sarah_ItemsGiven_Chapter_2;
var int Sarah_ItemsGiven_Chapter_3;
var int Sarah_ItemsGiven_Chapter_4;
var int Sarah_ItemsGiven_Chapter_5;

func void B_GiveTradeInv_Sarah(var C_Npc slf)
{
	if((Kapitel >= 1) && (Sarah_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,20);
		CreateInvItems(slf,ItMw_1h_Vlk_Sword,1);
		CreateInvItems(slf,itmw_gaddare,1);
		CreateInvItems(slf,itmw_katana,1);
		CreateInvItems(slf,itmw_1h_assn_dagger,1);
		CreateInvItems(slf,ItMw_Meisterdegen,1);
		Sarah_ItemsGiven_Chapter_1 = TRUE;
	};
	if((Kapitel >= 2) && (Sarah_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,20);
		CreateInvItems(slf,ItMw_1h_Vlk_Sword,1);
		Sarah_ItemsGiven_Chapter_2 = TRUE;
	};
	if((Kapitel >= 3) && (Sarah_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,25);
		CreateInvItems(slf,ItMw_Meisterdegen,1);
		Sarah_ItemsGiven_Chapter_3 = TRUE;
	};
	if((Kapitel >= 4) && (Sarah_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,itmw_1h_assn_dagger,1);
		Sarah_ItemsGiven_Chapter_4 = TRUE;
	};
	if((Kapitel >= 5) && (Sarah_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,200);
		CreateInvItems(slf,itmw_katana,1);
		Sarah_ItemsGiven_Chapter_5 = TRUE;
	};
};

