/// @description  Ganon1_update_battle_1()
function Ganon1_update_battle_1() {


	if(!Ganon1_cs4())
	{
	    if (vspd<$80)
	    {   vspd = min(vspd, TERMINAL_VELOCITY);  }
	    updateY();
	    GO_update_cs();
    
	    if(!off_ground_reason)
	    {   off_ground_reason =OGR_OTHR;  }
    
	    if (off_ground_reason==OGR_JUMP 
	    &&  vspd<$80 )
	    {
	        Ganon1_update_battle_2(); // pc body-to-body damage
	    }
	}
	else
	{
	    if (vspd&$80)
	    {
	        updateY();
	        GO_update_cs();
	    }
	    else
	    {
	        set_xy(id, x,Ground_y-hh_);
	        if (off_ground_reason)
	        {
	            off_ground_reason = 0;
	            return true;
	        }
	    }
	}


	return false;







}
