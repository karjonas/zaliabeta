/// @description  GOB_is_out_of_bounds_y(inst id)
function GOB_is_out_of_bounds_y(argument0) {

	// Same as OG: if (yt > $FF)


	return argument0.yt >= cam_yb_max()+($3<<3);







}
