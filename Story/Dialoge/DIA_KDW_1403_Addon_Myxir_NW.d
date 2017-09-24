
instance DIA_Addon_Myxir_EXIT(C_Info)
{
	npc = KDW_1403_Addon_Myxir_NW;
	nr = 999;
	condition = DIA_Addon_Myxir_EXIT_Condition;
	information = DIA_Addon_Myxir_EXIT_Info;
	permanent = TRUE;
	description = Dialog_Ende;
};


func int DIA_Addon_Myxir_EXIT_Condition()
{
	return TRUE;
};

func void DIA_Addon_Myxir_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_Addon_Myxir_Hallo(C_Info)
{
	npc = KDW_1403_Addon_Myxir_NW;
	nr = 5;
	condition = DIA_Addon_Myxir_Hallo_Condition;
	information = DIA_Addon_Myxir_Hallo_Info;
	description = "Everything all right?";
};


func int DIA_Addon_Myxir_Hallo_Condition()
{
	return TRUE;
};

func void DIA_Addon_Myxir_Hallo_Info()
{
	AI_Output(other,self,"DIA_Addon_Myxir_Hallo_15_00");	//Everything all right?
	AI_Output(self,other,"DIA_Addon_Myxir_Hallo_12_01");	//It's very brave of you to just walk in here.
};


instance DIA_Addon_Myxir_WasMachstDu(C_Info)
{
	npc = KDW_1403_Addon_Myxir_NW;
	nr = 5;
	condition = DIA_Addon_Myxir_WasMachstDu_Condition;
	information = DIA_Addon_Myxir_WasMachstDu_Info;
	description = "What are you doing here?";
};


func int DIA_Addon_Myxir_WasMachstDu_Condition()
{
	if(Npc_KnowsInfo(other,DIA_Addon_Myxir_Hallo))
	{
		return TRUE;
	};
};

func void DIA_Addon_Myxir_WasMachstDu_Info()
{
	AI_Output(other,self,"DIA_Addon_Myxir_WasMachstDu_15_00");	//What are you doing here?
	AI_Output(self,other,"DIA_Addon_Myxir_WasMachstDu_12_01");	//I'm studying the language of the builders.
	AI_Output(self,other,"DIA_Addon_Myxir_WasMachstDu_12_02");	//The language is the key to understanding the ancient people.
	AI_Output(self,other,"DIA_Addon_Myxir_WasMachstDu_12_03");	//Each one of us must learn it, or this expedition will be over before it even begins.
	AI_Output(self,other,"DIA_Addon_Myxir_WasMachstDu_12_04");	//The builders used stone tablets to pass on their knowledge. Unfortunately, many of them are broken or were stolen long ago.
};


instance DIA_Addon_Myxir_WillYouTeachMe(C_Info)
{
	npc = KDW_1403_Addon_Myxir_NW;
	nr = 10;
	condition = DIA_Addon_Myxir_WillYouTeachMe_Condition;
	information = DIA_Addon_Myxir_WillYouTeachMe_Info;
	description = "Can you teach me to read the language of the architects?";
};


func int DIA_Addon_Myxir_WillYouTeachMe_Condition()
{
	if(Npc_KnowsInfo(other,DIA_Addon_Myxir_WasMachstDu))
	{
		return TRUE;
	};
};

func void DIA_Addon_Myxir_WillYouTeachMe_Info()
{
	AI_Output(other,self,"DIA_Addon_Myxir_WillYouTeachMe_15_00");	//Can you teach me to read the language?
	AI_Output(self,other,"DIA_Addon_Myxir_WillYouTeachMe_12_01");	//Well. Why not? I'll gladly pass on my knowledge to you.
	Myxir_Addon_TeachPlayer = TRUE;
};


instance DIA_Addon_Myxir_Teach(C_Info)
{
	npc = KDW_1403_Addon_Myxir_NW;
	nr = 90;
	condition = DIA_Addon_Myxir_Teach_Condition;
	information = DIA_Addon_Myxir_Teach_Info;
	permanent = TRUE;
	description = "Teach me that language.";
};


var int DIA_Addon_Myxir_Teach_NoPerm;

func int DIA_Addon_Myxir_Teach_Condition()
{
	if((Myxir_Addon_TeachPlayer == TRUE) && (DIA_Addon_Myxir_Teach_NoPerm == FALSE))
	{
		return TRUE;
	};
};

func void DIA_Addon_Myxir_Teach_Info()
{
	AI_Output(other,self,"DIA_Addon_Myxir_TeachRequest_15_00");	//Teach me that language.
	if(KNOW_FOREIGNLANGUAGE == FALSE)
	{
		b_dia_addon_myxir_teach_fl();
		B_DIA_Addon_Myxir_Teach_LANGUAGE_X();
		AI_PrintScreen("Learn: Language of the builders",-1,-1,FONT_SCREENBRIGHTLARGE,3);
		Info_ClearChoices(DIA_Addon_Myxir_Teach);
		KNOW_FOREIGNLANGUAGE = TRUE;
	}
	else
	{
		B_DIA_Addon_Myxir_TeachNoMore();
		DIA_Addon_Myxir_Teach_NoPerm = TRUE;
	};
};

