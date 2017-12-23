
func void b_clearsmithinv(var C_Npc self)
{
	if(Hlp_GetInstanceID(self) != Hlp_GetInstanceID(hero))
	{
		Npc_RemoveInvItems(self,ItMiSwordraw,Npc_HasItems(self,ItMiSwordraw));
		Npc_RemoveInvItems(self,ItMiSwordrawhot,Npc_HasItems(self,ItMiSwordrawhot));
		Npc_RemoveInvItems(self,ItMiSwordbladehot,Npc_HasItems(self,ItMiSwordbladehot));
		Npc_RemoveInvItems(self,ItMiSwordblade,Npc_HasItems(self,ItMiSwordblade));
		Npc_RemoveInvItems(self,itmi_pliers_armr,Npc_HasItems(self,itmi_pliers_armr));
		Npc_RemoveInvItems(self,itmi_pliers_smlt,Npc_HasItems(self,itmi_pliers_smlt));
		Npc_RemoveInvItems(self,itmi_pliers_smlt_2,Npc_HasItems(self,itmi_pliers_smlt_2));
		Npc_RemoveInvItems(self,ItMi_PanFull,Npc_HasItems(self,ItMi_PanFull));
		Npc_RemoveInvItems(self,itmi_branch,Npc_HasItems(self,itmi_branch));
		if(Hlp_GetInstanceID(self) != Hlp_GetInstanceID(Bronko))
		{
			Npc_RemoveInvItems(self,ItMw_2h_Bau_Axe,Npc_HasItems(self,ItMw_2h_Bau_Axe));
		};
	};
};

func void b_clearalchemyinv(var C_Npc slf)
{
	var C_Npc her;
	her = Hlp_GetNpc(PC_Hero);
	if(Hlp_GetInstanceID(slf) != Hlp_GetInstanceID(her))
	{
		Npc_RemoveInvItems(slf,ItMi_Flask,Npc_HasItems(slf,ItMi_Flask));
	};
};

func void b_clearbonusfoodinv(var C_Npc slf)
{
	var C_Npc her;
	her = Hlp_GetNpc(PC_Hero);
	if(Hlp_GetInstanceID(slf) != Hlp_GetInstanceID(her))
	{
		if(slf.aivar[89] == TRUE)
		{
			Npc_RemoveInvItems(slf,ItFo_Apple,Npc_HasItems(slf,ItFo_Apple));
		}
		else
		{
			slf.aivar[89] = TRUE;
		};
		if(slf.guild == GIL_PAL)
		{
			Npc_RemoveInvItems(slf,ItPl_Dex_Herb_01,Npc_HasItems(slf,ItPl_Dex_Herb_01));
		};
	};
};

