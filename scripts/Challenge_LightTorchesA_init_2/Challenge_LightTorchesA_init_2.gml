/// @description  Challenge_LightTorchesA_init_2()
function Challenge_LightTorchesA_init_2() {


	var i, j, _count1, _count2, _data, _obj, _ver, _x, _y;
	var _dl_torches = ds_list_create();

	// Each 2 STR_Data contains first the object_index, 
	// then a string of data containing the obj ver + rc 
	// for each inst of the obj.
	                                    _count1 = 1;
	var _dk = dk_spawn+STR_Data+hex_str(_count1++);
	while(!is_undefined(g.dm_spawn[? _dk]))
	{
	    _obj  = g.dm_spawn[? _dk];
    
	    _dk = dk_spawn+STR_Data+hex_str(_count1++);
	    _data = g.dm_spawn[? _dk];
	                    _count2 = string_length(_data) div 6;
	    for (j = 0; j < _count2; j++)
	    {
	        _ver = str_hex(string_copy(_data, (j*6)+1, 2));
	        _x   = str_hex(string_copy(_data, (j*6)+5, 2)) <<3;
	        _y   = str_hex(string_copy(_data, (j*6)+3, 2)) <<3;
	        ds_list_add(_dl_torches, GameObject_create(_x,_y, _obj,_ver));
	    }
    
	    _dk = dk_spawn+STR_Data+hex_str(_count1++);
	}

	_count1 = ds_list_size(_dl_torches);
	ds_grid_resize(dg_torches, _count1, ds_grid_height(dg_torches));
	ds_grid_clear( dg_torches, 0);
	for (i = 0; i < _count1; i++)
	{
	    dg_torches[# i,0] = _dl_torches[| i];
	}


	ds_list_destroy(_dl_torches); _dl_torches = undefined;



	// ----------------------------------------------------------------
	switch (ver)
	{
	    // ----------------------------------------------------------------
	    case 1: {
	    if (val(f.dm_challenges[? challenge_id+STR_Complete]))
	    {
	        for (i = (ds_grid_width(dg_torches))-1; i >= 0; i--)
	        {
	            dg_torches[# i,1]        = true;
	            dg_torches[# i,0].is_lit = dg_torches[# i,1];
	        }
        
	        sub_state = SUB_STATE_CMPL_1;
	    }
	    else with (GameObject_create(x, y, LoDoA, 3))
	    {
	        other.locked_door = id;
	    }
	    break;  }
    
	    // ----------------------------------------------------------------
	    case 2: {
    
	    break;  }
    
	    // ----------------------------------------------------------------
	    case 3: {
    
	    break;  }
	}







}
