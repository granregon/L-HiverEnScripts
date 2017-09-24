
var int carl_itemsgiven_chapter_1;
var int carl_itemsgiven_chapter_2;
var int carl_itemsgiven_chapter_3;
var int carl_itemsgiven_chapter_4;
var int carl_itemsgiven_chapter_5;

func void b_givetradeinv_carl(var C_Npc slf)
{
	if((Kapitel >= 0) && (CARL_ITEMSGIVEN_CHAPTER_1 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,itmi_steelbar,4);
		CreateInvItems(slf,itmi_textile,3);
		CreateInvItems(slf,itmi_leather,2);
		CreateInvItems(slf,itwr_addon_sldg3crft_01,1);
		CreateInvItems(slf,itwr_addon_g3sldcrft_grd1to3,1);
		CreateInvItems(slf,itwr_addon_w2knightcrft_01,1);
		CreateInvItems(slf,itwr_addon_w2knightcrft_grd1to2,1);
		CreateInvItems(slf,itbe_addon_enchleather_01,1);
		CARL_ITEMSGIVEN_CHAPTER_1 = TRUE;
	};
	if((Kapitel >= 2) && (CARL_ITEMSGIVEN_CHAPTER_2 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,itwr_addon_g3sldcrft_grd4to5,1);
		CreateInvItems(slf,itmi_steelbar,2);
		CARL_ITEMSGIVEN_CHAPTER_2 = TRUE;
	};
	if((Kapitel >= 3) && (CARL_ITEMSGIVEN_CHAPTER_3 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,100);
		CreateInvItems(slf,itmi_steelbar,3);
		CreateInvItems(slf,itwr_addon_g3sldcrft_grd6to7,1);
		CreateInvItems(slf,itwr_addon_w2knightcrft_grd3to4,1);
		CARL_ITEMSGIVEN_CHAPTER_3 = TRUE;
	};
	if((Kapitel >= 4) && (CARL_ITEMSGIVEN_CHAPTER_4 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,150);
		CreateInvItems(slf,itmi_textile,4);
		CreateInvItems(slf,itmi_leather,1);
		CreateInvItems(slf,itwr_addon_w2knightcrft_grd5to7,1);
		CARL_ITEMSGIVEN_CHAPTER_4 = TRUE;
	};
	if((Kapitel >= 5) && (CARL_ITEMSGIVEN_CHAPTER_5 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,200);
		CreateInvItems(slf,itmi_steelbar,6);
		CARL_ITEMSGIVEN_CHAPTER_5 = TRUE;
	};
};

