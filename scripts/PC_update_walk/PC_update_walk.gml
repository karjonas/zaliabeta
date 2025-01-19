/// @description  PC_update_walk()
function PC_update_walk() {


	// 943D, 943F
	var _val = 1;

	if(!ogr)
	{
	    _val = hspd;
    
	    if (cs&$3 
	    && !stun_timer 
	    && !g.EnterRoom_control_timer )
	    {
	        if (Input.heldH) _val = 5;
	        else             _val = 0;
	    }

	    // 9444, 9448, 9453
	    if (_val 
	    && !g.WalkAnim_timer )
	    {
	        var _IDX = (abs8b(_val)>>3) &$3; // = 0,1,2,3
	        g.WalkAnim_timer = g.dl_WalkAnim_DURATION[|_IDX]; // [8,7,5,4]
        
	        if (walk_frame<2) walk_frame++;
	        else              walk_frame = 0;
	    }
	}

	// 9468
	if(!ogr 
	&& !_val )
	{    PC_set_behavior(behavior_IDLE);  }
	else PC_set_behavior(behavior_WALK1 + walk_frame);
	//if (g.WalkAnim_timer==1 && g.pc_lock==PC_LOCK_ALL) sdm("hspd $"+hex_str(hspd)+", _val $"+hex_str(_val)+", behavior $"+hex_str(behavior));







}
