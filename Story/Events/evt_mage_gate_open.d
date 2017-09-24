
var int mage_gate_onetime;

func void evt_mage_gate_open()
{
	var C_Npc Milten;
	Milten = Hlp_GetNpc(PC_Mage_OW);
	if(MAGE_GATE_ONETIME == FALSE)
	{
		B_StartOtherRoutine(Milten,"GATEOPEN");
		MAGE_GATE_ONETIME = TRUE;
	};
};

