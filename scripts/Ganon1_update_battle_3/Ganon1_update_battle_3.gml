/// @description  Ganon1_update_battle_3()
function Ganon1_update_battle_3() {


	if(!Ganon1_cs4())
	{
	    if(!off_ground_reason)
	    {   off_ground_reason=OGR_OTHR;  }
    
	    vspd_grav = 2;
	    if (vspd<$80)
	    {   vspd = min(vspd, TERMINAL_VELOCITY);  }
	    updateY();
	    GO_update_cs();
	    return false;
	}
	else
	{
	    off_ground_reason = 0;
	    set_xy(id, x,Ground_y-hh_);
	    GO_update_cs();
	    return true;
	}

	return true;







}
