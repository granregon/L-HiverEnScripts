
var int playeristransformed;
var int hitchancebackuponeh;
var int hitchancebackuptwoh;
var int hitchancebackupbows;
var int hitchancebackupcbow;
var int manamaxbackup;
var int meleeweaponchangedhero;
var int rangeweaponchangedhero;
var int changedmanahero;
var int changedonehhero;
var int changedtwohhero;
var int changedbowshero;
var int changedcbowhero;
var int scriptpatchweaponchange;
var int scriptpatchweaponchange_ranged;

func void b_meleeweaponchange(var int oneh,var int twoh,var int manamax)
{
	MELEEWEAPONCHANGEDHERO = TRUE;
	CHANGEDMANAHERO = manamax;
	CHANGEDONEHHERO = oneh;
	CHANGEDTWOHHERO = twoh;
	SCRIPTPATCHWEAPONCHANGE = TRUE;
};

func void b_meleeweaponundochange()
{
	MELEEWEAPONCHANGEDHERO = FALSE;
	CHANGEDMANAHERO = 0;
	CHANGEDONEHHERO = 0;
	CHANGEDTWOHHERO = 0;
	SCRIPTPATCHWEAPONCHANGE = TRUE;
};

func void b_rangedweaponchange(var int bowhs,var int cbowhs)
{
	RANGEWEAPONCHANGEDHERO = TRUE;
	CHANGEDBOWSHERO = bowhs;
	CHANGEDCBOWHERO = cbowhs;
	SCRIPTPATCHWEAPONCHANGE_RANGED = TRUE;
};

func void b_rangedweaponundochange()
{
	RANGEWEAPONCHANGEDHERO = FALSE;
	CHANGEDBOWSHERO = 0;
	CHANGEDCBOWHERO = 0;
	SCRIPTPATCHWEAPONCHANGE_RANGED = TRUE;
};

func void b_startmagictransform()
{
	if(!PLAYERISTRANSFORMED)
	{
		PLAYERISTRANSFORMED = TRUE;
		HITCHANCEBACKUPONEH = hero.HitChance[NPC_TALENT_1H] - CHANGEDONEHHERO;
		HITCHANCEBACKUPTWOH = hero.HitChance[NPC_TALENT_2H] - CHANGEDTWOHHERO;
		HITCHANCEBACKUPBOWS = hero.HitChance[NPC_TALENT_BOW] - CHANGEDBOWSHERO;
		HITCHANCEBACKUPCBOW = hero.HitChance[NPC_TALENT_CROSSBOW] - CHANGEDCBOWHERO;
		MANAMAXBACKUP = hero.attribute[ATR_MANA_MAX] - CHANGEDMANAHERO;
		b_meleeweaponundochange();
		b_rangedweaponundochange();
	};
};

func void b_stopmagictransform()
{
	if(PLAYERISTRANSFORMED)
	{
		if(HITCHANCEBACKUPONEH != hero.HitChance[NPC_TALENT_1H])
		{
			B_AddFightSkill(hero,NPC_TALENT_1H,(HITCHANCEBACKUPONEH - hero.HitChance[NPC_TALENT_1H]) + CHANGEDONEHHERO);
		};
		if(HITCHANCEBACKUPTWOH != hero.HitChance[NPC_TALENT_2H])
		{
			B_AddFightSkill(hero,NPC_TALENT_2H,(HITCHANCEBACKUPTWOH - hero.HitChance[NPC_TALENT_2H]) + CHANGEDTWOHHERO);
		};
		if(HITCHANCEBACKUPBOWS != hero.HitChance[NPC_TALENT_BOW])
		{
			B_AddFightSkill(hero,NPC_TALENT_BOW,(HITCHANCEBACKUPBOWS - hero.HitChance[NPC_TALENT_BOW]) + CHANGEDBOWSHERO);
		};
		if(HITCHANCEBACKUPCBOW != hero.HitChance[NPC_TALENT_CROSSBOW])
		{
			B_AddFightSkill(hero,NPC_TALENT_CROSSBOW,(HITCHANCEBACKUPCBOW - hero.HitChance[NPC_TALENT_CROSSBOW]) + CHANGEDCBOWHERO);
		};
		if(MANAMAXBACKUP != hero.attribute[ATR_MANA_MAX])
		{
			hero.attribute[ATR_MANA_MAX] = MANAMAXBACKUP + CHANGEDMANAHERO;
		};
		AI_UnequipWeapons(hero);
		PLAYERISTRANSFORMED = FALSE;
	};
};

