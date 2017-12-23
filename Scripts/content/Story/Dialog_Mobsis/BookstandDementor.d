
func void Use_BookstandDementor_S1()
{
	var int nDocID;
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
	{
		nDocID = Doc_Create();
		Doc_SetPages(nDocID,2);
		Doc_SetPage(nDocID,0,"Book_Dementor_L.tga",0);
		Doc_SetPage(nDocID,1,"Book_Dementor_R.tga",0);
		Doc_Show(nDocID);
		B_Say(self,self,"$CANTREADTHIS");
	};
};

