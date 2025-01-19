/// @description  Projectile_update_1a(can despawn if off screen horizontally)
function Projectile_update_1a(argument0) {


	// MOD. Prevent from doing endless wave
	if (abs8b(vspd)&$7F >= vspd_MAX) vspd = byte(vspd_MAX*sign_(vspd<$80));
	//if (vspd&$7F >= vspd_MAX) vspd = vspd_MAX | (vspd&$80);

	// DED4
	updateX();
	updateY();

	GO_update_cam_vars();


	if (ocsHV1(id)) // ocsHV1: if (any width AND any height) are in ocs area
	//if !(ocs&$FC) // if (all width AND any height) are in ocs area
	{
	    Projectile_udd();
	    Projectile_collision_2a(); // REFLECTed projectile colision
	    Projectile_collision_1a();
	    //Projectile_update_2a(); // update draw data & collision
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}




	if (argument0   // can despawn if off screen horizontally
	|| !ocsV1(id) ) // ocsV1: Return true if any height is w/in ocs area height.
	//||  ocs>=$E0 )    // (ocs>=$E0): height NOT w/in ocs areaheight
	{
	    state = 0;
	}







}
