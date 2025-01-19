/// @description  GOB_update_2()
function GOB_update_2() {


	// DE40
	GO_update_cam_vars();

	// DE46
	if (GOB_is_out_of_bounds_y(id)) // Same as OG: if (yt>$FF)
	{   // DD3D
	    if (is_ancestor(object_index,Item)) state = 0;
	    else GOB_despawn(id); // set state=0 && spawn permision=1
	}
	else if (ocsHV1(id)) // if any w AND h in ocs area
	{   // DE51: JSR EF11
	    update_EF11();
	    // DE54 & DE6C, DD3D. Despawn check
	    GOB_update_2a(); // GOB body to proj/sword/body collision checks
	}
	else
	{
	    cs &= $F;
	    // DE6C, DD3D. Despawn check
	    GOB_update_2b();
	}







}
