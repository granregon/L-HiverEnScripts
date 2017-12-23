
func int B_TeachPlayerTalentAlchemy(var C_Npc slf,var C_Npc oth,var int potion)
{
	var int kosten;
	kosten = B_GetLearnCostTalent(oth,NPC_TALENT_ALCHEMY,potion);
	if(oth.lp < kosten)
	{
		PrintScreen(PRINT_NotEnoughLearnPoints,-1,-1,FONT_ScreenSmall,2);
		B_Say(slf,oth,"$NOLEARNNOPOINTS");
		return FALSE;
	};
	oth.lp = oth.lp - kosten;
	Log_CreateTopic(TOPIC_TalentAlchemy,LOG_NOTE);
	B_LogEntry(TOPIC_TalentAlchemy,"To brew a potion I need an empty laboratory flask and the ingredients required to make the potion. Using these ingredients on the alchemist's bench I can prepare the desired potion.");
	if(potion == POTION_Health_01)
	{
		PLAYER_TALENT_ALCHEMY[POTION_Health_01] = TRUE;
		B_LogEntry(TOPIC_TalentAlchemy,"'Essence of healing' ingredients: 2 healing plants.");
	};
	if(potion == POTION_Health_02)
	{
		PLAYER_TALENT_ALCHEMY[POTION_Health_02] = TRUE;
		B_LogEntry(TOPIC_TalentAlchemy,"'Extract of healing' ingredients: 2 healing herbs.");
	};
	if(potion == POTION_Health_03)
	{
		PLAYER_TALENT_ALCHEMY[POTION_Health_03] = TRUE;
		B_LogEntry(TOPIC_TalentAlchemy,"'Elixir of healing' ingredients: 2 healing roots.");
	};
	if(potion == POTION_CONST_HEAL)
	{
		PLAYER_TALENT_ALCHEMY[15] = TRUE;
		B_LogEntry(TOPIC_TalentAlchemy,"'Healing potion enhancer' ingredients: 3 healing root, 1 digger's meat, 3 meadow knotweed.");
	};
	if(potion == POTION_Mana_01)
	{
		PLAYER_TALENT_ALCHEMY[POTION_Mana_01] = TRUE;
		B_LogEntry(TOPIC_TalentAlchemy,"'Essence of mana' ingredients: 2 fire nettles.");
	};
	if(potion == POTION_Mana_02)
	{
		PLAYER_TALENT_ALCHEMY[POTION_Mana_02] = TRUE;
		B_LogEntry(TOPIC_TalentAlchemy,"'Extract of mana' ingredients: 2 fire nettles.");
	};
	if(potion == POTION_Mana_03)
	{
		PLAYER_TALENT_ALCHEMY[POTION_Mana_03] = TRUE;
		B_LogEntry(TOPIC_TalentAlchemy,"'Elixir of mana' ingredients: 2 fireweed.");
	};
	if(potion == POTION_CONST_MANA)
	{
		PLAYER_TALENT_ALCHEMY[16] = TRUE;
		B_LogEntry(TOPIC_TalentAlchemy,"'Mana potion enhancer' ingredients: 3 fire root, 5 dark mushroom, 3 meadow knotweed.");
	};
	if(potion == POTION_Speed)
	{
		PLAYER_TALENT_ALCHEMY[POTION_Speed] = TRUE;
		B_LogEntry(TOPIC_TalentAlchemy,"'Speed potion' ingredients: 1 snapperweed and 1 meadow knotweed.");
	};
	if(potion == POTION_Perm_STR)
	{
		PLAYER_TALENT_ALCHEMY[POTION_Perm_STR] = TRUE;
		B_LogEntry(TOPIC_TalentAlchemy,"'Elixir of strength' ingredients: 1 dragonroot and 1 king's sorrel.");
	};
	if(potion == POTION_Perm_DEX)
	{
		PLAYER_TALENT_ALCHEMY[POTION_Perm_DEX] = TRUE;
		B_LogEntry(TOPIC_TalentAlchemy,"'Elixir of dexterity' ingredients: 1 goblin berries and 1 king's sorrel.");
	};
	if(potion == POTION_Perm_Mana)
	{
		PLAYER_TALENT_ALCHEMY[POTION_Perm_Mana] = TRUE;
		B_LogEntry(TOPIC_TalentAlchemy,"'Elixir of spirit' ingredients: 3 fire roots and 1 king's sorrel.");
	};
	if(potion == POTION_Perm_Health)
	{
		PLAYER_TALENT_ALCHEMY[POTION_Perm_Health] = TRUE;
		B_LogEntry(TOPIC_TalentAlchemy,"'Elixir of life' ingredients: 3 healing roots and 1 king's sorrel.");
	};
	PrintScreen(PRINT_LearnAlchemy,-1,-1,FONT_Screen,2);
	Npc_SetTalentSkill(oth,NPC_TALENT_ALCHEMY,1);
	return TRUE;
};

