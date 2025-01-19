/// @description  set_xy_len_ang(instance id, start x, start y, length, angle)
function set_xy_len_ang(argument0, argument1, argument2, argument3, argument4) {


	set_xy(argument0, 
	       argument1 + round(lengthdir_x(argument3,argument4)), 
	       argument2 + round(lengthdir_y(argument3,argument4)) );
	//







}
