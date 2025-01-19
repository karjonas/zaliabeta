/// @description  Kakusu001_end()
function Kakusu001_end() {


	var _i;
	var _exists = false;


	if (USE_SURF)
	{
	    var _surf;
    
	    for(_i=0; _i<Platform_COUNT; _i++)
	    {
	        if(!variable_instance_exists(id,"dg_platform") 
	        ||  is_undefined(dg_platform) )
	        {   break;  }
	                           _surf = dg_platform[#_i,SURF_IDX];
	        if(!is_undefined(  _surf) 
	        &&  surface_exists(_surf))
	        {   surface_free(  _surf);  }
	    }
	}
	else
	{
	    // used sprites
	    for(_i=0; _i<Platform_COUNT; _i++)
	    {   // TODO: GO end() scripts are being called twice, this crashes game on the 2nd call bc dg_platform was deleted on the 1st.
	        // TODO: Remove this check after the 1st TODO
	        if(!variable_instance_exists(id,"dg_platform") 
	        ||                  is_undefined(dg_platform) )
	        {   break;  }
        
        
	        if (              dg_platform[#_i,SPR_IDX] 
	        &&  sprite_exists(dg_platform[#_i,SPR_IDX]) )
	        {
	            sprite_delete(dg_platform[#_i,SPR_IDX]);
	        }
	    }
	}





	Kakusu_end();

	/*
	var _exists = false;


	    _exists=variable_instance_exists(id,"dl_");
	if (_exists) _exists = !is_undefined(    dl_);
	if (_exists) _exists = ds_exists(        dl_,ds_type_list);
	if (_exists)           ds_list_destroy(  dl_);
	if (_exists)                             dl_=undefined;

	    _exists=variable_instance_exists(id,"dm_");
	if (_exists) _exists = !is_undefined(    dm_);
	if (_exists) _exists = ds_exists(        dm_,ds_type_map);
	if (_exists)           ds_map_destroy(   dm_);
	if (_exists)                             dm_=undefined;

	    _exists=variable_instance_exists(id,"dg_");
	if (_exists) _exists = !is_undefined(    dg_);
	if (_exists) _exists = ds_exists(        dg_,ds_type_grid);
	if (_exists)           ds_grid_destroy(  dg_);
	if (_exists)                             dg_=undefined;

	    _exists=variable_instance_exists(id,"ds_");
	if (_exists) _exists = !is_undefined(    ds_);
	if (_exists) _exists = ds_exists(        ds_,ds_type_stack);
	if (_exists)           ds_stack_destroy( ds_);
	if (_exists)                             ds_=undefined;
	*/





	    _exists = variable_instance_exists(id,  "dg_platform");
	if (_exists) _exists =      !is_undefined(   dg_platform);
	if (_exists) _exists =       ds_exists(      dg_platform, ds_type_grid);
	if (_exists)                 ds_grid_destroy(dg_platform);
	if (_exists)                                 dg_platform = undefined;








}
