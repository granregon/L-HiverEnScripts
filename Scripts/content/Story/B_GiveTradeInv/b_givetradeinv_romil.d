
var int romil_itemsgiven_chapter_1;
var int romil_itemsgiven_chapter_2;
var int romil_itemsgiven_chapter_3;
var int romil_itemsgiven_chapter_4;
var int romil_itemsgiven_chapter_5;

func void b_givetradeinv_romil(var C_Npc slf)
{
	if((Kapitel >= 1) && (ROMIL_ITEMSGIVEN_CHAPTER_1 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,31);
		CreateInvItems(slf,ItFo_Bacon,3);
		CreateInvItems(slf,ItFo_Sausage,5);
		CreateInvItems(slf,ItFoMuttonRaw,11);
		ROMIL_ITEMSGIVEN_CHAPTER_1 = TRUE;
	};
	if((Kapitel >= 2) && (ROMIL_ITEMSGIVEN_CHAPTER_2 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,60);
		CreateInvItems(slf,ItFo_Bacon,1);
		CreateInvItems(slf,ItFo_Sausage,2);
		CreateInvItems(slf,ItFoMuttonRaw,5);
		ROMIL_ITEMSGIVEN_CHAPTER_2 = TRUE;
	};
	if((Kapitel >= 3) && (ROMIL_ITEMSGIVEN_CHAPTER_3 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,120);
		CreateInvItems(slf,ItFo_Bacon,1);
		CreateInvItems(slf,ItFo_Sausage,4);
		CreateInvItems(slf,ItFoMuttonRaw,10);
		ROMIL_ITEMSGIVEN_CHAPTER_3 = TRUE;
	};
	if((Kapitel >= 4) && (ROMIL_ITEMSGIVEN_CHAPTER_4 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,220);
		CreateInvItems(slf,ItFo_Sausage,1);
		CreateInvItems(slf,ItFoMuttonRaw,4);
		ROMIL_ITEMSGIVEN_CHAPTER_4 = TRUE;
	};
	if((Kapitel >= 5) && (ROMIL_ITEMSGIVEN_CHAPTER_5 == FALSE))
	{
		CreateInvItems(slf,ItMi_Gold,321);
		CreateInvItems(slf,ItFo_Bacon,2);
		ROMIL_ITEMSGIVEN_CHAPTER_5 = TRUE;
	};
};

