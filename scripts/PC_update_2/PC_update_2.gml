/// @description  PC_update_2()
function PC_update_2() {


	// D513
	if (landing_timer)
	{
	    landing_timer--;
    
	    if (1) // MOD. Don't crouch if holding item
	    {   if(!HoldItem_timer) PC_set_behavior(behavior_CROUCH);  }
	    else                    PC_set_behavior(behavior_CROUCH);
	}



	// D51F
	if (g.mod_PCUpdate1)
	{   // MOD -----------------------------------------
	    // D52D: JSR EBF0   - camX, ocs, udp, update_swrdXY
	    PC_update_2a();
    
	    // D530             - scs (sword collide solid)
	    PC_update_2b();
	}
	else
	{   // OG. This will skip things like GO_update_cam_vars() and 
	    // scs update every other frame when invulnerable_timer==1,2
	    if (!inRange(g.tmr_invulnerable, 1,2)  // if 0,3,4
	    ||  !(g.timer0&$1) )                   // Transparent effect
	    {
	        // D52D: JSR EBF0   - camX, ocs, swrdXY_base, udp
	        PC_update_2a();
        
	        // D530             - scs (sword collide solid)
	        PC_update_2b();
	    }
	}




	// ---------------------------------------------
	update_explored_data();







}
