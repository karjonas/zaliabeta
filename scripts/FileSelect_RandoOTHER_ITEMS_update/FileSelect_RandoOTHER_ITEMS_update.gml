/// @description  FileSelect_RandoOTHER_ITEMS_update()
function FileSelect_RandoOTHER_ITEMS_update() {


	//var _InputConfirm_pressed2 = InputConfirm_pressed || Input.pressedH;


	// -------------------------------------------------------------------------------
	if (InputBack_pressed 
	||  (RandoOTHER_ITEMS_cursor==RandoOTHER_ITEMS_cursor_BACK && InputConfirm_pressed) )
	{
	    aud_play_sound(get_audio_theme_track(BACK_SOUND_THEME1));
	    RandoOTHER_state = RandoOTHER_state_MAIN;
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}





	// -------------------------------------------------------------------------------
	if (input_select_pressed)
	{
	    RandoOTHER_ITEMS_cursor += 1;
	    RandoOTHER_ITEMS_cursor += RandoOTHER_ITEMS_cursor_COUNT;
	    RandoOTHER_ITEMS_cursor  = RandoOTHER_ITEMS_cursor mod RandoOTHER_ITEMS_cursor_COUNT;
	    aud_play_sound(get_audio_theme_track(CURSOR_SOUND_THEME2));
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}







	var _val;


	// -------------------------------------------------------------------------------
	switch(RandoOTHER_ITEMS_cursor)
	{
	    // ============================================================================
	    // -------------------------------------------------------------------
	    case RandoOTHER_ITEMS_cursor_ITEM:{
	    if (InputConfirm_pressed 
	    ||  Input.pressedV )
	    {
	        var _DIR = sign_(!input_up_pressed);
        
	        switch(RandoOTHER_ITEMS_item_cursor)
	        {
	            default:{
	            dg_RandoOTHER_ITEMS[#RandoOTHER_ITEMS_item_cursor,2] = !dg_RandoOTHER_ITEMS[#RandoOTHER_ITEMS_item_cursor,2];
	            aud_play_sound(Audio.SND_TYPE_CHR2);
	            break;}
            
	            case RandoOTHER_ITEMS_item_cursor_DOLLS:{
	            var _MAX = 3 + (dg_RandoOTHER_Options[#RandoOTHER_MAIN_cursor_QUEST,2]==1);
	            _val = dg_RandoOTHER_ITEMS[#RandoOTHER_ITEMS_item_cursor_DOLLS,2];
	            _val = (_val+_DIR+(_MAX+1)) mod (_MAX+1);
	            dg_RandoOTHER_ITEMS[#RandoOTHER_ITEMS_item_cursor_DOLLS,2] = _val;
	            aud_play_sound(Audio.SND_TYPE_CHR2);
	            break;}
            
	            case RandoOTHER_ITEMS_item_cursor_HEART:{
	            _val = dg_RandoOTHER_ITEMS[#RandoOTHER_ITEMS_item_cursor_HEART,2];
	            _val = (_val+_DIR+f.CONT_MAX_HP) mod f.CONT_MAX_HP;
	            _val =  clamp(_val, f.CONT_MIN_HP,f.CONT_MAX_HP);
	            dg_RandoOTHER_ITEMS[#RandoOTHER_ITEMS_item_cursor_HEART,2] = _val;
	            aud_play_sound(Audio.SND_TYPE_CHR2);
	            break;}
            
	            case RandoOTHER_ITEMS_item_cursor_MAGIC:{
	            _val = dg_RandoOTHER_ITEMS[#RandoOTHER_ITEMS_item_cursor_MAGIC,2];
	            _val = (_val+_DIR+f.CONT_MAX_MP) mod f.CONT_MAX_MP;
	            _val =  clamp(_val, f.CONT_MIN_MP,f.CONT_MAX_MP);
	            dg_RandoOTHER_ITEMS[#RandoOTHER_ITEMS_item_cursor_MAGIC,2] = _val;
	            aud_play_sound(Audio.SND_TYPE_CHR2);
	            break;}
	        }
	    }
	    else if (Input.pressedH)
	    {
	        RandoOTHER_ITEMS_item_cursor += sign_(input_right_pressed);
	        RandoOTHER_ITEMS_item_cursor += RandoOTHER_ITEMS_item_cursor_COUNT;
	        RandoOTHER_ITEMS_item_cursor  = RandoOTHER_ITEMS_item_cursor mod RandoOTHER_ITEMS_item_cursor_COUNT;
	        aud_play_sound(get_audio_theme_track(CURSOR_SOUND_THEME2));
	    }
	    break;}
    
    
    
	    // ============================================================================
	    // -------------------------------------------------------------------
	    case RandoOTHER_ITEMS_cursor_BACK:{
	    if (InputConfirm_pressed)
	    {
	        aud_play_sound(get_audio_theme_track(BACK_SOUND_THEME1));
	        RandoOTHER_state = RandoOTHER_state_MAIN;
	    }
	    break;}
	}//switch(RandoOTHER_ITEMS_cursor)







}
