/// @description  NIAO_Room_End()
function NIAO_Room_End() {


	var _o;
	for (var i = ds_list_size(g.dl_niao)-1; i >= 0; i--)
	{
	    if (g.dl_niao[| i])
	    {
	        with (g.dl_niao[| i]) 
	        {
	            // rmen: Room_End
	            if (!is_undefined( scr_room_end) 
	            &&  script_exists( scr_room_end) ) 
	            {   script_execute(scr_room_end);  }
	        }
        
	        instance_destroy(g.dl_niao[| i]);
	    }
    
	    g.dl_niao[| i] = 0;
	}








}
