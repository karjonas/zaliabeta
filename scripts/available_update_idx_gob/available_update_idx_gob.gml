/// @description  available_update_idx_gob(check count)
function available_update_idx_gob(argument0) {


	with(g.go_mgr)
	{
	    var              _COUNT = min(argument0, ds_list_size(dl_gob1));
	    for(var _i=0; _i<_COUNT; _i++)
	    {
	        if(!instance_exists(dl_gob1[|_i]))
	        {   dl_gob1[|_i]  = noone;  }
        
	        if (dl_gob1[|_i] == noone) return _i;
	        if(!dl_gob1[|_i].state)    return _i;
	    }
	}


	return UIDX_NULL;







}
