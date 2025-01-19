/// @description  Enemy_update_2()
function Enemy_update_2() {

	// Used by: Aruroda, Zora


	// 9B09. $00-3F, 80-BF
	if (counter&$40) // $40: 1.067s. During every other quarter of a byte
	{
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}


	if!(counter&$3F) // 1st frame of move period
	{
	    // Decide hspd for this move period
	    var            _C1  = $18;
	    if(!facingDir) _C1 += $10;
	                   _C1  = wINwAll(x-_C1,$30, 0,cam_x_range());
	    //
	    if (counter&$80 
	    &&  _C1 )
	    {    frwd_bkwd = -facingDir;  } // go backwards
	    else frwd_bkwd =  facingDir;    // go forwards
	}

	if (frwd_bkwd) hspd =  ($08*facingDir)&$FF;        // go forwards
	else           hspd = (($10*facingDir)&$FF) ^ $FF; // go backwards







}
