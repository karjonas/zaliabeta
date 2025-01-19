/// @description  GOB_rm_end_clean_up_1()
function GOB_rm_end_clean_up_1() {

	// Gives permission for any remaining GOB to spawn if pc comes back to this rm


	// E18A
	var _i;

	for(_i=ds_list_size(g.go_mgr.dl_gob1)-1; _i>=0; _i--)
	{
		if (is_undefined(   g.go_mgr.dl_gob1[|_i]) 
	    || !instance_exists(g.go_mgr.dl_gob1[|_i]) )
	    {
	        continue;//_i
	    }
    
	    with(g.go_mgr.dl_gob1[|_i])
	    {
	        if (state)
	        {
	            GOB_despawn(id);
	            // Not sure why this sets the state to 1 since 
	            // this function is called when exiting a room
	            state = state_NORMAL;
	        }
	    }
	}


	for(_i=ds_list_size(g.go_mgr.dl_gob2)-1; _i>=0; _i--)
	{
        if (is_undefined(   g.go_mgr.dl_gob2[|_i]) 
	    || !instance_exists(g.go_mgr.dl_gob2[|_i]) )
	    {
	        continue;//_i
	    }
    
	    with(g.go_mgr.dl_gob2[|_i])
	    {
	        if (state 
	        && !is_undefined(dk_spawn) )
	        {
	            g.dm_spawn[? dk_spawn+STR_Spawn_Permission] = 1;
	        }
	    }
	}







}
