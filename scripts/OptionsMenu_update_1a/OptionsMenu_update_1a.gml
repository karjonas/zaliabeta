/// @description  OptionsMenu_update_1a(adjust dir)
function OptionsMenu_update_1a(argument0) {


	var _DIR = argument0;

	switch(MainOption)
	{
	    // ---------------------------------------------------------
	    // ---------------------------------------------------
	    case MainOption_SND_VOL:{
	    //Audio.snd_vol = clamp(Audio.snd_vol+_DIR, 0,10);
	    //audio_group_set_gain(audiogroup_snd, Audio.snd_vol/10, 0);
	    if (inRange(Audio.snd_vol+_DIR, 0,10))
	    {
	        Audio.snd_vol += _DIR;
	        audio_group_set_gain(audiogroup_snd, Audio.snd_vol/10, 0);
	        save_game_pref();
	    }
	    break;}
    
    
    
    
    
	    // ---------------------------------------------------------
	    // ---------------------------------------------------
	    case MainOption_MUSIC_SET:{
	    with(Audio)
	    {
	        var _SIZE = ds_list_size(dl_AUDIO_SETS);
	        if (_SIZE>1)
	        {
	            var _dl_AUDIO_SETS_idx  = max(0, ds_list_find_index(dl_AUDIO_SETS,audio_set));
	            var _dl_AUDIO_SETS_idx_PREV = _dl_AUDIO_SETS_idx;
	                _dl_AUDIO_SETS_idx += _SIZE;
	                _dl_AUDIO_SETS_idx += _DIR;
	                _dl_AUDIO_SETS_idx  = _dl_AUDIO_SETS_idx mod _SIZE;
	            audio_set = string(dl_AUDIO_SETS[|_dl_AUDIO_SETS_idx]);
	            //sdm("audio_set: "+audio_set);
	            save_game_pref();
            
            
            
	            // The following replaces the music right away without having to change rooms.
	            if (_dl_AUDIO_SETS_idx!=_dl_AUDIO_SETS_idx_PREV  // if the audio set changed
	            &&  audio_is_playing(mus_rm_inst) ) // if there's anything to replace. Does a music inst NEED to be playing to play a diff track??
	            {
	                var _THEME = dm_music_inst[?string(mus_rm_inst)+STR_Theme]; // Theme of mus_rm_inst (might not be mus_rm_body)
	                if(!is_undefined(_THEME))
	                {
	                    //sdm("_THEME: "+_THEME);
	                    var _BODY = get_audio_theme_track(_THEME); // This is the body of the replacement track which could be something temporary like a boss track.
	                    //sdm("_THEME: "+_THEME+", _BODY: "+string(_BODY));
	                    //if (_BODY) sdm("_THEME: "+_THEME+", _BODY: "+sound_get_name(_BODY)+", audio_is_playing(_BODY): "+string(audio_is_playing(_BODY)));
	                    if (_BODY)
	                    {
	                        var _mus_rm_inst_IS_INTRO = val(dm[?sound_get_name(mus_rm_inst)+"_Is"+STR_Intro]);
	                        var _INTRO = val(dm[?audio_get_name(_BODY)+STR_Intro]);
	                        if((!_mus_rm_inst_IS_INTRO && !audio_is_playing(_BODY)) 
	                        ||  (_mus_rm_inst_IS_INTRO && _INTRO && !audio_is_playing(_INTRO)) )
	                        {
	                            if (can_play_mus_rm_body 
	                            ||  sound_get_name(_BODY)!=sound_get_name(mus_rm_body) ) // '!can_play_mus_rm_body' would mean only mus_rm_body isn't allowed to play
	                            {
	                                var _new_track = _BODY; // Will replace mus_rm_inst if it's a different track.
	                                var _mus_rm_inst_percentage_played = 0; // Tracks what percentage of mus_rm_inst has played so its replacement starts the same percentage through.
	                                if (_mus_rm_inst_IS_INTRO)
	                                {
	                                    if (_INTRO  // if the replacement has an intro
	                                    && !audio_is_playing(_INTRO) )
	                                    {
	                                        _new_track = _INTRO;
	                                        _mus_rm_inst_percentage_played = audio_sound_get_track_position(mus_rm_inst) / audio_sound_length(mus_rm_inst);
	                                    }
	                                }
	                                else
	                                {
	                                    _mus_rm_inst_percentage_played = audio_sound_get_track_position(mus_rm_inst) / audio_sound_length(mus_rm_inst);
	                                }
                                
                                
	                                var _LOOP = !_mus_rm_inst_IS_INTRO && _new_track!=_INTRO && val(dm_music_inst[?string(mus_rm_inst)+STR_Loop]);
	                                var _INST = aud_play_sound(_new_track, PRIORITY_TOP, _LOOP, -1, _THEME);
	                                if (_INST 
	                                &&  _mus_rm_inst_percentage_played>0 )
	                                {   // Have new track start the same percentage through what it replaced.
	                                    // I think this is as close you can get to syncing since the replacement track may be a different tempo.
	                                    audio_sound_set_track_position(_INST, audio_sound_length(_INST)*_mus_rm_inst_percentage_played);
	                                }
	                            }
	                        }
	                    }
	                }
	            }
            
            
	            mus_rm_body = get_audio_theme_track(rm_music_theme);
	            mus_rm_intr = val(dm[?audio_get_name(mus_rm_body)+STR_Intro]);
	            //mus_rm_intr = get_audio_theme_track_intro(mus_rm_body);
	        }
	    }
	    break;}
    
    
    
    
    
	    // ---------------------------------------------------------
	    // ---------------------------------------------------
	    case MainOption_MUS_VOL:{
	    if(inRange(Audio.mus_vol+_DIR, 0,10))
	    {
	        Audio.mus_vol += _DIR;
	        audio_group_set_gain(audiogroup_mus, Audio.mus_vol/10, 0);
	        save_game_pref();
	    }
	    break;}
    
    
    
    
    
	    // ---------------------------------------------------------
	    // ---------------------------------------------------
	    case MainOption_PC_SPRITES:{
	    with(g.pc)
	    {
	        var _Skin_COUNT = val(dm_skins[?STR_Set+STR_Count],1);
	        if (_Skin_COUNT>1)
	        {
	            var _Skin_IDX = val(dm_skins[?STR_Current+STR_Idx]);
	            if (_Skin_IDX>=0 
	            &&  _Skin_IDX<_Skin_COUNT )
	            {
	                _Skin_IDX += _Skin_COUNT;
	                _Skin_IDX += _DIR;
	                _Skin_IDX  = _Skin_IDX mod _Skin_COUNT;
	                dm_skins[?STR_Current+STR_Idx] = _Skin_IDX;
                
	                var _DK    = val(dm_skins[?hex_str(_Skin_IDX)+STR_Datakey], STR_undefined);
	                Skin_image = val(dm_skins[?_DK+STR_Sprite], PCSkin_DEFAULT_SPRITE);
                
	                save_game_pref();
                
                
	                var _palette = p.pal_rm_curr;
	                //var _palette = p.pal_rm_new;
                
	                var _pal = get_pc_skin_palette(_Skin_IDX);
	                _palette = strReplaceAt(_palette, get_pal_pos(PI_PC_1),     string_length(_pal),_pal);
                
	                _pal = get_pc_sword_palette(true);
	                _palette = strReplaceAt(_palette, get_pal_pos(PI_PC_SWORD), string_length(_pal), _pal);
                
	                change_pal(_palette);
	            }
	        }
	    }
	    break;}
    
    
    
    
    
	    // ---------------------------------------------------------
	    // ---------------------------------------------------
	    case MainOption_FULLSCREEN:{
	    //save_game_pref();
	    break;}
    
    
    
    
    
	    // ---------------------------------------------------------
	    // ---------------------------------------------------
	    case MainOption_APP_SCALE:{
	    //save_game_pref();
	    break;}
    
    
    
    
    
	    // ---------------------------------------------------------
	    // ---------------------------------------------------
	    case MainOption_FLASHING:{
	    var _SIZE = ds_list_size(p.dl_BackgroundFlash_COLORS);
	    p.BackgroundFlash_setting += _SIZE;
	    p.BackgroundFlash_setting += _DIR;
	    p.BackgroundFlash_setting  = p.BackgroundFlash_setting mod _SIZE;
    
	    //g.mod_BackgroundFlashing_state = !g.mod_BackgroundFlashing_state;
	    save_game_pref();
	    break;}
    
    
    
    
    
	    // ---------------------------------------------------------
	    // ---------------------------------------------------
	    case MainOption_SCREEN_SHAKE:{
	    g.ScreenShake_user_pref = !g.ScreenShake_user_pref;
	    save_game_pref();
	    break;}
    
    
    
    
    
	    // ---------------------------------------------------------
	    // ---------------------------------------------------
	    case MainOption_DIALOGUE_SPEED:{
	    g.mod_DLG_SPEED = clamp(g.mod_DLG_SPEED+_DIR, 0,5);
	    save_game_pref();
	    break;}
    
    
    
    
    
	    // ---------------------------------------------------------
	    // ---------------------------------------------------
	    //case MainOption_SHOW_ACTIVE_SPELLS:{
	    //g.mod_IndicateSpellActive = !g.mod_IndicateSpellActive;
	    //save_game_pref();
	    //break;}
    
    
    
    
	    /*
	    // ---------------------------------------------------------
	    // ---------------------------------------------------
	    case MainOption_HUD_STATE:{
	    g.HUD_state = !g.HUD_state;
	    //g.HUD_state = (g.HUD_state+_DIR+g.HUD_state_COUNT) mod g.HUD_state_COUNT;
	    save_game_pref();
	    break;}
	    */
    
    
    
    
	    // ---------------------------------------------------------
	    // ---------------------------------------------------
	    case MainOption_TORCH_LIGHTING:{
	    g.torch_lighting_method = !g.torch_lighting_method;
	    save_game_pref();
	    break;}
    
    
    
    
	    // ---------------------------------------------------------
	    // ---------------------------------------------------
	    //case MainOption_RENDER_DELAY:{
	    //g.RenderFrameDelay_state = !g.RenderFrameDelay_state;
	    ////g.RenderFrameDelay_timer = $48;
	    //save_game_pref();
	    //break;}
    
    
    
    
    
	    // ---------------------------------------------------------
	    // ---------------------------------------------------
	    case MainOption_STAB_FRENZY:{
	    g.mod_StabFrenzy = !g.mod_StabFrenzy;
	    save_game_pref();
	    break;}
    
    
    
    
    
	    // ---------------------------------------------------------
	    // ---------------------------------------------------
	    case MainOption_ANARKHYA_OW:{
	    if (g.room_type=="A")
	    {
	        g.anarkhyaOverworld_use = !g.anarkhyaOverworld_use;
	        save_game_pref();
	    }
	    break;}
    
    
    
    
    
	    // ---------------------------------------------------------
	    // ---------------------------------------------------
	    case MainOption_HALLOWEEN1:{
	    global.Halloween1_enabled = !global.Halloween1_enabled;
	    save_game_pref();
	    break;}
    
    
    
    
    
	    // ---------------------------------------------------------
	    // ---------------------------------------------------
	    //case MainOption_CUCCO_PERMANANT:{
	    //    g.CuccoSpell2_Option = !g.CuccoSpell2_Option;
	    //if(!g.CuccoSpell2_Option)
	    //{   g.CuccoSpell2_Active = 0;  }
	    //save_game_pref();
	    //break;}
    
    
    
    
	    // ---------------------------------------------------------
	    // ---------------------------------------------------
	    //case MainOption_RANDO_PALETTE:{
	    //g.RandoPalette_state = (g.RandoPalette_state+1+g.RandoPalette_STATE_COUNT) mod g.RandoPalette_STATE_COUNT;
	    ////g.RandoPalette_state = !g.RandoPalette_state;
	    //save_game_pref();
	    //break;}
    
    
    
    
	    // ---------------------------------------------------------
	    // ---------------------------------------------------
	    //case MainOption_RANDO_ENEMY:{
	    //g.Rando_enemy = !g.Rando_enemy;
	    //save_game_pref();
	    //break;}
    
    
    
    
	    // ---------------------------------------------------------
	    // ---------------------------------------------------
	    //case MainOption_RANDO_OW_TILES:{
	    //global.can_rando_ow_tsrc = !global.can_rando_ow_tsrc;
	    //save_game_pref();
	    //break;}
    
    
    
    
	    // ---------------------------------------------------------
	    // ---------------------------------------------------
	    //case MainOption_MAPS_SHOW_KEYS:{
	    //g.RandoKeys_MAP_items_show_keys = !g.RandoKeys_MAP_items_show_keys;
	    //save_game_pref();
	    //break;}
    
    
    
    
	    // ---------------------------------------------------------
	    // ---------------------------------------------------
	    //case MainOption_MARK_ACQUIRED:{
	    //g.can_mark_acquired_item_locations = !g.can_mark_acquired_item_locations;
	    //save_game_pref();
	    //break;}
    
    
    
    
	    // ---------------------------------------------------------
	    // ---------------------------------------------------
	    //case MainOption_HIDDEN_EXIT_HELP:{
	    //g.hidden_item_exits_help = !g.hidden_item_exits_help;
	    //save_game_pref();
	    //break;}
    
    
    
    
	    // ---------------------------------------------------------
	    // ---------------------------------------------------
	    default:{
    
	    break;}
	}







}
