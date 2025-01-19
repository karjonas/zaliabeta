/// @description  FileSelect_RandoStateENEMY_update()
function FileSelect_RandoStateENEMY_update() {


	var _InputConfirm_pressed2 = InputConfirm_pressed || Input.pressedH;


	// -------------------------------------------------------------------------------
	if (InputBack_pressed 
	||  (RandoENEMY_cursor==RandoENEMY_BACK && InputConfirm_pressed) )
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
	    for(_i=0; _i<RandoENEMY_COUNT; _i++)
	    {
	        RandoENEMY_cursor = (RandoENEMY_cursor+_DIR+RandoENEMY_COUNT) mod RandoENEMY_COUNT;
	        if (dg_RandoENEMY_Options[#RandoENEMY_cursor,2]>=0) break; // option is available
	    }
	    aud_play_sound(get_audio_theme_track(CURSOR_SOUND_THEME2));
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}







	// -------------------------------------------------------------------------------
	switch(RandoENEMY_cursor)
	{
	    // ============================================================================
	    // -------------------------------------------------------------------
	    case RandoENEMY_DIFF:{
	    if (_InputConfirm_pressed2)
	    {
	        var _DIR = sign_(!input_left_pressed);
	        var _COUNT1=g.RandoEnemy_difficulty_MAX;
	        var _difficulty = dg_RandoENEMY_Options[#RandoENEMY_cursor,2];
	            _difficulty--;
	            _difficulty = (_difficulty+_COUNT1+_DIR) mod _COUNT1;
	            _difficulty++;
	        dg_RandoENEMY_Options[#RandoENEMY_cursor,2] = _difficulty;
	        aud_play_sound(get_audio_theme_track(CONFIRM_SOUND_THEME1));
	    }
	    break;}
    
    
    
	    // ============================================================================
	    // -------------------------------------------------------------------
	    case RandoENEMY_CHAR:{
	    if (_InputConfirm_pressed2)
	    {
	        var _DIR = sign_(!input_left_pressed);
	        var _COUNT1=3;
	        var _version = dg_RandoENEMY_Options[#RandoENEMY_cursor,2];
	        _version = (_version+_COUNT1+_DIR) mod _COUNT1;
	        dg_RandoENEMY_Options[#RandoENEMY_cursor,2] = _version;
	        aud_play_sound(get_audio_theme_track(CONFIRM_SOUND_THEME1));
	    }
	    break;}
    
    
    
	    // ============================================================================
	    // -------------------------------------------------------------------
	    case RandoENEMY_SPAWNERS:{
	    if (_InputConfirm_pressed2)
	    {
	        dg_RandoENEMY_Options[#RandoENEMY_cursor,2] = !dg_RandoENEMY_Options[#RandoENEMY_cursor,2]; // 2: state
	        aud_play_sound(get_audio_theme_track(CONFIRM_SOUND_THEME1));
	    }
	    break;}
    
    
    
	    // ============================================================================
	    // -------------------------------------------------------------------
	    case RandoENEMY_ENIGMA:{
	    if (_InputConfirm_pressed2)
	    {
	        dg_RandoENEMY_Options[#RandoENEMY_cursor,2] = !dg_RandoENEMY_Options[#RandoENEMY_cursor,2]; // 2: state
	        aud_play_sound(get_audio_theme_track(CONFIRM_SOUND_THEME1));
	    }
	    break;}
    
    
    
	    // ============================================================================
	    // -------------------------------------------------------------------
	    case RandoENEMY_HP:{
	    if (_InputConfirm_pressed2)
	    {
	        dg_RandoENEMY_Options[#RandoENEMY_cursor,2] = !dg_RandoENEMY_Options[#RandoENEMY_cursor,2]; // 2: state
	        aud_play_sound(get_audio_theme_track(CONFIRM_SOUND_THEME1));
	    }
	    break;}
    
    
    
	    // ============================================================================
	    // -------------------------------------------------------------------
	    case RandoENEMY_DAMAGE:{
	    if (_InputConfirm_pressed2)
	    {
	        dg_RandoENEMY_Options[#RandoENEMY_cursor,2] = !dg_RandoENEMY_Options[#RandoENEMY_cursor,2]; // 2: state
	        aud_play_sound(get_audio_theme_track(CONFIRM_SOUND_THEME1));
	    }
	    break;}
    
    
    
	    // ============================================================================
	    // -------------------------------------------------------------------
	    case RandoENEMY_BACK:{
	    if (InputConfirm_pressed)
	    {
	        aud_play_sound(get_audio_theme_track(BACK_SOUND_THEME1));
	        RandoState = RandoState_MAIN;
	    }
	    break;}
	}







}
