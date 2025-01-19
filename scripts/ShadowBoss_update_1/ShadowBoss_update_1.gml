/// @description  ShadowBoss_update_1()
function ShadowBoss_update_1() {



	// ShadowBoss ------------------


	// 9A0F: JSR DC91
	// 9A12
	xScale = dir_to_pc_(id);


	var                  _ocs  = $0;
	if (x-8 <  viewXL()) _ocs |= $8;
	if (x+8 >= viewXR()) _ocs |= $1;

	if (_ocs  // Off Camera State
	&& !ogr )
	{   // 9A2A
	    g.dl_RandomOG[|2] = 3;
	    // 9A2F: JSR 992C - Jump
	    ShadowBoss_update_1a();
	}



	var _HSPD_DIR = $1 + sign(hspd&$80); // $1(right), $2(left)

	if(!_ocs  // NOT against view edge
	|| (_ocs>>3)+1 != _HSPD_DIR ) // hspd dir NOT same as view edge
	{   // 9A3C: JSR DEB8
	    updateX();
	}

	// 9A3F
	updateY2(GRAV_ADD, TERMINAL_VELOCITY);





	/*
	/// Boss_update_6a()

	// ShadowBoss ------------------


	// 9A0F: JSR DC91
	facingDir = dir_to_pc_(id);

	// 9A12
	xScale = facingDir;

	if (hspd & $80)  facingDir = -1;
	else             facingDir =  1;

	var             _facingDir =  2;
	if (facingDir)  _facingDir =  1;


	var                    _ocs  = 0;
	if (x - 8 <  viewXL()) _ocs |= 8;
	if (x + 8 >= viewXR()) _ocs |= 1;

	// var _ocs = ocs & 9;
	if (_ocs 
	&& !ogr )
	{
	    // 9A2A
	    g.ar_rand[2] = 3;
    
	    // 9A2F: JSR 992C - Jump
	    Boss_update_6b();
	}

	if (!_ocs 
	|| ((_ocs>>3)+1) != _facingDir )
	{
	    // 9A3C: JSR DEB8
	    updateX();
	}

	// 9A3F
	updateY2(GRAV_ADD, TERM_VEL);
	*/







}
