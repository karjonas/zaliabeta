/// @description  update_pc_proj_1b()
function update_pc_proj_1b() {


	// 98A6, 98AB: JSR D1CE
	updateX();

	// 98B0: JSR F27D
	GO_update_cam_vars();


	// 98B3
	// 230707: changed 'if (ocsHV3(id))' to 'if (ocsH4(id))' to prevent extra beam sound when above view
	if (ocsH4(id)) // ocsH4: if at least HALF width is w/in ocs area width
	//if (ocsHV3(id)) // ocsHV3: if (at least HALF width AND ANY height) are in ocs area
	{   // 98C0
	    usd_pc_proj_1a();
	}
	else
	{   // 98BB
	    disintegrate_counter = 0;
	    state = 0;
	}







}
