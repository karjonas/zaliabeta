/// @description  FileSelect_RandoOTHER_SPELLS_update()
function FileSelect_RandoOTHER_SPELLS_update() {


	var _InputConfirm_pressed2 = InputConfirm_pressed || Input.pressedH;


	// -------------------------------------------------------------------------------
	if (InputBack_pressed 
	||  (RandoOTHER_SPELLS_cursor==RandoOTHER_SPELLS_cursor_BACK && InputConfirm_pressed) )
	{
	    aud_play_sound(get_audio_theme_track(BACK_SOUND_THEME1));
	    RandoOTHER_state = RandoOTHER_state_MAIN;
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}





	// -------------------------------------------------------------------------------
	if (input_select_pressed 
	||  Input.pressedV )
	{
	    var _DIR = sign_(input_select_pressed || input_down_pressed);
	    RandoOTHER_SPELLS_cursor += _DIR;
	    RandoOTHER_SPELLS_cursor += RandoOTHER_SPELLS_cursor_COUNT;
	    RandoOTHER_SPELLS_cursor  = RandoOTHER_SPELLS_cursor mod RandoOTHER_SPELLS_cursor_COUNT;
	    aud_play_sound(get_audio_theme_track(CURSOR_SOUND_THEME2));
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}










	// -------------------------------------------------------------------------------
	switch(RandoOTHER_SPELLS_cursor)
	{
	    // ============================================================================
	    // -------------------------------------------------------------------
	    default:{
	    if (Input.pressedH 
	    ||  input_start_pressed )
	    {
	        dg_RandoOTHER_SPELLS[#RandoOTHER_SPELLS_cursor,2] = !dg_RandoOTHER_SPELLS[#RandoOTHER_SPELLS_cursor,2];
	        //aud_play_sound(Audio.SND_CRSR_MVE2);
	        aud_play_sound(Audio.SND_TYPE_CHR2);
	    }
	    break;}
    
    
    
	    // ============================================================================
	    // -------------------------------------------------------------------
	    case RandoOTHER_SPELLS_cursor_BACK:{
	    if (InputConfirm_pressed)
	    {
	        aud_play_sound(get_audio_theme_track(BACK_SOUND_THEME1));
	        RandoOTHER_state = RandoOTHER_state_MAIN;
	    }
	    break;}
	}//switch(RandoOTHER_SPELLS_cursor)











}
