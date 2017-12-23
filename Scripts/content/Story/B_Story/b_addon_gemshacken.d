
var int gemsrandomizer_01;
var int gemsrandomizer_02;
var int gemsrandomizer_03;
var int gemsrandomizer_04;

func void b_addon_gemshacken()
{
	if((PLAYER_TALENT_OREMASTER[0] == FALSE) && (PLAYER_TALENT_OREMASTER[1] == FALSE) && (PLAYER_TALENT_OREMASTER[2] == FALSE))
	{
		GEMSRANDOMIZER_01 = Hlp_Random(16);
		if((GEMSRANDOMIZER_01 == 0) || (GEMSRANDOMIZER_01 == 1) || (GEMSRANDOMIZER_01 == 2))
		{
			CreateInvItems(hero,itmi_amthstfragments_01,1);
			AI_PrintScreen(NAME_ADDON_GEMS_01,-1,55,FONT_ScreenSmall,2);
		}
		else if((GEMSRANDOMIZER_01 == 4) || (GEMSRANDOMIZER_01 == 5) || (GEMSRANDOMIZER_01 == 7))
		{
			CreateInvItems(hero,itmi_ambrfragments_01,1);
			AI_PrintScreen(NAME_ADDON_GEMS_02,-1,55,FONT_ScreenSmall,2);
		}
		else if((GEMSRANDOMIZER_01 == 3) || (GEMSRANDOMIZER_01 == 6))
		{
			CreateInvItems(hero,itmi_tpzfragments_01,1);
			AI_PrintScreen(NAME_ADDON_GEMS_03,-1,55,FONT_ScreenSmall,2);
		}
		else if(GEMSRANDOMIZER_01 == 8)
		{
			CreateInvItems(hero,itmi_rubfragments_01,1);
			AI_PrintScreen(NAME_ADDON_GEMS_04,-1,55,FONT_ScreenSmall,2);
		}
		else if(GEMSRANDOMIZER_01 == 10)
		{
			CreateInvItems(hero,itmi_emrldfragments_01,1);
			AI_PrintScreen(NAME_ADDON_GEMS_05,-1,55,FONT_ScreenSmall,2);
		}
		else if(GEMSRANDOMIZER_01 == 12)
		{
			CreateInvItems(hero,itmi_spphrfragments_01,1);
			AI_PrintScreen(NAME_ADDON_GEMS_06,-1,55,FONT_ScreenSmall,2);
		}
		else if(GEMSRANDOMIZER_01 == 15)
		{
			CreateInvItems(hero,itmi_dmndfragments_01,1);
			AI_PrintScreen(NAME_ADDON_GEMS_07,-1,55,FONT_ScreenSmall,2);
		};
	}
	else if((PLAYER_TALENT_OREMASTER[0] == TRUE) && (PLAYER_TALENT_OREMASTER[1] == FALSE) && (PLAYER_TALENT_OREMASTER[2] == FALSE))
	{
		GEMSRANDOMIZER_02 = Hlp_Random(12);
		if((GEMSRANDOMIZER_02 == 0) || (GEMSRANDOMIZER_02 == 2))
		{
			CreateInvItems(hero,itmi_amthstfragments_01,1);
			AI_PrintScreen(NAME_ADDON_GEMS_01,-1,55,FONT_ScreenSmall,2);
		}
		else if((GEMSRANDOMIZER_02 == 4) || (GEMSRANDOMIZER_02 == 5))
		{
			CreateInvItems(hero,itmi_ambrfragments_01,1);
			AI_PrintScreen(NAME_ADDON_GEMS_02,-1,55,FONT_ScreenSmall,2);
		}
		else if((GEMSRANDOMIZER_02 == 3) || (GEMSRANDOMIZER_02 == 1))
		{
			CreateInvItems(hero,itmi_tpzfragments_01,1);
			AI_PrintScreen(NAME_ADDON_GEMS_03,-1,55,FONT_ScreenSmall,2);
		}
		else if(GEMSRANDOMIZER_02 == 7)
		{
			CreateInvItems(hero,itmi_rubfragments_01,1);
			AI_PrintScreen(NAME_ADDON_GEMS_04,-1,55,FONT_ScreenSmall,2);
		}
		else if(GEMSRANDOMIZER_02 == 8)
		{
			CreateInvItems(hero,itmi_emrldfragments_01,1);
			AI_PrintScreen(NAME_ADDON_GEMS_05,-1,55,FONT_ScreenSmall,2);
		}
		else if(GEMSRANDOMIZER_02 == 10)
		{
			CreateInvItems(hero,itmi_spphrfragments_01,1);
			AI_PrintScreen(NAME_ADDON_GEMS_06,-1,55,FONT_ScreenSmall,2);
		}
		else if(GEMSRANDOMIZER_02 == 11)
		{
			CreateInvItems(hero,itmi_dmndfragments_01,1);
			AI_PrintScreen(NAME_ADDON_GEMS_07,-1,55,FONT_ScreenSmall,2);
		};
	}
	else if((PLAYER_TALENT_OREMASTER[1] == TRUE) && (PLAYER_TALENT_OREMASTER[0] == TRUE) && (PLAYER_TALENT_OREMASTER[2] == FALSE))
	{
		GEMSRANDOMIZER_03 = Hlp_Random(11);
		if((GEMSRANDOMIZER_03 == 0) || (GEMSRANDOMIZER_03 == 3))
		{
			CreateInvItems(hero,itmi_amethyst,1);
			AI_PrintScreen(NAME_ADDON_GEMS_1F,-1,55,FONT_ScreenSmall,2);
		}
		else if((GEMSRANDOMIZER_03 == 1) || (GEMSRANDOMIZER_03 == 5))
		{
			CreateInvItems(hero,itmi_amber,1);
			AI_PrintScreen(NAME_ADDON_GEMS_2F,-1,55,FONT_ScreenSmall,2);
		}
		else if((GEMSRANDOMIZER_03 == 2) || (GEMSRANDOMIZER_03 == 4))
		{
			CreateInvItems(hero,itmi_topaz,1);
			AI_PrintScreen(NAME_ADDON_GEMS_3F,-1,55,FONT_ScreenSmall,2);
		}
		else if(GEMSRANDOMIZER_03 == 7)
		{
			CreateInvItems(hero,itmi_rubfragments_01,1);
			AI_PrintScreen(NAME_ADDON_GEMS_04,-1,55,FONT_ScreenSmall,2);
		}
		else if(GEMSRANDOMIZER_03 == 8)
		{
			CreateInvItems(hero,itmi_emrldfragments_01,1);
			AI_PrintScreen(NAME_ADDON_GEMS_05,-1,55,FONT_ScreenSmall,2);
		}
		else if(GEMSRANDOMIZER_03 == 9)
		{
			CreateInvItems(hero,itmi_spphrfragments_01,1);
			AI_PrintScreen(NAME_ADDON_GEMS_06,-1,55,FONT_ScreenSmall,2);
		}
		else if(GEMSRANDOMIZER_03 == 10)
		{
			CreateInvItems(hero,itmi_dmndfragments_01,1);
			AI_PrintScreen(NAME_ADDON_GEMS_07,-1,55,FONT_ScreenSmall,2);
		};
	}
	else if((PLAYER_TALENT_OREMASTER[2] == TRUE) && (PLAYER_TALENT_OREMASTER[0] == TRUE) && (PLAYER_TALENT_OREMASTER[1] == TRUE))
	{
		GEMSRANDOMIZER_04 = Hlp_Random(11);
		if(GEMSRANDOMIZER_04 == 0)
		{
			CreateInvItems(hero,itmi_amethyst,1);
			AI_PrintScreen(NAME_ADDON_GEMS_1F,-1,55,FONT_ScreenSmall,2);
		}
		else if(GEMSRANDOMIZER_04 == 1)
		{
			CreateInvItems(hero,itmi_amber,1);
			AI_PrintScreen(NAME_ADDON_GEMS_2F,-1,55,FONT_ScreenSmall,2);
		}
		else if(GEMSRANDOMIZER_04 == 2)
		{
			CreateInvItems(hero,itmi_topaz,1);
			AI_PrintScreen(NAME_ADDON_GEMS_3F,-1,55,FONT_ScreenSmall,2);
		}
		else if(GEMSRANDOMIZER_04 == 3)
		{
			CreateInvItems(hero,itmi_ruby,1);
			AI_PrintScreen(NAME_ADDON_GEMS_4F,-1,55,FONT_ScreenSmall,2);
		}
		else if(GEMSRANDOMIZER_04 == 4)
		{
			CreateInvItems(hero,itmi_emerald,1);
			AI_PrintScreen(NAME_ADDON_GEMS_5F,-1,55,FONT_ScreenSmall,2);
		}
		else if(GEMSRANDOMIZER_04 == 6)
		{
			CreateInvItems(hero,itmi_spphrfragments_01,1);
			AI_PrintScreen(NAME_ADDON_GEMS_06,-1,55,FONT_ScreenSmall,2);
		}
		else if(GEMSRANDOMIZER_04 == 7)
		{
			CreateInvItems(hero,itmi_sapphire,1);
			AI_PrintScreen(NAME_ADDON_GEMS_6F,-1,55,FONT_ScreenSmall,2);
		}
		else if(GEMSRANDOMIZER_04 == 9)
		{
			CreateInvItems(hero,itmi_dmndfragments_01,1);
			AI_PrintScreen(NAME_ADDON_GEMS_07,-1,55,FONT_ScreenSmall,2);
		}
		else if(GEMSRANDOMIZER_04 == 10)
		{
			CreateInvItems(hero,itmi_diamond,1);
			AI_PrintScreen(NAME_ADDON_GEMS_7F,-1,55,FONT_ScreenSmall,2);
		};
	};
};

