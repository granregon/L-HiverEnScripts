
var int Hakon_ItemsGiven_Chapter_1;
var int Hakon_ItemsGiven_Chapter_2;
var int Hakon_ItemsGiven_Chapter_3;
var int Hakon_ItemsGiven_Chapter_4;
var int Hakon_ItemsGiven_Chapter_5;

func void B_GiveTradeInv_Hakon(var C_Npc slf)
{
	if((Kapitel >= 1) && (Hakon_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ItMw_ShortSword3,1);
		CreateInvItems(slf,ItMw_ShortSword4,1);
		CreateInvItems(slf,ItMw_Richtstab,1);
		CreateInvItems(slf,ItMw_Zweihaender2,1);
		CreateInvItems(slf,ItMw_Schwert3,1);
		CreateInvItems(slf,ItMw_Streitkolben,1);
		CreateInvItems(slf,ItMw_Schiffsaxt,1);
		CreateInvItems(slf,ItMw_Schlachtaxt,1);
		CreateInvItems(slf,ItBE_Addon_Leather_01,1);
		CreateInvItems(slf,ItBE_Addon_MIL_01,1);
		CreateInvItems(slf,ItAm_Prot_Edge_01,1);
		CreateInvItems(slf,itsh_g3_03,1);
		Hakon_ItemsGiven_Chapter_1 = TRUE;
	};
	if((Kapitel >= 2) && (Hakon_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,itsh_w2_e3_redania,1);
		Hakon_ItemsGiven_Chapter_2 = TRUE;
	};
	if((Kapitel >= 3) && (Hakon_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems(slf,ItMw_Steinbrecher,1);
		CreateInvItems(slf,ItMw_Doppelaxt,2);
		CreateInvItems(slf,ItMw_Streitkolben,1);
		CreateInvItems(slf,ItMw_Orkschlaechter,2);
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,ItBe_Addon_Prot_Point,1);
		CreateInvItems(slf,itsh_w2_e1_dethmold,1);
		Hakon_ItemsGiven_Chapter_3 = TRUE;
	};
	if((Kapitel >= 4) && (Hakon_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,150);
		CreateInvItems(slf,ItBe_Addon_Prot_EDGE,1);
		CreateInvItems(slf,ItBe_Addon_Prot_TOTAL,1);
		Hakon_ItemsGiven_Chapter_4 = TRUE;
	};
	if((Kapitel >= 5) && (Hakon_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,200);
		Hakon_ItemsGiven_Chapter_5 = TRUE;
	};
};

