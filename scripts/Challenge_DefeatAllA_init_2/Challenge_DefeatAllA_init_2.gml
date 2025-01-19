/// @description  Challenge_DefeatAllA_init_2()
function Challenge_DefeatAllA_init_2() {


	var _COMPLETE = val(f.dm_challenges[?challenge_id+STR_Complete]);


	var _i,_j, _x,_y;
	var _data, _obj, _ver;
	var _count1, _count2;
	var _dl_inst = ds_list_create();

	// Each 2 STR_Data contains first the object_index, 
	// then a string of data containing the obj ver + rc 
	// for each inst of the obj.
	                                    _count1=1;
	var _dk = dk_spawn+STR_Data+hex_str(_count1++);
	while(!is_undefined(g.dm_spawn[?_dk]))
	{
	    _obj  = g.dm_spawn[?_dk];
    
	    _dk = dk_spawn+STR_Data+hex_str(_count1++);
	    _data = g.dm_spawn[?_dk];
	                 _count2 = string_length(_data) div 6;
	    for(_j=0; _j<_count2; _j++)
	    {
	        _ver = str_hex(string_copy(_data, (_j*6)+1, 2));
        
	        // respawn_type: Value representing if and when GO can respawn.
	        // 0: never, 1: off screen, 2: refresh area, 3: refresh rm, 4: 30 seconds (on or off screen)
	        if(!_COMPLETE 
	        ||  isVal(g.dm_go_prop[?object_get_name(_obj)+hex_str(_ver)+STR_Respawn], 1,3,4) )
	        {
	            _x = str_hex(string_copy(_data, (_j*6)+5, 2)) <<3;
	            _y = str_hex(string_copy(_data, (_j*6)+3, 2)) <<3;
	            ds_list_add(_dl_inst, GameObject_create(_x,_y, _obj,_ver));
	        }
	    }
    
	    _dk = dk_spawn+STR_Data+hex_str(_count1++);
	}

	_count1 = ds_list_size(_dl_inst);
	ds_grid_resize(dg_status, _count1, ds_grid_height(dg_status));
	ds_grid_clear( dg_status, 0);
	for(_i=0; _i<_count1; _i++)
	{
	    dg_status[#_i,0] = _dl_inst[|_i];
	    dg_status[#_i,1] = 1; // has spawned
	}
	ds_list_destroy(_dl_inst); _dl_inst=undefined;








	// ----------------------------------------------------------------
	switch(ver)
	{
	    // ----------------------------------------------------------------
	    case 1:{
	    if (_COMPLETE)
	    {
	        sub_state = SUB_STATE_CMPL_1;
	    }
	    else with(GameObject_create(x,y, LoDoA,3))
	    {
	        other.locked_door = id;
	    }
	    break;}
    
	    // ----------------------------------------------------------------
	    case 2:{
    
	    break;}
    
	    // ----------------------------------------------------------------
	    case 3:{
    
	    break;}
	}







}
