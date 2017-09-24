
var int randammo;

func void B_CreateAmmo(var C_Npc slf)
{
	var C_Item rangedWeapon;
	if(Npc_IsInFightMode(slf,FMODE_FAR))
	{
		rangedWeapon = Npc_GetReadiedWeapon(slf);
	}
	else if(Npc_HasEquippedRangedWeapon(slf))
	{
		rangedWeapon = Npc_GetEquippedRangedWeapon(slf);
	}
	else
	{
		return;
	};
	if(rangedWeapon.munition == ItRw_Arrow)
	{
		RANDAMMO = Hlp_Random(20);
		if(Npc_HasItems(slf,ItRw_Arrow) < 5)
		{
			CreateInvItems(slf,ItRw_Arrow,RANDAMMO);
		};
		if(Npc_HasItems(slf,ItRw_Arrow) > 20)
		{
			Npc_RemoveInvItems(slf,ItRw_Arrow,Npc_HasItems(slf,ItRw_Arrow));
		};
	}
	else if(rangedWeapon.munition == ItRw_Bolt)
	{
		RANDAMMO = Hlp_Random(15);
		if(Npc_HasItems(slf,ItRw_Bolt) < 5)
		{
			CreateInvItems(slf,ItRw_Bolt,RANDAMMO);
		};
		if(Npc_HasItems(slf,ItRw_Bolt) > 20)
		{
			Npc_RemoveInvItems(slf,ItRw_Bolt,Npc_HasItems(slf,ItRw_Bolt));
		};
	};
};

