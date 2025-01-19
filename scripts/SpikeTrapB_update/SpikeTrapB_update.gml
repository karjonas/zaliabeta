/// @description  SpikeTrapB_update()
function SpikeTrapB_update() {


	updateX();
	updateY();


	cs_off_idx = CS_OFF_IDX+1; // cs lft/rgt are +4 below inst to check if no solid ground is its path.
	GO_update_cs();
	var _CSB = cs;

	cs_off_idx = CS_OFF_IDX;
	GO_update_cs();
	var _CSA = cs;



	if (_CSA&$4)
	{
	    solid_clip_correction(false);
	    vspd = 0;
	}



	if (  _CSA&$3 
	|| (!(_CSB&$3) && ver==2) ) // At platform edge, turn around.
	{
	    var _VAL = ( (_CSA&$3)&&(_CSA&$2)) 
	            || (!(_CSA&$3)&&(!hspd_dir));
	    var _X  = ((x>>3)+_VAL)<<3;
	        _X += (csLft1_xoff+1) * -sign_(_VAL); // Trying to prevent 'jolt' like movement on the turn around
	    //
    
	    set_xy(id, _X, y);
	    GO_update_cs();
    
	    hspd     = byte_negate(hspd);
	    hspd_dir = byte_dir(   hspd);
	}



	GOB_update_2();
	if (cs&CS_BD1) enemy_collide_pc_body();



	SpikeTrap_out_of_bounds(id);







}
