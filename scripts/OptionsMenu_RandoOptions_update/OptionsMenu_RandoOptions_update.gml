/// @description  OptionsMenu_RandoOptions_update()
function OptionsMenu_RandoOptions_update() {


	var _i, _val;

	var _InputConfirm_pressed  = a_button_pressed || start_button_pressed; // GP_Face1_pressed: xbox A
	var _InputConfirm_pressed2 = _InputConfirm_pressed || Input.pressedH;

	var _SOUND1 = get_audio_theme_track(CURSOR_SOUND_THEME1);
	var _SOUND2 = get_audio_theme_track(CONFIRM_SOUND_THEME1);


	// -------------------------------------------------------------------------------
	if (Backout_requested 
	||  (RandoOptions_cursor==RandoOptions_BACK && _InputConfirm_pressed) )
	{
	    Menu_in_focus = Menu_MAIN;
	    aud_play_sound(get_audio_theme_track(BACK_SOUND_THEME1));
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}





	// -------------------------------------------------------------------------------
	if (select_button_pressed 
	||  Input.pressedV )
	{
	    var _DIR = sign_(select_button_pressed || Input.Down_pressed);
	    for(_i=0; _i<RandoOptions_COUNT; _i++)
	    {
	        RandoOptions_cursor += _DIR;
	        RandoOptions_cursor += RandoOptions_COUNT;
	        RandoOptions_cursor  = RandoOptions_cursor mod RandoOptions_COUNT;
	        if (OptionsMenu_option_is_avail(Menu_RANDO_OPTIONS,RandoOptions_cursor))
	        {
	            aud_play_sound(_SOUND1);
	            break;//_i
	        }
	    }
    
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}








	// -------------------------------------------------------------------------------
	switch(RandoOptions_cursor)
	{
	    // -------------------------------------------------
	    case RandoOptions_MARK_ACQUIRED:{
	    if (_InputConfirm_pressed2)
	    {
	        g.can_mark_acquired_item_locations = !g.can_mark_acquired_item_locations;
	        save_game_pref();
	        aud_play_sound(_SOUND2);
	    }
	    break;}
    
	    // -------------------------------------------------
	    case RandoOptions_MAPS_SHOW_KEYS:{
	    if (_InputConfirm_pressed2)
	    {
	        g.RandoKeys_MAP_items_show_keys = !g.RandoKeys_MAP_items_show_keys;
	        save_game_pref();
	        aud_play_sound(_SOUND2);
	    }
	    break;}
    
	    // -------------------------------------------------
	    case RandoOptions_RANDO_ENEMY:{
	    if (_InputConfirm_pressed2)
	    {
	        g.Rando_enemy = !g.Rando_enemy;
	        save_game_pref();
	        aud_play_sound(_SOUND2);
	    }
	    break;}
    
	    // -------------------------------------------------
	    case RandoOptions_RANDO_OW_TILES:{
	    if (_InputConfirm_pressed2)
	    {
	        global.can_rando_ow_tsrc = !global.can_rando_ow_tsrc;
	        save_game_pref();
	        aud_play_sound(_SOUND2);
	    }
	    break;}
    
	    // -------------------------------------------------
	    case RandoOptions_SCENES:{
	    if (_InputConfirm_pressed2)
	    {
	        global.SceneRando_enabled = !global.SceneRando_enabled;
	        save_game_pref();
	        aud_play_sound(_SOUND2);
	    }
	    break;}
    
	    // -------------------------------------------------
	    case RandoOptions_RANDO_PALETTE:{
	    if (_InputConfirm_pressed2)
	    {
	        var _DIR = sign_(_InputConfirm_pressed || Input.Right_pressed);
	        g.RandoPalette_state = (g.RandoPalette_state+_DIR+g.RandoPalette_STATE_COUNT) mod g.RandoPalette_STATE_COUNT;
	        save_game_pref();
	        aud_play_sound(_SOUND2);
	    }
	    break;}
    
	    // -------------------------------------------------
	    case RandoOptions_MARK_HIDDEN_EXIT:{
	    if (_InputConfirm_pressed2)
	    {
	        g.hidden_item_exits_help = !g.hidden_item_exits_help;
	        save_game_pref();
	        aud_play_sound(_SOUND2);
	    }
	    break;}
    
	    // -------------------------------------------------
	    case RandoOptions_BACK:{
	    if (_InputConfirm_pressed)
	    {
	        Menu_in_focus = Menu_MAIN;
	        aud_play_sound(get_audio_theme_track(BACK_SOUND_THEME1));
	    }
	    break;}
	}//switch(RandoOptions_cursor)







}
