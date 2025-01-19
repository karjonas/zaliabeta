/// @description  update_pc_proj()
function update_pc_proj() {


	// 9878
	for(var _i=ds_list_size(g.go_mgr.dl_goc2)-1; _i>=0; _i--)
	{
	    if(!g.go_mgr.dl_goc2[|_i].state) continue; // >>>>>>>>>>>>>>>>>>>>>
    
    
	    // -------------------------------------------------------
	    // -----------------------------------------------
	    with(g.go_mgr.dl_goc2[|_i])
	    {
	        if (state)
	        {
	            if (timeout) timeout=(timeout+1)&$FF;
	        }
        
        
	        switch(state)
	        {   // -------------------------------------------------------
	            // -----------------------------------------------
	            case state_NORMAL:{
	            BodyHB_can_draw = true;
            
	            // 9895
	            switch(TypeID)
	            {
	                case TypeID_BEAM:{
	                if (timeout==CUE1)
	                {   // 98BD
	                    disintegrate_counter = timeout;
	                    state = state_EXPLODE;
	                }
	                else
	                {   // 98A6
	                    update_pc_proj_1b();
	                }
	                //if (timeout) timeout=(timeout+1)&$FF;
	                break;}
                
	                case TypeID_FIRE:{
	                aud_play_fire(true); // Fireball
	                update_pc_proj_1b();
	                break;}
	            }
	            break;}
            
            
            
            
            
	            // -------------------------------------------------------
	            // -----------------------------------------------
	            case state_EXPLODE:{  // 9908: JSR 98A6
	            update_pc_proj_1b();
	            usd_pc_proj_1b();
            
	                disintegrate_counter = (disintegrate_counter+2)&$FF;
	            if(!disintegrate_counter)
	            {
	                disintegrate_counter = 0;
	                state = 0;
	            }
	            break;}
	        }
	    }
	}







}
