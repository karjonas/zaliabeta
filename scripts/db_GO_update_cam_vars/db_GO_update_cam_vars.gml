/// @description  db_GO_update_cam_vars(str x OR y, array idx, value)
function db_GO_update_cam_vars(argument0, argument1, argument2) {

	if(!g.can_draw_ocs) exit; // !!!!!!!!!!!!!!!!!!!!


	     if (argument0 == "x")
	{   ocs_draw_x[clamp(argument1,0,array_length_1d(ocs_draw_x)-1)] = argument2;   }
	else if (argument0 == "y")
	{   ocs_draw_y[clamp(argument1,0,array_length_1d(ocs_draw_y)-1)] = argument2;   }







}
