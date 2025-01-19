/// @description  PlatformRaft_init_1()
function PlatformRaft_init_1() {


	if(!f.items&ITM_RAFT)
	{
	    instance_destroy();
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}


	var _i, _a;

	Platform_init_1();


	hspd_dir    =  1;
	hspd1       =  0;
	hspd        = hspd1;

	vspd_dir    =  1;
	vspd1       =  0;
	vspd        = vspd1;


	x_prev      =  x;
	y_prev      =  y;


	BodyHB_idx = BodyHB_IDX;


	                      _a=0;
	dock_state_DOCKED0  = _a++; // Docked and waiting for player to get on
	dock_state_DOCKED1  = _a++; // Docked and waiting for player to get off
	dock_state_FREE0    = _a++; // Moving freely, not expecting to dock.
	dock_state_FREE1    = _a++; // Moving freely, expecting to dock
	dock_state          = dock_state_FREE0;

	dock_xc = 0;







}
