/// @description  ShadowBoss_update_1a()
function ShadowBoss_update_1a() {

	// ShadowBoss ------------------


	// 992C
	if (g.dl_RandomOG[|2]&$3)
	{
	    if (x>=arena_x) hspd = (-$18)&$FF;
	    else            hspd = ( $18)&$FF;
	}
	else                hspd = 0;

	vspd      = $FC;
	ogr       = OGR_JUMP;
	//ogr       = OGR_OTHR;
	down_held = 0;

	/*
	// 992C
	if (g.og_rnd[2] & 3)
	{
	                         hspd = $18;
	    if ((xx + $C) & $80) hspd = byte(-hspd);
	}
	else                     hspd = 0;

	vspd      = $FC;
	offGround = 1;
	dHeld     = 0;
	*/







}
