
var int orlnkey_01;
var int orlnkey_02;
var int nw_citystrg_01;
var int nw_citystrg_02;
var int nw_mnstr_01;
var int nw_mnstr_02;
var int nw_bibl_01;
var int nw_bibl_02;
var int oc_store_01;
var int oc_store_02;

func void remke_xar01_s1()
{
	if(Npc_HasItems(hero,ItKe_Xardas) >= 1)
	{
		Npc_RemoveInvItems(hero,ItKe_Xardas,1);
	};
};

func void remke_xar02_s1()
{
	if(Npc_HasItems(hero,itke_oldxrds_addon) >= 1)
	{
		Npc_RemoveInvItems(hero,itke_oldxrds_addon,1);
	};
};

func void remke_xar03_s1()
{
	if(Npc_HasItems(hero,ItKe_CHEST_SEKOB_XARDASBOOK_MIS) >= 1)
	{
		Npc_RemoveInvItems(hero,ItKe_CHEST_SEKOB_XARDASBOOK_MIS,1);
	};
};

func void remke_kavbdt01_s1()
{
	if(Npc_HasItems(hero,ItKe_Bandit) >= 1)
	{
		Npc_RemoveInvItems(hero,ItKe_Bandit,1);
	};
};

func void remke_constantin01_s1()
{
	if(Npc_HasItems(hero,itke_tchr1_addon) >= 1)
	{
		Npc_RemoveInvItems(hero,itke_tchr1_addon,1);
	};
};

func void remke_harad01_s1()
{
	if(Npc_HasItems(hero,itke_tchr2_addon) >= 1)
	{
		Npc_RemoveInvItems(hero,itke_tchr2_addon,1);
	};
};

func void remke_bosper01_s1()
{
	if(Npc_HasItems(hero,itke_tchr3_addon) >= 1)
	{
		Npc_RemoveInvItems(hero,itke_tchr3_addon,1);
	};
};

func void remke_citytwr01_s1()
{
	if(Npc_HasItems(hero,ItKe_City_Tower_01) >= 1)
	{
		Npc_RemoveInvItems(hero,ItKe_City_Tower_01,1);
	};
};

func void remke_citytwr02_s1()
{
	if(Npc_HasItems(hero,ItKe_City_Tower_02) >= 1)
	{
		Npc_RemoveInvItems(hero,ItKe_City_Tower_02,1);
	};
};

func void remke_citytwr03_s1()
{
	if(Npc_HasItems(hero,ItKe_City_Tower_03) >= 1)
	{
		Npc_RemoveInvItems(hero,ItKe_City_Tower_03,1);
	};
};

func void remke_citytwr04_s1()
{
	if(Npc_HasItems(hero,ItKe_City_Tower_04) >= 1)
	{
		Npc_RemoveInvItems(hero,ItKe_City_Tower_04,1);
	};
};

func void remke_citytwr05_s1()
{
	if(Npc_HasItems(hero,ItKe_City_Tower_05) >= 1)
	{
		Npc_RemoveInvItems(hero,ItKe_City_Tower_05,1);
	};
};

func void remke_citytwr06_s1()
{
	if(Npc_HasItems(hero,ItKe_City_Tower_06) >= 1)
	{
		Npc_RemoveInvItems(hero,ItKe_City_Tower_06,1);
	};
};

func void remke_citycor01_s1()
{
	if(Npc_HasItems(hero,itke_city_coragon_01) >= 1)
	{
		Npc_RemoveInvItems(hero,itke_city_coragon_01,1);
	};
};

func void remke_citytele_s1()
{
	if(Npc_HasItems(hero,itke_seaport01_addon) >= 1)
	{
		Npc_RemoveInvItems(hero,itke_seaport01_addon,1);
	};
};

func void remke_citythief01_s1()
{
	if(Npc_HasItems(hero,ItKe_ThiefGuildKey_MIS) >= 1)
	{
		Npc_RemoveInvItems(hero,ItKe_ThiefGuildKey_MIS,1);
	};
};

func void remke_citythief02_s1()
{
	if(Npc_HasItems(hero,ItKe_ThiefGuildKey_Hotel_MIS) >= 1)
	{
		Npc_RemoveInvItems(hero,ItKe_ThiefGuildKey_Hotel_MIS,1);
	};
};

func void remke_citythief03_s1()
{
	if(Npc_HasItems(hero,ItKe_Fingers) >= 1)
	{
		Npc_RemoveInvItems(hero,ItKe_Fingers,1);
	};
};

func void remke_citythief04_s1()
{
	if(Npc_HasItems(hero,ItKe_ThiefTreasure) >= 1)
	{
		Npc_RemoveInvItems(hero,ItKe_ThiefTreasure,1);
	};
};

func void remke_citystorage01_s1()
{
	NW_CITYSTRG_01 = TRUE;
	if((NW_CITYSTRG_01 == TRUE) && (NW_CITYSTRG_02 == TRUE) && (Npc_HasItems(hero,ItKe_Storage) >= 1))
	{
		Npc_RemoveInvItems(hero,ItKe_Storage,1);
	};
};

func void remke_citystorage02_s1()
{
	NW_CITYSTRG_02 = TRUE;
	if((NW_CITYSTRG_01 == TRUE) && (NW_CITYSTRG_02 == TRUE) && (Npc_HasItems(hero,ItKe_Storage) >= 1))
	{
		Npc_RemoveInvItems(hero,ItKe_Storage,1);
	};
};

func void remke_citywat01_s1()
{
	if(Npc_HasItems(hero,itke_vtrssecret_addon) >= 1)
	{
		Npc_RemoveInvItems(hero,itke_vtrssecret_addon,1);
	};
};

func void remke_cityval01_s1()
{
	if(Npc_HasItems(hero,ItKe_Valentino) >= 1)
	{
		Npc_RemoveInvItems(hero,ItKe_Valentino,1);
	};
};

func void remke_citypal01_s1()
{
	if(Npc_HasItems(hero,ItKe_PaladinTruhe) >= 1)
	{
		Npc_RemoveInvItems(hero,ItKe_PaladinTruhe,1);
	};
};

func void remke_citybrg01_s1()
{
	if(Npc_HasItems(hero,ItKe_Buerger) >= 1)
	{
		Npc_RemoveInvItems(hero,ItKe_Buerger,1);
	};
};

func void remke_citysal01_s1()
{
	if(Npc_HasItems(hero,ItKe_Salandril) >= 1)
	{
		Npc_RemoveInvItems(hero,ItKe_Salandril,1);
	};
};

func void remke_kdfrune01_s1()
{
	if(Npc_HasItems(hero,itke_rune_mis) >= 1)
	{
		Npc_RemoveInvItems(hero,itke_rune_mis,1);
	};
};

func void remke_kdfmis01_s1()
{
	if(Npc_HasItems(hero,ItKe_MagicChest) >= 1)
	{
		Npc_RemoveInvItems(hero,ItKe_MagicChest,1);
	};
};

func void remke_kdfroom01_s1()
{
	if(Npc_HasItems(hero,ItKe_KDFPlayer) >= 1)
	{
		Npc_RemoveInvItems(hero,ItKe_KDFPlayer,1);
	};
};

func void remke_kdfbibl01_s1()
{
	NW_BIBL_01 = TRUE;
	if((NW_BIBL_01 == TRUE) && (NW_BIBL_02 == TRUE) && (Npc_HasItems(hero,ItKe_KlosterBibliothek) >= 1))
	{
		Npc_RemoveInvItems(hero,ItKe_KlosterBibliothek,1);
	};
};

func void remke_kdfbibl02_s1()
{
	NW_BIBL_02 = TRUE;
	if((NW_BIBL_01 == TRUE) && (NW_BIBL_02 == TRUE) && (Npc_HasItems(hero,ItKe_KlosterBibliothek) >= 1))
	{
		Npc_RemoveInvItems(hero,ItKe_KlosterBibliothek,1);
	};
};

func void remke_nwmnstr01_s1()
{
	NW_MNSTR_01 = TRUE;
	if((NW_MNSTR_01 == TRUE) && (NW_MNSTR_02 == TRUE) && (Npc_HasItems(hero,ItKe_Innos_MIS) >= 1))
	{
		Npc_RemoveInvItems(hero,ItKe_Innos_MIS,1);
	};
};

func void remke_nwmnstr02_s1()
{
	NW_MNSTR_02 = TRUE;
	if((NW_MNSTR_01 == TRUE) && (NW_MNSTR_02 == TRUE) && (Npc_HasItems(hero,ItKe_Innos_MIS) >= 1))
	{
		Npc_RemoveInvItems(hero,ItKe_Innos_MIS,1);
	};
};

func void remke_tavorln01_s1()
{
	ORLNKEY_01 = TRUE;
	if((ORLNKEY_01 == TRUE) && (ORLNKEY_02 == TRUE) && (Npc_HasItems(hero,itke_orlan_hotelzimmer) >= 1))
	{
		Npc_RemoveInvItems(hero,itke_orlan_hotelzimmer,1);
	};
};

func void remke_tavorln02_s1()
{
	ORLNKEY_02 = TRUE;
	if((ORLNKEY_01 == TRUE) && (ORLNKEY_02 == TRUE) && (Npc_HasItems(hero,itke_orlan_hotelzimmer) >= 1))
	{
		Npc_RemoveInvItems(hero,itke_orlan_hotelzimmer,1);
	};
};

func void remke_orltele_s1()
{
	if(Npc_HasItems(hero,itke_orlan_teleportstation) >= 1)
	{
		Npc_RemoveInvItems(hero,itke_orlan_teleportstation,1);
	};
};

func void remke_owpass01_s1()
{
	if(Npc_HasItems(hero,ItKe_Pass_MIS) >= 1)
	{
		Npc_RemoveInvItems(hero,ItKe_Pass_MIS,1);
	};
};

func void remke_dxtr01_s1()
{
	if(Npc_HasItems(hero,ItKe_Dexter) >= 1)
	{
		Npc_RemoveInvItems(hero,ItKe_Dexter,1);
	};
};

func void remke_kdwtele01()
{
	if(Npc_HasItems(hero,itke_portaltempelwalkthrough_addon) >= 1)
	{
		Npc_RemoveInvItems(hero,itke_portaltempelwalkthrough_addon,1);
	};
};

func void remke_awport01()
{
	ADDON_PRING = TRUE;
};

func void remke_addbdt01_s1()
{
	if(Npc_HasItems(hero,itke_addon_buddler_01) >= 1)
	{
		Npc_RemoveInvItems(hero,itke_addon_buddler_01,1);
	};
};

func void remke_addbdt02_s1()
{
	if(Npc_HasItems(hero,ITKE_Addon_Tavern_01) >= 1)
	{
		Npc_RemoveInvItems(hero,ITKE_Addon_Tavern_01,1);
	};
};

func void remke_addbdt03_s1()
{
	if(Npc_HasItems(hero,itke_addon_esteban) >= 1)
	{
		Npc_RemoveInvItems(hero,itke_addon_esteban,1);
	};
};

func void remke_addbdt04_s1()
{
	if(Npc_HasItems(hero,ITKE_Addon_Thorus) >= 1)
	{
		Npc_RemoveInvItems(hero,ITKE_Addon_Thorus,1);
	};
};

func void remke_addbdt05_s1()
{
	if(Npc_HasItems(hero,ITKE_Addon_Bloodwyn_01) >= 1)
	{
		Npc_RemoveInvItems(hero,ITKE_Addon_Bloodwyn_01,1);
	};
};

func void remke_addbdt06_s1()
{
	if(Npc_HasItems(hero,itke_addon_skinner) >= 1)
	{
		Npc_RemoveInvItems(hero,itke_addon_skinner,1);
	};
};

func void remke_addtmpl01_s1()
{
	if(Npc_HasItems(hero,ITKE_Addon_Heiler) >= 1)
	{
		Npc_RemoveInvItems(hero,ITKE_Addon_Heiler,1);
	};
};

func void remke_addtmpl02_s1()
{
	if(Npc_HasItems(hero,itke_canyonlibrary_hierarchy_books_addon) >= 1)
	{
		Npc_RemoveInvItems(hero,itke_canyonlibrary_hierarchy_books_addon,1);
	};
};

func void remke_addgrg01_s1()
{
	if(Npc_HasItems(hero,ITKE_Greg_ADDON_MIS) >= 1)
	{
		Npc_RemoveInvItems(hero,ITKE_Greg_ADDON_MIS,1);
	};
};

func void remke_ocstore_01_s1()
{
	OC_STORE_01 = TRUE;
	if((OC_STORE_01 == TRUE) && (OC_STORE_02 == TRUE) && (Npc_HasItems(hero,ItKe_OC_Store) >= 1))
	{
		Npc_RemoveInvItems(hero,ItKe_OC_Store,1);
	};
};

func void remke_ocstore_02_s1()
{
	OC_STORE_02 = TRUE;
	if((OC_STORE_01 == TRUE) && (OC_STORE_02 == TRUE) && (Npc_HasItems(hero,ItKe_OC_Store) >= 1))
	{
		Npc_RemoveInvItems(hero,ItKe_OC_Store,1);
	};
};

func void remke_ocgate01_s1()
{
	if(Npc_HasItems(hero,itke_oc_maingate_mis) >= 1)
	{
		Npc_RemoveInvItems(hero,itke_oc_maingate_mis,1);
	};
};

func void remke_ocprison01_s1()
{
	if(Npc_HasItems(hero,ItKe_PrisonKey_MIS) >= 1)
	{
		Npc_RemoveInvItems(hero,ItKe_PrisonKey_MIS,1);
	};
};

func void remke_ocprison02_s1()
{
	if(Npc_HasItems(hero,itke_ebrsj_addon) >= 1)
	{
		Npc_RemoveInvItems(hero,itke_ebrsj_addon,1);
	};
};

func void remke_ocmain01_s1()
{
	if(Npc_HasItems(hero,ITKE_ErzBaronFlur) >= 1)
	{
		Npc_RemoveInvItems(hero,ITKE_ErzBaronFlur,1);
	};
};

func void remke_ocmain02_s1()
{
	if(Npc_HasItems(hero,ITKE_ErzBaronRaum) >= 1)
	{
		Npc_RemoveInvItems(hero,ITKE_ErzBaronRaum,1);
	};
};

func void remke_ocmnstr01_s1()
{
	if(Npc_HasItems(hero,itke_ocmageadddoor_addon) >= 1)
	{
		Npc_RemoveInvItems(hero,itke_ocmageadddoor_addon,1);
	};
};

