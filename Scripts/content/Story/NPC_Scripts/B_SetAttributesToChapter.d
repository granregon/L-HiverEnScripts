
func void B_SetAttributesToChapter(var C_Npc slf,var int kap)
{
	Npc_SetTalentSkill(slf,NPC_TALENT_MAGE,6);
	if(kap == 0)
	{
		slf.level = 3;
		slf.attribute[ATR_STRENGTH] = 20;
		slf.aivar[REAL_STRENGTH] = 20;
		slf.attribute[ATR_DEXTERITY] = 20;
		slf.aivar[REAL_DEXTERITY] = 20;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 100;
		slf.attribute[ATR_HITPOINTS] = 100;
	};
	if(kap == 1)
	{
		slf.level = 10;
		slf.attribute[ATR_STRENGTH] = 50;
		slf.aivar[REAL_STRENGTH] = 50;
		slf.attribute[ATR_DEXTERITY] = 50;
		slf.aivar[REAL_DEXTERITY] = 50;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 250;
		slf.attribute[ATR_HITPOINTS] = 250;
	};
	if(kap == 2)
	{
		slf.level = 20;
		slf.attribute[ATR_STRENGTH] = 100;
		slf.aivar[REAL_STRENGTH] = 100;
		slf.attribute[ATR_DEXTERITY] = 100;
		slf.aivar[REAL_DEXTERITY] = 100;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 400;
		slf.attribute[ATR_HITPOINTS] = 400;
	};
	if(kap == 3)
	{
		slf.level = 30;
		slf.attribute[ATR_STRENGTH] = 125;
		slf.aivar[REAL_STRENGTH] = 125;
		slf.attribute[ATR_DEXTERITY] = 125;
		slf.aivar[REAL_DEXTERITY] = 125;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 550;
		slf.attribute[ATR_HITPOINTS] = 550;
	};
	if(kap == 4)
	{
		slf.level = 40;
		slf.attribute[ATR_STRENGTH] = 150;
		slf.aivar[REAL_STRENGTH] = 150;
		slf.attribute[ATR_DEXTERITY] = 150;
		slf.aivar[REAL_DEXTERITY] = 150;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 700;
		slf.attribute[ATR_HITPOINTS] = 700;
	};
	if(kap == 5)
	{
		slf.level = 50;
		slf.attribute[ATR_STRENGTH] = 175;
		slf.aivar[REAL_STRENGTH] = 175;
		slf.attribute[ATR_DEXTERITY] = 175;
		slf.aivar[REAL_DEXTERITY] = 175;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 850;
		slf.attribute[ATR_HITPOINTS] = 850;
	};
	if(kap >= 6)
	{
		slf.level = 50;
		slf.attribute[ATR_STRENGTH] = 200;
		slf.aivar[REAL_STRENGTH] = 200;
		slf.attribute[ATR_DEXTERITY] = 200;
		slf.aivar[REAL_DEXTERITY] = 200;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 1000;
		slf.attribute[ATR_HITPOINTS] = 1000;
	};
	if(kap == 7)
	{
		slf.level = 50;
		slf.attribute[ATR_STRENGTH] = 250;
		slf.aivar[REAL_STRENGTH] = 250;
		slf.attribute[ATR_DEXTERITY] = 250;
		slf.aivar[REAL_DEXTERITY] = 250;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 1250;
		slf.attribute[ATR_HITPOINTS] = 1250;
	};
	if(kap == 8)
	{
		slf.level = 15;
		slf.attribute[ATR_STRENGTH] = 120;
		slf.aivar[REAL_STRENGTH] = 120;
		slf.attribute[ATR_DEXTERITY] = 120;
		slf.aivar[REAL_DEXTERITY] = 120;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 1400;
		slf.attribute[ATR_HITPOINTS] = 1400;
	};
	slf.exp = 500 * ((slf.level + 1) / 2) * (slf.level + 1);
	slf.exp_next = 500 * ((slf.level + 2) / 2) * (slf.level + 1);
};

