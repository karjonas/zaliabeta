/// @description  PC_update_1d()
function PC_update_1d() {


	// 938A
	     if (hspd&$80) hspd_dir = -1;
	else if (hspd)     hspd_dir =  1;

	     if (vspd&$80) vspd_dir = -1;
	else if (vspd)     vspd_dir =  1;

	// 9395: JSR E070
	PC_update_1c(); // update cs, swamp walk, crumble bridge, drown, pushable, exiting

	// 9398
	if (cs&$3) hspd = 0;







}
