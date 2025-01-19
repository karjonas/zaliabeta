/// @description  Challenge_PushableMatching1_update()
function Challenge_PushableMatching1_update() {


	if (Door_timer)
	{
	    Door_timer--;
    
	    if(!Door_timer 
	    &&  Door_state==2 )
	    {   Door_state =0;  }
	}





	// ==============================================================================
	// ========================================================================
	switch(sub_state)
	{
	    // ============================================================
	    // ----------------------------------------------------
	    case sub_state_IDLE:{
	    var _i, _x,_y,_yb;
	    var _switch_is_set = false;
	    var _DIST = $02;
	    for(_i=ds_grid_width(dg_Switches)-1; _i>=0; _i--)
	    {
	        _x  = dg_Switches[#_i,0] + 8;
	        _yb = dg_Switches[#_i,1];
        
	        _switch_is_set = false;
	        with(PushA)
	        {
	            if (moving_dir) continue;//with(PushA)
            
	            if (yb>>3==_yb>>3 
	            &&   x>>3== _x>>3 
	            &&  wINw(x,1, _x-_DIST,_DIST<<1) ) // dont remember why i did this
	            {
	                _switch_is_set = true;
	                break;//with(PushA)
	            }
	        }
        
	        if(!_switch_is_set) break;//_i
	    }
    
	    if (_switch_is_set) // All switches are set if this is true here
	    {
	        Door_timer = DURATION2; // $25 explosion dur
	        Door_state = 2; // 2: explode
        
	        aud_play_sound(get_audio_theme_track(STR_Open+STR_LockedDoor));
	        aud_play_sound(get_audio_theme_track(dk_EnemyDeath));
	        //aud_play_sound(Audio.SND_STRK_ENM1);
        
	        f.dm_quests[?dk_spawn+STR_Complete] = true;
	        aud_play_sound(get_audio_theme_track(STR_Secret));
	        sub_state = sub_state_COMPLETE1;
	        exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	    }
	    break;}//case sub_state_IDLE
    
    
    
    
    
    
    
    
	    // ============================================================
	    // ----------------------------------------------------
	    case sub_state_COMPLETE1:{
	    if (Door_timer < DRAW_CUE1)
	    {
	        var _SOLID = 0;
	        var _clm1,_clm2, _row1,_row2;
	            _clm1 = Door_XL>>3;
	            _row1 = Door_YT>>3;
	        for(_i=0; _i<Door_Blocks_COUNT; _i++)
	        {   // Remove solid
	            _clm2 = _clm1;
	            _row2 = _row1+(_i<<1);
	            tile_change_1a(0, (_clm2+0)<<3,(_row2+0)<<3, -1,0, _SOLID);
	            tile_change_1a(0, (_clm2+1)<<3,(_row2+0)<<3, -1,0, _SOLID);
	            tile_change_1a(0, (_clm2+0)<<3,(_row2+1)<<3, -1,0, _SOLID);
	            tile_change_1a(0, (_clm2+1)<<3,(_row2+1)<<3, -1,0, _SOLID);
	        }
        
        
	        sub_state = sub_state_DONE;
	    }
	    break;}//case sub_state_COMPLETE1
    
    
    
    
    
    
    
    
	    // ============================================================
	    // ----------------------------------------------------
	    case sub_state_DONE:{
	    break;}//case sub_state_DONE
	}//switch(sub_state)







}
