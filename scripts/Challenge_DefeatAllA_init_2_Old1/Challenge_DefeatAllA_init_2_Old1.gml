/// @description  Challenge_DefeatAllA_init_2()
function Challenge_DefeatAllA_init_2_Old1() {


	var i,j, _dk;
	var _dl_dk_spawn = ds_list_create();
	var _PRXM_CNT   = val(g.dm_spawn[? get_spawn_datakey(g.rm_name,STR_PRXM, -1)]);
	var _PRIO_CNT   = val(g.dm_spawn[? get_spawn_datakey(g.rm_name,STR_PRIO, -1)]);

	for (i = (_PRXM_CNT+_PRIO_CNT)-1; i >= 0; i--)
	{
	    for (j = 0; j < 2; j++)
	    {
	        if (j) _dk  = get_spawn_datakey(g.rm_name,STR_PRIO, i);
	        else   _dk  = get_spawn_datakey(g.rm_name,STR_PRXM, i);
	               _obj = g.dm_spawn[? _dk+STR_obj_idx];
	        if(!is_undefined( _obj) 
	        &&  is_ancestor(  _obj, GOB1) )
	        {
	            ds_list_add(_dl_dk_spawn, _dk);
	        }
	    }
	}

	ds_grid_resize(dg_status, ds_list_size(_dl_dk_spawn), ds_grid_height(dg_status));
	ds_grid_clear( dg_status, 0);

	for (i = ds_grid_width(dg_status)-1; i >= 0; i--)
	{
	    _dk = _dl_dk_spawn[| i];
	    dg_status[# i,1] = _dk;
    
	    // Number of times this spawn has been defeated
	    dg_status[# i,3] = val(f.dm_quests[? STR_Defeated+"_"+_dk]);
    
    
    
	    with (GOB1)
	    {
	        if (dk_spawn == _dk)
	        {
	            other.dg_status[# i,2] = 1; // Indicate enemy has spawned
	            other.dg_status[# i,0] = id;
	            break; // with (GOB1)
	        }
	    }
	}

	ds_list_destroy(_dl_dk_spawn); _dl_dk_spawn = undefined;






	// ----------------------------------------------------------------
	switch (ver)
	{
	    // ----------------------------------------------------------------
	    case 1: {
	    if (val(f.dm_challenges[? challenge_id+STR_Complete]))
	    {
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
