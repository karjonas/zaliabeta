/// @description  Challenge_LightTorchesA_update()
function Challenge_LightTorchesA_update() {


	switch(sub_state)
	{
	    // ------------------------------------------------------------------
	    // ------------------------------------------------------------------
	    // ------------------------------------------------------------------
	    case SUB_STATE_INCM_1:{ // INCM: Incomplete
	    if (timer) timer--;
	    if (timer) break;
    
	    var _complete = true;
	    for(var _i=(ds_grid_width(dg_torches))-1; _i>=0; _i--)
	    {
	            dg_torches[#_i,1] = dg_torches[#_i,0].is_lit;
	        if(!dg_torches[#_i,1]) _complete = false;
	    }
    
	    if(!_complete) break;
    
    
	    f.dm_challenges[?challenge_id+STR_Complete] = 1;
	    timer = DUR_DELAY_CMP2;
    
    
	    sub_state = SUB_STATE_CMPL_1;
	    break;}
    
    
    
    
	    // ------------------------------------------------------------------
	    // ------------------------------------------------------------------
	    // ------------------------------------------------------------------
	    case SUB_STATE_CMPL_1:{ // CMPL: Complete
	    if (timer) timer--;
	    if (timer) break;
    
	    if (locked_door) locked_door.counter = -1; // Starts opening process
    
    
	    timer = DUR_DELAY_CMP2;
    
    
	    sub_state = SUB_STATE_CMPL_2;
	    break;}
    
    
    
    
	    // ------------------------------------------------------------------
	    // ------------------------------------------------------------------
	    // ------------------------------------------------------------------
	    case SUB_STATE_CMPL_2:{
	    if (timer) timer--;
	    if (timer) break;
    
    
	    sub_state = SUB_STATE_CMPL_3;
	    break;}
    
    
    
    
	    // ------------------------------------------------------------------
	    // ------------------------------------------------------------------
	    // ------------------------------------------------------------------
	    case SUB_STATE_CMPL_3:{
	    if (timer) timer--;
	    if (timer) break;
    
    
	    break;}
	}







}
