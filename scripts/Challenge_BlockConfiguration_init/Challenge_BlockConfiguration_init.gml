/// @description  Challenge_BlockConfiguration_init()
function Challenge_BlockConfiguration_init() {


	var _i, _a, _val, _str;
	var _clm,_row;
	var _data;

	init_vars_Challenge_2a();


	               _a=1;
	ST_SUB1_CHCK = _a++; // checking for completion
	ST_SUB1_CLEN = _a++; // after completion block cleanup
	ST_SUB1_SPWN = _a++; // spawn item & destroy self
	ST_SUB1_END  = _a++; // Any last things to do before destroying self
	sub_state    = ST_SUB1_CHCK;


	timer1 = 0;


	// Shape of Bot
	_data  = "00000000000";
	CLMS = string_length(_data);
	_data += "00011111000";
	_data += "00111111100";
	_data += "01110101110";
	_data += "11111111111";
	_data += "11111111111";
	_data += "01111111110";
	_data += "00000000000";
	//
	ROWS = string_length(_data) div CLMS;
	//CLMS = $0B;
	//ROWS = $08;

	//sdm("CLMS $"+hex_str(CLMS)+", ROWS $"+hex_str(ROWS));

	dg_config = ds_grid_create(CLMS,ROWS);
	for(_i=(CLMS*ROWS)-1; _i>=0; _i--)
	{
	    _clm = _i mod CLMS;
	    _row = _i div CLMS;
	    _val = string_char_at(_data, _i+1);
	    _val = real(_val);
	    dg_config[#_clm,_row] = _val;
	}




	// --------------------------------------------------------------------------------
	// --------------------------------------------------------------------------------

	switch(ver)
	{
	    // --------------------------------------------------------------------------------
	    case 1:{
	    /*
	    // Spawn above block configuration
	    item_spawn_x = $A4;
	    item_spawn_y = viewYT() + $38;
    
	    // Spawn in right eye of block Slime
	    // item_spawn_x = $B4; 
	    // item_spawn_y = $A0;
    
	    // Spawn in rm center
	    // item_spawn_x = $180;
	    // item_spawn_y = viewYT() + $38;
    
    
	    //     challenge_complete = val(f.dm_challenges[?challenge_id+STR_Complete]);
	    // if (challenge_complete)
	    if (val(f.dm_challenges[?challenge_id+STR_Complete]))
	    {
	        // spawn a key unless it has already been taken
	        // datakey structure for f.dm_keys depends on the spawn source of the key.
	        // For a key dropped by a challenge, the challenge's challenge_id is the key's datakey.
	        var _datakey = challenge_id+STR_Item_Key;
        
	        if(!defined(f.dm_keys[?_datakey])) // Defined means key has been taken
	        {
	            // Just in case, make sure key not already spawned.
	            var     _already_spawned = false;
	            with(ItmD0) // ItmD0: Key
	            {
	                if (dk_item == _datakey) // dk: Data Key
	                {
	                    _already_spawned = true;
	                    break;
	                }
	            }
            
	            if (   !_already_spawned)
	            {
	                // The challenge is completed, but key has not been acquired.
	                with(GameObject_create(item_spawn_x, item_spawn_y, ItmD0, 1)) // key
	                {
	                    dk_item = _datakey+STR_Dungeon+hex_str(g.dungeon_num); // for f.dm_keys
	                }
                
	                aud_play_sound(Audio.SND_SPWN_ITM1);
	            }
	        }
        
	        with(SpBlA)
	        {
	            state = 0;
            
	            if (g.mod_destroy_go_on_death && !state) GO_destroy_1a();
	        }
        
	        instance_destroy();
        
	        exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	    }
	    */
	    break;}
    
    
    
    
    
    
    
	    // --------------------------------------------------------------------------------
	    case  2:{
	    var _obj,_obj_name,_ver;
	    var _spawn_xl,_spawn_xc, _spawn_yt,_spawn_yc;
	    var _w,_w_, _h,_h_;
	    var _respawn_type;
	    var _defeated_count;
	    var _DEFEATED_DATAKEY = get_defeated_dk();
	    var _spawn_datakey;
	    for(_i=ds_grid_width( g.dg_spawn_prxm)-1; _i>=0; _i--)
	    {                                         _a=0;
	        _spawn_datakey  = g.dg_spawn_prxm[#_i,_a++]; // 
	        _obj            = g.dg_spawn_prxm[#_i,_a++]; // 
	        _obj_name       = g.dg_spawn_prxm[#_i,_a++]; // 
	        _ver            = g.dg_spawn_prxm[#_i,_a++]; // 
	        //                                              //
	        _spawn_xl       = g.dg_spawn_prxm[#_i,_a++]; // 
	        _spawn_xc       = g.dg_spawn_prxm[#_i,_a++]; // 
	        _spawn_yt       = g.dg_spawn_prxm[#_i,_a++]; // 
	        _spawn_yc       = g.dg_spawn_prxm[#_i,_a++]; // 
	        //                                              //
	        _w              = g.dg_spawn_prxm[#_i,_a++]; // 
	        _w_             = g.dg_spawn_prxm[#_i,_a++]; // 
	        _h              = g.dg_spawn_prxm[#_i,_a++]; // 
	        _h_             = g.dg_spawn_prxm[#_i,_a++]; // 
	        //                                              //
	        _respawn_type   = g.dg_spawn_prxm[#_i,_a++]; // 
	        //                                              //
	        _defeated_count = g.dg_spawn_prxm[#_i,_a];  // 
	    if(!_defeated_count)  g.dg_spawn_prxm[#_i,_a] = val(f.dm_quests[?_DEFEATED_DATAKEY+_spawn_datakey]);
	        _defeated_count = g.dg_spawn_prxm[#_i,_a++]; // 
        
	        if (is_ancestor(_obj, Kakusu))
	        {
	            if (_defeated_count)
	            {   //sdm(object_get_name(object_index)+"  instance_destroy()");
	                instance_destroy();
	                exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	            }
	            else if (val(f.dm_challenges[?challenge_id+STR_Complete]))
	            {
	                // In case the player completed the challenge, but 
	                // left rm w/out defeating Kakusu
	                sub_state = ST_SUB1_SPWN;
	            }
	        }
	    }
	    break;}
    
    
    
    
    
    
    
	    // --------------------------------------------------------------------------------
	    case  3:{
    
	    break;}
	}







}
