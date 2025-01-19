/// @description  Megmat_update()
function Megmat_update() {


	if (stun_timer)
	{
	    GOB_update_2();
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}


	// -------------------------------------------------------
	// -------------------------------------------------------
	// -------------------------------------------------------
	// 987E: JSR DA02, 9881
	if (cs&$8)
	{
	    vspd = 0;
	    set_xy(id, x,y+1);
	}


	// 988C
	if (cs&$3)
	{
	    facingDir = -facingDir;
	    hspd      = (-hspd)&$FF;
	}

	updateX();


	// 9898
	if (cs&$4)
	{
	    facingDir = dir_to_pc(id);
    
	    hspd = ($8*facingDir) &$FF;
	    vspd = $FB + (rand()&$1);
	}


	// 98B2
	updateY2($30, $30);

	//prevent_fall_off_side(id);

	GO_update_cs();

	GOB_update_2();
	if (cs&CS_BD1) enemy_collide_pc_body();







}
