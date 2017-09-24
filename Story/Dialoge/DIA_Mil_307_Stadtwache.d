instance DIA_Mil_307_Tuerwache_EXIT(C_Info)
{
  npc = Mil_307_Tuerwache;
  nr = 999;
  condition = DIA_Mil_307_Tuerwache_EXIT_Condition;
  information = DIA_Mil_307_Tuerwache_EXIT_Info;
  permanent = TRUE;
  description = Dialog_Ende;
};

func int DIA_Mil_307_Tuerwache_EXIT_Condition()
{
  return TRUE;
};

func void DIA_Mil_307_Tuerwache_EXIT_Info()
{
  AI_StopProcessInfos(self);
};
