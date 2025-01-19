/// @description  FileSelect_RandoStateSPELL_update()
function FileSelect_RandoStateSPELL_update() {


	var _InputConfirm_pressed2 = InputConfirm_pressed || Input.pressedH;



	// -------------------------------------------------------------------------------
	if (InputBack_pressed 
	||  (RandoSPELL_cursor==RandoSPELL_BACK && InputConfirm_pressed) )
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
	    for(_i=0; _i<RandoSPELL_COUNT; _i++)
	    {
	        RandoSPELL_cursor = (RandoSPELL_cursor+_DIR+RandoSPELL_COUNT) mod RandoSPELL_COUNT;
	        if (dg_RandoSPELL_Options[#RandoSPELL_cursor,2]>=0) break; // option is available
	    }
	    aud_play_sound(get_audio_theme_track(CURSOR_SOUND_THEME2));
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}







	// -------------------------------------------------------------------------------
	switch(RandoSPELL_cursor)
	{
	    // ============================================================================
	    // -------------------------------------------------------------------
	    case RandoSPELL_LOCS:{
	    if (_InputConfirm_pressed2)
	    {
	        dg_RandoSPELL_Options[#RandoSPELL_cursor,2] = !dg_RandoSPELL_Options[#RandoSPELL_cursor,2]; // 2: state
	        aud_play_sound(get_audio_theme_track(CONFIRM_SOUND_THEME1));
	    }
	    break;}
    
    
	    // ============================================================================
	    // -------------------------------------------------------------------
	    case RandoSPELL_COST:{
	    if (_InputConfirm_pressed2)
	    {
	        dg_RandoSPELL_Options[#RandoSPELL_cursor,2] = !dg_RandoSPELL_Options[#RandoSPELL_cursor,2]; // 2: state
	        aud_play_sound(get_audio_theme_track(CONFIRM_SOUND_THEME1));
	    }
	    break;}
    
    
    
	    // ============================================================================
	    // -------------------------------------------------------------------
	    case RandoSPELL_BACK:{
	    if (InputConfirm_pressed)
	    {
	        aud_play_sound(get_audio_theme_track(BACK_SOUND_THEME1));
	        RandoState = RandoState_MAIN;
	    }
	    break;}
	}







}
