/// @description  update_change_room()
function update_change_room() {


	// NextLifeScreen: if (counter1==ROOM_CHANGE_CUE) ChangeRoom_timer = DUR_CHANGE_ROOM_ENTER_1 + 1;


	var _EXITING_RM = is_exiting_rm();
	var _EXITING_OW = is_exiting_ow();

	var _RETURN = (ChangeRoom_timer>0) || _EXITING_RM || _EXITING_OW;




	// ---------------------------------------------------------------------
	if (ChangeRoom_timer<=0)
	{
	    if (_EXITING_RM)
	    {
	        leave_rm_x = pc.xl;
	        leave_rm_y = pc.yt;
        
	        // MOD. To prevent GO's from drawing during room change
	        set_go_can_draw_self(false); 
	    }
    
    
    
	    if (_EXITING_RM 
	    ||  _EXITING_OW )
	    {   // Start room change process
	        var _C1 = qual_fall_scene();
	        //if(_EXITING_OW && ow.exit_grid_xy==$61D3) sdm("get_fs_type(): "+string(get_fs_type())+", _C1: "+string(_C1)+", is_undefined(g.ow.enc_reen): "+string(is_undefined(g.ow.enc_reen)));
        
	        if (_C1) ChangeRoom_timer = ChangeRoom_LEAVE_DURATION2; // $05. Falling scene
	        else     ChangeRoom_timer = ChangeRoom_LEAVE_DURATION1; // $09
        
	        if(!_C1) // Falling scene will NOT occur
	        {
	            if (_EXITING_OW)
	            {
	                if(!is_undefined(overworld.enc_reen)  // Entering encounter
	                || !is_undefined(overworld.dm_data[?hex_str(overworld.pcrc)+STR_Special+STR_Encounter]) ) // PC is on Dark Forest Kakusu tile
	                {
	                    Audio.encounter_sound_inst = aud_play_sound(get_audio_theme_track(STR_Encounter+STR_Enter));
	                }
	            }
	            else if (_EXITING_RM)
	            {
	                if (rm_get_encounter_types(rm_name))
	                {
	                    Audio.encounter_sound_inst = aud_play_sound(get_audio_theme_track(STR_Encounter+STR_Leave));
	                }
	            }
	        }
	    }
	}






	// ------------------------------------------------------------------------------------------
	// ------------------------------------------------------------------------------------------
	if (ChangeRoom_timer<=0)
	{
	    ChangeRoom_timer = 0;
	    return _RETURN;
	}





	// ------------------------------------------------------------------------------------------
	// ------------------------------------------------------------------------------------------
	if (FallScene_timer)
	{   FallScene_timer--;  }





	// ------------------------------------------------------------------------------------------
	// ------------------------------------------------------------------------------------------
	    ChangeRoom_timer -= 1*delta_multiplier;
	//
	if (ChangeRoom_timer<=0)
	{
	    ChangeRoom_timer = 0;
    
	    if (_EXITING_RM 
	    ||  _EXITING_OW )
	    {
	        if (qual_fall_scene())
	        {   // Trigger Falling Scene -----------------------------------------
	            ChangeRoom_timer = FallScene_DURATION1; // $6D(109)
	            FallScene_timer  = ChangeRoom_timer+1;
            
            
	            with(p)
	            {
	                    fall_scene_type = get_fall_scene_type();
	                if (fall_scene_type & (g.FallScene_BIT_RIGHT|g.FallScene_BIT_LEFT))
	                {   // Red vertical stripes. Fast travel fall scene
	                    fall_scene_spr = fall_scene_2_spr; // vertical stripes
	                    fall_scene_pal = fall_scene_2_pal;
	                    fall_scene_y   = viewYC();
                    
	                    if (fall_scene_type & g.FallScene_BIT_RIGHT)
	                    {
	                        fall_scene_x = viewXL() + FallScene_X_BASE;
	                        fall_scene_fall_spd =  FallScene_2_FALL_SPD;
	                    }
	                    else
	                    {
	                        fall_scene_x = viewXR() - FallScene_X_BASE;
	                        fall_scene_fall_spd = -FallScene_2_FALL_SPD;
	                    }
	                }
	                else if (fall_scene_type & (g.FallScene_BIT_DOWN|g.FallScene_BIT_UP))
	                {   // Blue horizontal stripes. Normal fall scene
	                    fall_scene_spr = fall_scene_1_spr; // horizontal stripes
	                    fall_scene_pal = fall_scene_1_pal;
	                    fall_scene_x   = viewXC();
                    
	                    if (fall_scene_type & g.FallScene_BIT_DOWN)
	                    {
	                        fall_scene_y = viewYT() + FallScene_Y_BASE;;
	                        fall_scene_fall_spd =  FallScene_1_FALL_SPD;
	                    }
	                    else
	                    {
	                        fall_scene_y = viewYB() - FallScene_Y_BASE;;
	                        fall_scene_fall_spd = -FallScene_1_FALL_SPD
	                    }
	                }
                
	                fall_scene_counter = 1;
                
	                // Change palette colors for fall scene
	                var _PAL  = hex_str(fall_scene_pal);
	                var _LEN  = string_length(_PAL);
	                var _POS  = val(dm_pal_data[?hex_str(FallScene_PI_BASE)+STR_Palette+STR_Position], PAL_POS_BGR1);
	                    _POS += (COL_PER_PAL<<1)-_LEN;
	                change_pal(strReplaceAt(pal_rm_new, _POS,_LEN, _PAL));
                
	                // This is to prevent a couple frames of a bright bgr color drawing clear before transitioning to the bgr color of the next rm
	                background_color_index = CI_BLK1;
	            }
            
	            // delete all room tiles so falling scene has a clear screen to draw on
	            tile_delete_all();
            
	            audio_group_stop_all(audiogroup_mus);
	            Audio.can_play_mus_rm_body = false;
	            Audio.can_play_boss_music  = false;
	            aud_play_sound(get_audio_theme_track(dk_FallScene+STR_Sound));
	        }
	        else
	        {   // Triggers room_goto() ------------------------------------------
	            ChangeRoom_timer = ChangeRoom_ENTER_DURATION1; // $22
	            update_change_room_1a();
	        }
	    }
	    else
	    {   // --------------------------------------------------------------------------------------------------
	        // --------------------  FINISHED CHANGING ROOMS  ------------------------------------------------------------------------------------
	        FallScene_timer  = FallScene_INACTIVE;
	        ChangeRoom_timer = 0;
	        if (room_type=="A") counter1 = $26; // simulating OG
        
	        Audio.can_play_mus_rm_body = true;
	    }
	}



	return _RETURN; // $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$







}
