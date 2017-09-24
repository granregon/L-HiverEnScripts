
var int Jora_ItemsGiven_Chapter_1;
var int Jora_ItemsGiven_Chapter_2;
var int Jora_ItemsGiven_Chapter_3;
var int Jora_ItemsGiven_Chapter_4;
var int Jora_ItemsGiven_Chapter_5;

func void B_GiveTradeInv_Jora(var C_Npc slf)
{
	if((Kapitel >= 1) && (Jora_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,itmi_leather,1);
		CreateInvItems(slf,itmi_textile,5);
		CreateInvItems(slf,itmi_woodbar,2);
		CreateInvItems(slf,ItLsTorch,5);
		CreateInvItems(slf,ItMi_Brush,2);
		CreateInvItems(slf,ItMi_Broom,1);
		CreateInvItems(slf,ItMi_Saw,2);
		CreateInvItems(slf,ItMi_Hammer,3);
		CreateInvItems(slf,ItMi_Pan,2);
		CreateInvItems(slf,ItMi_Pitch,2);
		CreateInvItems(slf,ItRw_Arrow,30);
		CreateInvItems(slf,ItRw_Bolt,30);
		CreateInvItems(slf,ItMw_2H_Axe_L_01,1);
		CreateInvItems(slf,itbe_addon_enchleather_01,1);
		Jora_ItemsGiven_Chapter_1 = TRUE;
	};
	if((Kapitel >= 2) && (Jora_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,itmi_leather,1);
		CreateInvItems(slf,itmi_textile,2);
		CreateInvItems(slf,itmi_woodbar,1);
		CreateInvItems(slf,ItMi_Pliers,1);
		CreateInvItems(slf,ItRw_Arrow,60);
		CreateInvItems(slf,ItRw_Bolt,60);
		Jora_ItemsGiven_Chapter_2 = TRUE;
	};
	if((Kapitel >= 3) && (Jora_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,itmi_textile,3);
		CreateInvItems(slf,itmi_woodbar,2);
		CreateInvItems(slf,ItMi_Pitch,2);
		CreateInvItems(slf,itmi_steelbar,2);
		CreateInvItems(slf,ItRw_Arrow,60);
		CreateInvItems(slf,ItRw_Bolt,60);
		CreateInvItems(slf,ItMw_2H_Axe_L_01,1);
		CreateInvItems(slf,itbe_addon_enchleather_01,1);
		Jora_ItemsGiven_Chapter_3 = TRUE;
	};
	if((Kapitel >= 4) && (Jora_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,150);
		CreateInvItems(slf,itmi_textile,2);
		CreateInvItems(slf,ItMi_Rockcrystal,2);
		CreateInvItems(slf,ItRw_Arrow,60);
		CreateInvItems(slf,ItRw_Bolt,60);
		CreateInvItems(slf,ItBe_Addon_STR_10,1);
		Jora_ItemsGiven_Chapter_4 = TRUE;
	};
	if((Kapitel >= 5) && (Jora_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,200);
		CreateInvItems(slf,itmi_textile,6);
		CreateInvItems(slf,itmi_woodbar,10);
		CreateInvItems(slf,ItMi_Coal,3);
		CreateInvItems(slf,ItMi_Pitch,2);
		CreateInvItems(slf,itmi_steelbar,1);
		CreateInvItems(slf,ItRw_Arrow,160);
		CreateInvItems(slf,ItRw_Bolt,160);
		CreateInvItems(slf,ItMw_2H_Axe_L_01,1);
		CreateInvItems(slf,itbe_addon_enchleather_01,1);
		Jora_ItemsGiven_Chapter_5 = TRUE;
	};
};

