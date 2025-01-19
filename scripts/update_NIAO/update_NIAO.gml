/// @description  update_NIAO()
function update_NIAO() {

	// NIAO: Non-Interactable Animated Object


	for(var _i=ds_list_size(g.dl_niao)-1; _i>=0; _i--)
	{
	    with(g.dl_niao[|_i])
	    {
	        if(!state) break;//_i
        
	        if(!is_undefined(  scr_update))
	        {   script_execute(scr_update);  }
        
	        if(!is_undefined(  scr_udp))
	        {   script_execute(scr_udp);  }
	    }
	}







}
