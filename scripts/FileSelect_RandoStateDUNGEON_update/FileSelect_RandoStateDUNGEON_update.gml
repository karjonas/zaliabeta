/// @description  FileSelect_RandoStateDUNGEON_update()
function FileSelect_RandoStateDUNGEON_update() {


	var _InputConfirm_pressed2 = InputConfirm_pressed || Input.pressedH;



	// -------------------------------------------------------------------------------
	if (InputBack_pressed 
	||  (RandoDUNGEON_cursor==RandoDUNGEON_BACK && InputConfirm_pressed) )
	{
	    aud_play_sound(get_audio_theme_track(BACK_SOUND_THEME1));
	    RandoState = RandoState_MAIN;
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}





	// -------------------------------------------------------------------------------
	if (input_select_pressed 
	||  Input.pressedV )
	{
	    var _DIR = sign_(input_select_pressed || input_down_pressed);
	    for(_i=0; _i<RandoDUNGEON_COUNT; _i++)
	    {
	        RandoDUNGEON_cursor = (RandoDUNGEON_cursor+_DIR+RandoDUNGEON_COUNT) mod RandoDUNGEON_COUNT;
	        if (dg_RandoDUNGEON_Options[#RandoDUNGEON_cursor,2]>=0) break; // option is available
	        /*
	        if (RandoDUNGEON_cursor!=RandoDUNGEON_LOCATION 
	        ||  dg_RandoITEM_Options[#RandoITEM_LOCS,2] )
	        {
	            if (dg_RandoDUNGEON_Options[#RandoDUNGEON_cursor,2]>=0) break; // option is available
	        }
	        */
	    }
	    aud_play_sound(get_audio_theme_track(CURSOR_SOUND_THEME2));
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}







	// -------------------------------------------------------------------------------
	switch(RandoDUNGEON_cursor)
	{
	    // ============================================================================
	    // -------------------------------------------------------------------
	    case RandoDUNGEON_TILESET:{
	    if (_InputConfirm_pressed2)
	    {
	        dg_RandoDUNGEON_Options[#RandoDUNGEON_cursor,2] = !dg_RandoDUNGEON_Options[#RandoDUNGEON_cursor,2]; // 2: state
	        aud_play_sound(get_audio_theme_track(CONFIRM_SOUND_THEME1));
	    }
	    break;}
    
    
	    // ============================================================================
	    // -------------------------------------------------------------------
	    case RandoDUNGEON_LOCATION:{
	    if (_InputConfirm_pressed2 
	    &&  dg_RandoITEM_Options[#RandoITEM_LOCS,2] )
	    {
	        dg_RandoDUNGEON_Options[#RandoDUNGEON_cursor,2] = !dg_RandoDUNGEON_Options[#RandoDUNGEON_cursor,2]; // 2: state
	        aud_play_sound(get_audio_theme_track(CONFIRM_SOUND_THEME1));
	    }
	    break;}
    
    
	    // ============================================================================
	    // -------------------------------------------------------------------
	    case RandoDUNGEON_BOSS:{
	    if (_InputConfirm_pressed2)
	    {
	        dg_RandoDUNGEON_Options[#RandoDUNGEON_cursor,2] = !dg_RandoDUNGEON_Options[#RandoDUNGEON_cursor,2]; // 2: state
	        aud_play_sound(get_audio_theme_track(CONFIRM_SOUND_THEME1));
	    }
	    break;}
    
    
	    // ============================================================================
	    // -------------------------------------------------------------------
	    case RandoTOWN_LOCATION:{
	    if (_InputConfirm_pressed2)
	    {
	        dg_RandoDUNGEON_Options[#RandoDUNGEON_cursor,2] = !dg_RandoDUNGEON_Options[#RandoDUNGEON_cursor,2]; // 2: state
	        aud_play_sound(get_audio_theme_track(CONFIRM_SOUND_THEME1));
	    }
	    break;}
    
    
    
	    // ============================================================================
	    // -------------------------------------------------------------------
	    case RandoDUNGEON_BACK:{
	    if (InputConfirm_pressed)
	    {
	        aud_play_sound(get_audio_theme_track(BACK_SOUND_THEME1));
	        RandoState = RandoState_MAIN;
	    }
	    break;}
	}







}
