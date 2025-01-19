/// @description  Challenge_DefeatAllA_update()
function Challenge_DefeatAllA_update() {


	// -----------------------------------------------------------------------
	switch(sub_state)
	{
	    // -------------------------------------------------------
	    case SUB_STATE_INCM_1: { // INCoMplete
    
	    if (timer) timer--;
	    if (timer) break;
    
    
	    var _complete = true;
    
	    for(var _i=ds_grid_width(dg_status)-1; _i>=0; _i--)
	    {
	        if (is_undefined(   dg_status[#_i,0]) 
	        || !instance_exists(dg_status[#_i,0]) 
	        ||                 !dg_status[#_i,0].state )
	        {
	            dg_status[#_i,2] = 1; // is defeated
	        }
	        else
	        {
	            _complete = false;
	        }
	    }
    
    
    
	    if(!_complete) break; // switch (sub_state)
    
    
    
	    f.dm_challenges[?challenge_id+STR_Complete] = 1;
	    timer = DUR_DELAY_CMP2;
    
    
	    sub_state = SUB_STATE_CMPL_1;
	    break;  }
    
    
    
    
	    // -------------------------------------------------------
	    case SUB_STATE_CMPL_1: {
    
	    if (timer) timer--;
	    if (timer) break;
    
    
	    if (locked_door)
	    {   locked_door.counter = -1;  } // Starts opening process
    
    
	    timer = DUR_DELAY_CMP2;
    
    
	    sub_state = SUB_STATE_CMPL_2;
	    break;  }
    
    
    
    
	    // -------------------------------------------------------
	    case SUB_STATE_CMPL_2: {
    
	    if (timer) timer--;
	    if (timer) break;
    
    
	    sub_state = SUB_STATE_CMPL_3;
	    break;  }
    
    
    
    
	    // -------------------------------------------------------
	    case SUB_STATE_CMPL_3: {
    
	    if (timer) timer--;
	    if (timer) break;
    
    
	    break;  }
	}







}
