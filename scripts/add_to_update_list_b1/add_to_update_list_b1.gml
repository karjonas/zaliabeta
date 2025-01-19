/// @description  add_to_update_list_b1(id)
function add_to_update_list_b1(argument0) {


	var _update_idx = UIDX_NULL;

	with(g.go_mgr)
	{
	    if (uIdxSwap_gob+1 
	    &&  uIdxSwap_gob<MAX_GOB1 )
	    {
	        _update_idx = uIdxSwap_gob;
        
	        if (dl_gob1[|_update_idx] != noone 
	        &&  instance_exists(dl_gob1[|_update_idx]) )
	        {   dl_gob1[|_update_idx].update_idx = UIDX_NULL;  }
	    }
	    else
	    {
	        _update_idx = available_update_idx_gob(MAX_GOB1);
	    }
	}


	if (_update_idx+1 
	&&  _update_idx<MAX_GOB1 )
	{
	    g.go_mgr.dl_gob1[|_update_idx] = argument0;
	}
	else 
	{
	    sdm("!!! WARNING. "+object_get_name(argument0.object_index)+" was NOT added to g.go_mgr.dl_gob1.");
	}



	g.go_mgr.uIdxSwap_gob = UIDX_NULL;


	return _update_idx;








}
