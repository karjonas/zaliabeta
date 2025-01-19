/// @description  PC_update_2a()
function PC_update_2a() {


	// EBF0
	if (in_restore_house) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!



	// EBFF: JSR F27D
	GO_update_cam_vars();


	// EC02
	if (g.mod_PCUpdate1)
	{   // MOD -----------------------------------------
	    if(!inRange(iframes_timer,1,2)  // if 0,3,4
	    || !(g.counter1&$1) )           // Transparent effect
	    {
	        PC_udp();
	    }
	}
	else
	{   // OG
	    PC_udp();
	}



	// EC7F
	PC_update_SwordHB_xy();






}
