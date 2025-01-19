/// @description  OptionsMenu_AudioCustom_update()
function OptionsMenu_AudioCustom_update() {


	var _val;

	var _Input_CONFIRM       = start_button_pressed || a_button_pressed;

	var _Input_SubMenu_OPEN  = right_input_pressed || a_button_pressed;
	var _Input_SubMenu_CLOSE = left_input_pressed || Backout_requested;

	var _Input_TOGGLE        = start_button_pressed;



	// -------------------------------------------------------------------------------
	OptionsMenu_AudioCustom_refresh_indicator_states();




	// -------------------------------------------------------------------------------
	if (Input.Other2_pressed  // xbox Y
	||  keyboard_check_pressed(AudioCustom_PLAY_KEY) )
	{
	    if (AudioCustom_track_inst)
	    {
	        if (audio_is_playing(AudioCustom_track_inst))
	        {   audio_stop_sound(AudioCustom_track_inst);  }
	        AudioCustom_track_inst = 0;
	    }
	    else
	    {
	        if (dg_AudioCustom[#AudioCustom_cursor,2] 
	        &&  AudioCustom_cursor>=AudioCustom_Themes_IDX 
	        &&  AudioCustom_cursor<=AudioCustom_Themes_IDX+val(Audio.dm[?STR_Theme+STR_Count+STR_Music]) )
	        {
	            var _THEME = dg_AudioCustom[#AudioCustom_cursor,0];
	            var _SOUND = Audio.dm[?_THEME+STR_Track+STR_Music+hex_str(AudioCustom_cursor2+1)];
	            //Audio.dm[?_THEME+_SET] = _SOUND;
	            if(!is_undefined(_SOUND))
	            {
	                //audio_group_stop_all(audiogroup_mus);
	                AudioCustom_track_inst = aud_play_sound(_SOUND, Audio.PRIORITY_TOP, true, -1, _THEME);
	            }
	        }
	    }
    
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}






	// -------------------------------------------------------------------------------
	if (select_button_pressed 
	||  Input.pressedV )
	{
	    var _DIR = sign_(select_button_pressed || down_input_pressed);
    
	    if (dg_AudioCustom[#AudioCustom_cursor,2]) // 2: open state
	    {
	        if (AudioCustom_cursor==AudioCustom_TOGGLE_SET)
	        {
	            var _COUNT = Audio.AudioSets_COUNT;
	        }
	        else
	        {
	            var _COUNT = val(Audio.dm[?dg_AudioCustom[#AudioCustom_cursor,0]+STR_Track+STR_Count+STR_Music]);
	        }
        
	        if (_COUNT>1)
	        {
	            if (                 AudioCustom_track_inst 
	            &&  audio_is_playing(AudioCustom_track_inst))
	            {   audio_stop_sound(AudioCustom_track_inst);  }
	            AudioCustom_track_inst=0;
            
	            AudioCustom_cursor2 += _DIR;
	            AudioCustom_cursor2 += _COUNT;
	            AudioCustom_cursor2  = AudioCustom_cursor2 mod _COUNT;
	        }
        
	        aud_play_sound(get_audio_theme_track(CURSOR_SOUND_THEME1));
	    }
	    else
	    {
	        var _COUNT = AudioCustom_COUNT;
	        AudioCustom_cursor += _DIR;
	        AudioCustom_cursor += _COUNT;
	        AudioCustom_cursor  = AudioCustom_cursor mod _COUNT;
        
	        // Prevent spoiling Ganon
	        //f.dm_quests[?"_Has_Reached"+STR_Ganon+"1"] = true;
        
	        aud_play_sound(get_audio_theme_track(CURSOR_SOUND_THEME1));
	        AudioCustom_cursor2 = 0;
	        dg_AudioCustom[#AudioCustom_cursor,2] = false;
	    }
    
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}





	// -------------------------------------------------------------------------------
	if (Backout_requested 
	&&  AudioCustom_cursor!=AudioCustom_BACK 
	&& !dg_AudioCustom[#AudioCustom_cursor,2] ) // 2: open state
	{
	    aud_play_sound(get_audio_theme_track(BACK_SOUND_THEME1));
	    AudioCustom_cursor = AudioCustom_BACK;
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}







	// -------------------------------------------------------------------------------
	switch(AudioCustom_cursor)
	{
	    // ------------------------------------------------------
	    case AudioCustom_BACK:{
	    if (_Input_CONFIRM 
	    ||  Backout_requested )
	    {
	        with(Audio)
	        {
	            audio_group_stop_all(audiogroup_mus);
	            var _MUSIC = val(dm[?rm_music_theme+audio_set], STR_Default);
	            if (_MUSIC) aud_play_sound(_MUSIC, PRIORITY_TOP, true, -1, rm_music_theme);
	            can_play_mus_rm_body = true;
	            can_play_boss_music  = other.can_play_boss_music_at_open_RandomCustom;
	        }
        
	        AudioCustom_cursor = 0;
	        aud_play_sound(get_audio_theme_track(BACK_SOUND_THEME1));
	        Menu_in_focus = Menu_MAIN;
	        exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	    }
	    break;}//case AudioCustom_BACK
    
    
    
    
    
    
    
    
	    // ------------------------------------------------------
	    case AudioCustom_TOGGLE_ALL:{
	    if (_Input_TOGGLE)
	    {
	        with(Audio)
	        {
	            var _STATE = val(other.dm_AudioCustom[?"_Indicator"+STR_State+"_ToggleAll"]);
	                _STATE = _STATE<2;
	            other.dm_AudioCustom[?"_Indicator"+STR_State+"_ToggleAll"] = 2 * (_STATE==1);
            
	            _count1 = val(dm[?STR_Theme+STR_Count+STR_Music]);
	            for(_i=1; _i<=_count1; _i++)
	            {
	                _theme = dm[?STR_Theme+STR_Music+hex_str(_i)];
	                _count2 = val(dm[?_theme+STR_Track+STR_Count+STR_Music]);
	                for(_j=1; _j<=_count2; _j++)
	                {
	                    dm_random_custom[?_theme+hex_str(_j)+STR_Qualified] = _STATE;
	                }
	            }
	        }
        
	        aud_play_sound(get_audio_theme_track(CONFIRM_SOUND_THEME1));
	        save_game_pref();
	    }
	    break;}//case AudioCustom_TOGGLE_ALL
    
    
    
    
    
    
    
    
	    // ------------------------------------------------------
	    case AudioCustom_TOGGLE_SET:{
	    if (dg_AudioCustom[#AudioCustom_cursor,2])
	    {
	        if (_Input_TOGGLE)
	        {
	            with(Audio)
	            {
	                var _i,_j, _count1,_count2;
	                var _theme, _set1,_set2;
                
	                _set1 = dl_AUDIO_SETS[|other.AudioCustom_cursor2];
	                var _STATE = val(other.dm_AudioCustom[?"_Indicator"+STR_State+_set1]);
	                    _STATE = _STATE<2;
	                other.dm_AudioCustom[?"_Indicator"+STR_State+_set1] = 2 * (_STATE==1);
                
	                _count1 = val(dm[?STR_Theme+STR_Count+STR_Music]);
	                for(_i=1; _i<=_count1; _i++)
	                {
	                    _theme = dm[?STR_Theme+STR_Music+hex_str(_i)];
	                    _count2 = val(dm[?_theme+STR_Track+STR_Count+STR_Music]);
	                    for(_j=1; _j<=_count2; _j++)
	                    {
	                        _set2 = val(dm[?_theme+STR_Track+STR_Music+hex_str(_j)+STR_Set]);
	                        if (_set1==_set2)
	                        {
	                            dm_random_custom[?_theme+hex_str(_j)+STR_Qualified] = _STATE;
	                        }
	                    }
	                }
	            }
            
	            aud_play_sound(get_audio_theme_track(CONFIRM_SOUND_THEME1));
	            save_game_pref();
	        }
	        else if (_Input_SubMenu_CLOSE)
	        {
	            if (                 AudioCustom_track_inst 
	            &&  audio_is_playing(AudioCustom_track_inst))
	            {   audio_stop_sound(AudioCustom_track_inst);  }
	            AudioCustom_track_inst=0;
            
	            aud_play_sound(get_audio_theme_track(CONFIRM_SOUND_THEME1));
	            AudioCustom_cursor2 = 0;
	            dg_AudioCustom[#AudioCustom_cursor,2] = false; // 2: open state
	        }
	    }
	    else if (_Input_SubMenu_OPEN)
	    {
	        aud_play_sound(get_audio_theme_track(CONFIRM_SOUND_THEME1));
	        AudioCustom_cursor2 = 0;
	        dg_AudioCustom[#AudioCustom_cursor,2] = true; // 2: open state
	    }
	    break;}//case AudioCustom_TOGGLE_SET
    
    
    
    
    
    
    
    
	    // ------------------------------------------------------
	    default:{
	    if (AudioCustom_cursor>=AudioCustom_Themes_IDX 
	    &&  AudioCustom_cursor<=AudioCustom_Themes_IDX+val(Audio.dm[?STR_Theme+STR_Count+STR_Music]) )
	    {
	        var _THEME = Audio.dm[?STR_Theme+STR_Music+hex_str((AudioCustom_cursor-AudioCustom_Themes_IDX)+1)];
        
	        if (dg_AudioCustom[#AudioCustom_cursor,2]) // 2: open state
	        {
	            if (_Input_TOGGLE)
	            {
	                if(!is_undefined(_THEME))
	                {
	                    var _DK = _THEME+hex_str(AudioCustom_cursor2+1)+STR_Qualified;
	                    Audio.dm_random_custom[?_DK] = !val(Audio.dm_random_custom[?_DK]);
	                    aud_play_sound(get_audio_theme_track(CONFIRM_SOUND_THEME1));
	                    save_game_pref();
	                }
	            }
	            else
	            {
	                if (_Input_SubMenu_CLOSE 
	                &&  dg_AudioCustom[#AudioCustom_cursor,2] ) // 2: open state
	                {
	                    if (                 AudioCustom_track_inst 
	                    &&  audio_is_playing(AudioCustom_track_inst))
	                    {   audio_stop_sound(AudioCustom_track_inst);  }
	                    AudioCustom_track_inst=0;
                    
	                    aud_play_sound(get_audio_theme_track(CONFIRM_SOUND_THEME1));
	                    AudioCustom_cursor2 = 0;
	                    dg_AudioCustom[#AudioCustom_cursor,2] = false; // 2: open state
	                }
	            }
	        }
	        else
	        {
	            if (_Input_TOGGLE)
	            {
	                if(!is_undefined(_THEME))
	                {
	                    with(Audio)
	                    {
	                        var _i;
	                        var _STATE = val(other.dm_AudioCustom[?"_Indicator"+STR_State+_THEME]);
	                            _STATE = _STATE<2;
	                        other.dm_AudioCustom[?"_Indicator"+STR_State+_THEME] = 2 * (_STATE==1);
                        
	                        var _COUNT = val(dm[?_THEME+STR_Track+STR_Count+STR_Music]);
	                        for(_i=1; _i<=_COUNT; _i++)
	                        {
	                            dm_random_custom[?_THEME+hex_str(_i)+STR_Qualified] = _STATE;
	                        }
	                    }
                    
	                    aud_play_sound(get_audio_theme_track(CONFIRM_SOUND_THEME1));
	                    save_game_pref();
	                }
	            }
	            else
	            {
	                if (_Input_SubMenu_OPEN 
	                && !dg_AudioCustom[#AudioCustom_cursor,2] ) // 2: open state
	                {
	                    aud_play_sound(get_audio_theme_track(CONFIRM_SOUND_THEME1));
	                    AudioCustom_cursor2 = 0;
	                    dg_AudioCustom[#AudioCustom_cursor,2] = true; // 2: open state
	                }
	            }
	        }
	    }
	    break;}//default
	}//switch(AudioCustom_cursor)





	if (DEV 
	&&  keyboard_check_pressed(vk_f7) )
	{   // Output a list of what music you have on/off for Audio Random Custom
	    //dm[?STR_Audio+STR_Set+STR_Creator+STR_Name+dk_Nikos8BitStereo]
	    sdm("");sdm("");sdm("");sdm("");
	    var _i,_j, _count1,_count2;
	    var _theme, _set, _str;
	    var _LEN = $18;
	    _count1 = val(Audio.dm[?STR_Theme+STR_Count+STR_Music]);
	    for(_i=1; _i<=_count1; _i++)
	    {
	        _theme = Audio.dm[?STR_Theme+STR_Music+hex_str(_i)];
	        sdm(string_upper(_theme)+"  -  "+string(val(Audio.dm[?_theme+STR_Description])));
	        _count2 = val(Audio.dm[?_theme+STR_Track+STR_Count+STR_Music]);
	        for(_j=1; _j<=_count2; _j++)
	        {
	            _set = val(Audio.dm[?_theme+STR_Track+STR_Music+hex_str(_j)+STR_Set]);
	            _str = "    "+string_upper(_set);
	            _str+=string_repeat(" ", max(0,_LEN-string_length(_set)));
	            if (val(Audio.dm_random_custom[?_theme+hex_str(_j)+STR_Qualified])) _str+=" - YES";
	            sdm(_str);
	        }
	        sdm("");
	    }
	    sdm("");sdm("");sdm("");sdm("");
	}







}
