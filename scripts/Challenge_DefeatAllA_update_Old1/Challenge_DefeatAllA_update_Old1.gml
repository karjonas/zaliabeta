/// @description  Challenge_DefeatAllA_update()
function Challenge_DefeatAllA_update_Old1() {


	// -----------------------------------------------------------------------
	switch (sub_state)
	{
	    // -------------------------------------------------------
	    case SUB_STATE_INCM_1: { // INCoMplete
    
	    if (timer) timer--;
	    if (timer) break;
    
    
	    var _complete = true;
	    var _dk  = "";
	    var _inst;
	    var _COUNT = ds_grid_width(dg_status);
	    var i;
    
    
	    // First make sure all enemies have spawned
	    for (i = 0; i < _COUNT; i++)
	    {
	        _dk = dg_status[# i,1];
	        if (  dg_status[# i,2]) continue; // 0: NOT spawned yet, 1: Has spawned.
        
	        with (GOB1)
	        {
	            if (dk_spawn == _dk)
	            {
	                other.dg_status[# i,2] = 1; // Indicate enemy has spawned
	                other.dg_status[# i,0] = id;
	                break; // with (GOB1)
	            }
	        }
	    }
    
    
	    // Make sure all enemies have both spawned and are defeated
	    for (i = 0; i < _COUNT; i++)
	    {
	        _inst = dg_status[# i,0];
	        if(    !dg_status[# i,2]    // if NOT spawned yet
	        // ||  (instance_exists(_inst) && _inst.state)  // if NOT defeated yet
	        ||      dg_status[# i,3] >= val(f.dm_quests[? STR_Defeated+"_"+dg_status[# i,1]]) )
	        {
	            _complete = false;
	            break; // for
	        }
	    }
    
    
    
	    if(!_complete) break; // switch (sub_state)
    
    
    
	    f.dm_challenges[? challenge_id+STR_Complete] = 1;
	    timer = DUR_DELAY_CMP2;
    
    
	    sub_state = SUB_STATE_CMPL_1;
	    break;  }
    
    
    
    
	    // -------------------------------------------------------
	    case SUB_STATE_CMPL_1: {
    
	    if (timer) timer--;
	    if (timer) break;
    
    
	    if (locked_door) locked_door.counter = -1; // Starts opening process
    
    
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
