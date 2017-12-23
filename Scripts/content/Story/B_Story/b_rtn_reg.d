
func void b_rtn_reg(var C_Npc self)
{
	if((self.attribute[ATR_HITPOINTS] >= 1) && (self.attribute[ATR_HITPOINTS] < self.attribute[ATR_HITPOINTS_MAX]))
	{
		Npc_ChangeAttribute(self,ATR_HITPOINTS,1);
	};
};

