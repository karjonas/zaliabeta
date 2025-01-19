/// @description  updateY2(gravity add, terminal velocity)
function updateY2(argument0, argument1) {


	// D19B
	var _Y_CHANGE = vspd - ((vspd&$80)<<1);

	set_xy(id, x, y+_Y_CHANGE);

	y_change += _Y_CHANGE;

	vspd_grav += argument0; // argument0: gravity add
	vspd      += vspd_grav>$FF;
	vspd_grav &= $FF;
	vspd      &= $FF;

	if (vspd<$80 
	&&  vspd>=argument1 ) // argument1: terminal velocity
	{
	    vspd_grav = 0;
	}







}
