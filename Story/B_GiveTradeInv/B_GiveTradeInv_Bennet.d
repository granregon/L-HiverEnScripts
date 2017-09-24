
var int Bennet_ItemsGiven_Chapter_1;
var int Bennet_ItemsGiven_Chapter_2;
var int Bennet_ItemsGiven_Chapter_3;
var int Bennet_ItemsGiven_Chapter_4;
var int Bennet_ItemsGiven_Chapter_5;

func void B_GiveTradeInv_Bennet(var C_Npc slf)
{
	if((Kapitel >= 1) && (Bennet_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,itmi_steelbar,3);
		CreateInvItems(slf,itmi_textile,3);
		CreateInvItems(slf,itmi_leather,2);
		CreateInvItems(slf,itmi_woodbar,2);
		CreateInvItems(slf,itwr_addon_sldbocrft_01,1);
		CreateInvItems(slf,itwr_smithmasterbook_lvl1,1);
		CreateInvItems(slf,ItMw_Kriegshammer1,1);
		CreateInvItems(slf,ItMw_1H_Mace_L_04,2);
		CreateInvItems(slf,ItBE_Addon_SLD_01,1);
		CreateInvItems(slf,itsh_sk_iron,1);
		Bennet_ItemsGiven_Chapter_1 = TRUE;
	};
	if((Kapitel >= 2) && (Bennet_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,250);
		CreateInvItems(slf,itmi_steelbar,2);
		CreateInvItems(slf,itmi_leather,1);
		CreateInvItems(slf,itsh_sm_steel,1);
		Bennet_ItemsGiven_Chapter_2 = TRUE;
	};
	if((Kapitel >= 3) && (Bennet_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,450);
		CreateInvItems(slf,itmi_steelbar,3);
		CreateInvItems(slf,itmi_leather,1);
		CreateInvItems(slf,ItMi_Nugget,1);
		CreateInvItems(slf,ItBE_Addon_MC,1);
		CreateInvItems(slf,itsh_korshan_a,1);
		Bennet_ItemsGiven_Chapter_3 = TRUE;
	};
	if((Kapitel >= 4) && (Bennet_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,700);
		CreateInvItems(slf,itmi_steelbar,1);
		CreateInvItems(slf,ItMi_Nugget,2);
		Bennet_ItemsGiven_Chapter_4 = TRUE;
	};
	if((Kapitel >= 5) && (Bennet_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,1100);
		CreateInvItems(slf,itmi_steelbar,5);
		CreateInvItems(slf,itmi_leather,3);
		CreateInvItems(slf,ItMi_Nugget,2);
		Bennet_ItemsGiven_Chapter_5 = TRUE;
	};
};

