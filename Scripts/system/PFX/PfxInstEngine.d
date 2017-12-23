
instance ZBLOOD1(C_PARTICLEFX)
{
	ppsvalue = 64;
	ppscreateem_s = "ZBLOOD1_SPLAT";
	dirmode_s = "DIR";
	dirfor_s = "object";
	dirangleheadvar = 30;
	dirangleelevvar = 30;
	velavg = 0.1;
	velvar = 0.05;
	lsppartavg = 750;
	lsppartvar = 550;
	flygravity_s = "0 -0.0001 0";
	visname_s = "BLOOD1.TGA";
	vistexcolorstart_s = "255 255 255";
	vistexcolorend_s = "255 255 255";
	vissizestart_s = "6 6";
	vissizeendscale = 1;
	visalphafunc_s = "BLEND";
	visalphastart = 255;
};

instance ZMODELLANDDUST(C_PARTICLEFX)
{
	ppsvalue = 8;
	shptype_s = "BOX";
	shpdim_s = "20 5 20";
	dirmode_s = "DIR";
	dirangleelev = 90;
	dirangleelevvar = 30;
	velavg = 0.03;
	velvar = 0.01;
	lsppartavg = 550;
	lsppartvar = 350;
	visname_s = "PUFF.TGA";
	vistexisquadpoly = 1;
	vistexcolorstart_s = "255 255 255";
	vistexcolorend_s = "255 255 255";
	vissizestart_s = "35 35";
	vissizeendscale = 1;
	visalphafunc_s = "ADD";
	visalphastart = 80;
};

instance ZMODELGATEDUST(C_PARTICLEFX)
{
	ppsvalue = 20;
	shptype_s = "BOX";
	shpdim_s = "20 5 20";
	dirmode_s = "DIR";
	dirangleelev = 90;
	dirangleelevvar = 30;
	velavg = 0.03;
	velvar = 0.01;
	lsppartavg = 1550;
	lsppartvar = 350;
	visname_s = "PUFF.TGA";
	vistexisquadpoly = 1;
	vistexcolorstart_s = "255 255 255";
	vistexcolorend_s = "255 255 255";
	vissizestart_s = "35 35";
	vissizeendscale = 1;
	visalphafunc_s = "ADD";
	visalphastart = 80;
};

instance ZBOWMAKEDUST(C_PARTICLEFX)
{
	ppsvalue = 8;
	shptype_s = "BOX";
	shpdim_s = "10 5 10";
	dirmode_s = "DIR";
	dirangleelev = 90;
	dirangleelevvar = 30;
	velavg = 0.03;
	velvar = 0.01;
	lsppartavg = 550;
	lsppartvar = 350;
	visname_s = "PUFF.TGA";
	vistexisquadpoly = 1;
	vistexcolorstart_s = "155 155 155";
	vistexcolorend_s = "155 155 155";
	vissizestart_s = "8 8";
	vissizeendscale = 1;
	visalphafunc_s = "ADD";
	visalphastart = 80;
};

instance TREEFDET(C_PARTICLEFX)
{
	ppsvalue = 15;
	ppsissmooth = 1;
	shptype_s = "CIRCLE";
	shpfor_s = "object";
	shpoffsetvec_s = "0 1 0";
	shpdistribtype_s = "RAND";
	shpisvolume = 1;
	shpdim_s = "50";
	dirmode_s = "DIR";
	dirangleheadvar = 60;
	dirangleelev = 90;
	dirangleelevvar = 60;
	velavg = 0.2;
	velvar = 0.05;
	lsppartavg = 500;
	lsppartvar = 200;
	flygravity_s = "0 -0.0005 0";
	visname_s = "NW_NATURE_ROOT_01.TGA";
	vistexisquadpoly = 1;
	vistexcolorstart_s = "255 255 255";
	vistexcolorend_s = "255 255 255";
	vissizestart_s = "15 15";
	vissizeendscale = 1;
	visalphafunc_s = "BLEND";
	visalphastart = 255;
	visalphaend = 255;
};

instance TREEFL(C_PARTICLEFX)
{
	ppsvalue = 15;
	ppsissmooth = 1;
	shptype_s = "CIRCLE";
	shpfor_s = "object";
	shpoffsetvec_s = "0 1 0";
	shpdistribtype_s = "RAND";
	shpisvolume = 1;
	shpdim_s = "50";
	shpscalekeys_s = "1";
	shpscaleislooping = 1;
	shpscaleissmooth = 1;
	shpscalefps = 2;
	dirmode_s = "DIR";
	dirfor_s = "object";
	dirangleheadvar = 30;
	dirangleelev = 90;
	dirangleelevvar = 30;
	velavg = 0.2;
	velvar = 0.05;
	lsppartavg = 10000;
	lsppartvar = 400;
	flygravity_s = "0 -0.0003 0";
	flycolldet_b = 0;
	visname_s = "LEAF_A0.TGA";
	visorientation_s = "NONE";
	vistexisquadpoly = 1;
	vistexanifps = 15;
	vistexaniislooping = 1;
	vistexcolorstart_s = "250 100 150";
	vistexcolorend_s = "250 100 150";
	vissizestart_s = "60 60";
	vissizeendscale = 1;
	visalphafunc_s = "BLEND";
	visalphastart = 255;
	visalphaend = 255;
	flockmode = "WIND2";
	flockstrength = 0.05;
	m_bisambientpfx = 1;
};

instance ZSKYNIGHT1(C_PARTICLEFX)
{
	ppsvalue = 1;
	shpdim_s = "800";
	velavg = 0.25;
	velvar = 0.05;
	lsppartavg = 2000;
	lsppartvar = 350;
	visname_s = "ZSPARK1.TGA";
	visorientation_s = "VELO";
	vistexcolorstart_s = "255 255 255";
	vistexcolorend_s = "255 255 255";
	vissizestart_s = "9 13";
	vissizeendscale = 1;
	visalphafunc_s = "ADD";
	visalphastart = 255;
};

instance ZUNDERWATER(C_PARTICLEFX)
{
	ppsvalue = 500;
	shptype_s = "BOX";
	shpisvolume = 1;
	shpdim_s = "500 500 500";
	lsppartavg = 1e+008;
	visname_s = "UNDERWATER_A0.TGA";
	vistexisquadpoly = 1;
	vistexanifps = 20;
	vistexcolorstart_s = "255 255 255";
	vistexcolorend_s = "255 255 255";
	vissizestart_s = "5 5";
	vissizeendscale = 1;
	visalphafunc_s = "ADD";
	visalphastart = 255;
	visalphaend = 255;
};

instance ZWATERRING(C_PARTICLEFX)
{
	ppsvalue = 1;
	ppsislooping = 0;
	dirmode_s = "RAND";
	lsppartavg = 2500;
	lsppartvar = 500;
	flycolldet_b = 0;
	visname_s = "WATERRING.TGA";
	visorientation_s = "VOB";
	vistexisquadpoly = 1;
	vistexanifps = 0;
	vistexaniislooping = 0;
	vistexcolorstart_s = "200 200 255";
	vistexcolorend_s = "200 255 255";
	vissizestart_s = "5 5";
	vissizeendscale = 5.07222;
	visalphafunc_s = "ADD";
	visalphastart = 80;
};

instance PFX_WATERSPLASH(C_PARTICLEFX)
{
	ppsvalue = 35;
	ppsscalekeys_s = "1";
	ppsissmooth = 1;
	ppsfps = 3;
	shptype_s = "CIRCLE";
	shpisvolume = 1;
	shpdim_s = "10 0 10";
	dirmode_s = "DIR";
	dirfor_s = "object";
	dirangleheadvar = 30;
	dirangleelev = 90;
	dirangleelevvar = 45;
	velavg = 0.2;
	velvar = 0.03;
	lsppartavg = 800;
	lsppartvar = 500;
	flygravity_s = "0 -0.0005 0";
	flycolldet_b = 3;
	visname_s = "WATERSPLASH1.TGA";
	visorientation_s = "VELO";
	vistexisquadpoly = 1;
	vistexaniislooping = 1;
	vistexcolorstart_s = "255 255 255";
	vistexcolorend_s = "150 200 255";
	vissizestart_s = "3 3";
	vissizeendscale = 8;
	visalphafunc_s = "ADD";
	visalphastart = 255;
};

