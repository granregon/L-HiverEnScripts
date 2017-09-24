
var int bennet_di_itemsgiven;

func void B_GiveTradeInv_Bennet_DI(var C_Npc slf)
{
	if(BENNET_DI_ITEMSGIVEN == FALSE)
	{
		CreateInvItems(slf,ItMi_Gold,700);
		CreateInvItems(slf,itmi_steelbar,7);
		CreateInvItems(slf,itmi_leather,5);
		CreateInvItems(slf,itmi_textile,4);
		CreateInvItems(slf,ItRw_Arrow,140);
		CreateInvItems(slf,ItRw_Bolt,140);
		CreateInvItems(slf,ItMw_ElBastardo,1);
		CreateInvItems(slf,ItMw_Folteraxt,1);
		CreateInvItems(slf,ItMw_Zweihaender4,1);
		CreateInvItems(slf,ItMw_Barbarenstreitaxt,1);
		CreateInvItems(slf,ItMw_Berserkeraxt,1);
		CreateInvItems(slf,ItMi_Nugget,4);
		BENNET_DI_ITEMSGIVEN = TRUE;
	};
};

