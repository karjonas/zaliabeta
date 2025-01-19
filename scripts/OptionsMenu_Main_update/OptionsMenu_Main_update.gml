/// @description  OptionsMenu_Main_update()
function OptionsMenu_Main_update() {


	var _InputConfirm_pressed = a_button_pressed || start_button_pressed;


	var _CLOSE = Backout_requested;
	if(!_CLOSE 
	&&  MainOption==MainOption_CLOSE )
	{
	    _CLOSE = start_button_pressed || keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space);
	}

	if (_CLOSE)
	{
	    aud_play_sound(get_audio_theme_track(BACK_SOUND_THEME1));
	    timer=0;
	    sub_state=sub_state_CLOSING1; // Start close menu
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}




	switch(MainOption)
	{
	    case MainOption_MUSIC_SET:{
	    if (Audio.audio_set==dk_RandomCustom)
	    {
	        if (start_button_pressed 
	        ||  keyboard_check_pressed(vk_space) 
	        ||  keyboard_check_pressed(vk_enter) )
	        {
	            if (ds_list_find_index(Audio.dl_AUDIO_SETS,dk_RandomCustom)!=-1)
	            {
	                AudioCustom_cursor  = 0;
	                AudioCustom_cursor2 = 0;
                
	                aud_play_sound(get_audio_theme_track(CONFIRM_SOUND_THEME1));
	                audio_group_stop_all(audiogroup_mus);
	                Audio.can_play_mus_rm_body = false;
	                can_play_boss_music_at_open_RandomCustom = Audio.can_play_boss_music;
	                Audio.can_play_boss_music  = false;
                
	                timer=0;
	                Menu_in_focus=Menu_AUDIO_CUSTOM;
	                exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	            }
	        }
	    }
	    break;}//case MainOption_MUSIC_SET
    
    
	    case MainOption_INPUT_CONFIG:{
	    if (start_button_pressed 
	    ||  keyboard_check_pressed(vk_space) 
	    ||  keyboard_check_pressed(vk_enter) )
	    {
	        InputConfigOption = InputConfigOption_RIGHT;
	        aud_play_sound(get_audio_theme_track(CONFIRM_SOUND_THEME1));
	        timer=0;
	        Menu_in_focus=Menu_INPUT_CONFIG;
	        exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	    }
	    break;}//case MainOption_INPUT_CONFIG
    
    
	    case MainOption_DEV_TOOLS:{
	    if (start_button_pressed 
	    ||  keyboard_check_pressed(vk_space) 
	    ||  keyboard_check_pressed(vk_enter) )
	    {
	        DevTools_cursor = DevTools_DEV_TOOLS_STATE;
	        aud_play_sound(get_audio_theme_track(CONFIRM_SOUND_THEME1));
	        timer=0;
	        Menu_in_focus=Menu_DEV_TOOLS;
	        exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	    }
	    break;}//case MainOption_DEV_TOOLS
    
    
	    case MainOption_RANDO_OPTIONS:{
	    if (start_button_pressed 
	    ||  keyboard_check_pressed(vk_space) 
	    ||  keyboard_check_pressed(vk_enter) )
	    {
	        RandoOptions_state = RandoOptions_state_MAIN;
	        RandoOptions_cursor = 0;
	        aud_play_sound(get_audio_theme_track(CONFIRM_SOUND_THEME1));
	        timer=0;
	        Menu_in_focus=Menu_RANDO_OPTIONS;
	        exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	    }
	    break;}//case MainOption_RANDO_OPTIONS
    
    
	    case MainOption_FORCE_GAMEOVER:{
	    if (start_button_pressed 
	    ||  keyboard_check_pressed(vk_space) 
	    ||  keyboard_check_pressed(vk_enter) )
	    {
	        with(QuitAppMenu) QuitAppMenu_trigger_open();
	        //aud_play_sound(get_audio_theme_track(CONFIRM_SOUND_THEME1));
	        exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	    }
	    break;}//case MainOption_RANDO_OPTIONS
	}//switch(MainOption)









	var _VERTICAL   = bit_dir(gui_tmr_cursor_v()); // 0,1,-1
	var _HORIZONTAL = bit_dir(gui_tmr_cursor_h()); // 0,1,-1


	if (abs(_VERTICAL))
	{
	    for(var _i=0; _i<MainOption_COUNT; _i++)
	    {
	        MainOption += MainOption_COUNT;
	        MainOption += _VERTICAL;
	        MainOption  = MainOption mod MainOption_COUNT;
        
	        if (MainOption==MainOption_RANDO_OPTIONS 
	        && !RandoOptionsMenu_is_available )
	        {
	            continue;//_i
	        }
        
	        if (MainOption==MainOption_CLOSE 
	        ||  OptionsMenu_option_is_avail(Menu_MAIN,MainOption) )
	        {
	            break;//_i
	        }
	    }
	    //sdm("MainOption_COUNT "+string(MainOption_COUNT)+", MainOption "+string(MainOption));
    
	    aud_play_sound(get_audio_theme_track(CURSOR_SOUND_THEME1));
	    //sdm("update_OptionsMenu() A");
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}


	if (abs(_HORIZONTAL))
	{
	    OptionsMenu_update_1a(_HORIZONTAL);
	    aud_play_sound(get_audio_theme_track(CURSOR_SOUND_THEME1));
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}







}
