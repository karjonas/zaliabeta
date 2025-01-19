/// @description  NPC_B_update_1()
function NPC_B_update_1() {

	// For pogo minigame


	if(!g.pc.ogr)
	{
	    if (g.pc.xr >= Goal_XL 
	    &&  g.pc.yb <= Goal_YB )
	    {   // Player made it to the goal
	        prize_num = 1;
        
	        timer     = 0;
	        sub_state = sub_state_POST_GAME1;
	        exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	    }
    
    
    
	    if(!Minigame_timer)
	    {   // Player has NOT made it to the goal in time.
	        timer     = 0;
	        sub_state = sub_state_POST_GAME1;
	        exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	    }
	}







}
