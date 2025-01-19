/// @description  Audio_update_2()
function Audio_update_2() {


	if (audio_is_playing(mus_rm_inst))
	{   // TODO: Finish converting all tracks to this new system. 2024/10/11
	    var _NAME = dm_music_inst[?string(mus_rm_inst)+STR_Audio+STR_Asset+STR_Name];
	    if(!is_undefined(_NAME))
	    {
	        var _INTRO_LEN = val(dm[?_NAME+STR_Intro+STR_Length]);
	        if (_INTRO_LEN>0)
	        {
	            var _BODY_LEN = val(dm[?_NAME+STR_Body+STR_Length]);
	            var _POS = audio_sound_get_track_position(mus_rm_inst);
	            if (_POS>=(_INTRO_LEN+_BODY_LEN))
	            {
	                audio_sound_set_track_position(mus_rm_inst, _POS-_BODY_LEN);
	            }
            
	            exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	        }
	    }
	}










	// ------------------------------------------------------------------------
	if (can_play_boss_music 
	&& !audio_is_playing(mus_rm_inst) 
	&&  instance_exists(Boss) )
	{
	    //sdm("Audio_update(): "+"Boss.MusicBattle_THEME: "+Boss.MusicBattle_THEME+", Boss.MusicBattle_BODY: "+audio_get_name(Boss.MusicBattle_BODY)+", Boss.MusicBattle_INTRO: "+audio_get_name(Boss.MusicBattle_INTRO)+", mus_rm_inst: "+string(mus_rm_inst)+" val(dm_music_inst[?string(mus_rm_inst)+STR_Audio+STR_Asset+STR_Name]) "+string(val(dm_music_inst[?string(mus_rm_inst)+STR_Audio+STR_Asset+STR_Name]))+" "+audio_get_name(mus_rm_inst));
	    if ( Boss.MusicBattle_BODY 
	    && (!Boss.MusicBattle_INTRO || val(dm_music_inst[?string(mus_rm_inst)+STR_Audio+STR_Asset+STR_Name])==audio_get_name(Boss.MusicBattle_INTRO)) )
	    {
	        aud_play_sound(Boss.MusicBattle_BODY, PRIORITY_TOP, true, -1, Boss.MusicBattle_THEME);
	        //sdm("aud_play_sound(Boss.MusicBattle_BODY");
	    }
	    else
	    {
	        aud_play_sound(get_audio_theme_track(STR_Boss+"01"), PRIORITY_TOP, true, -1, STR_Boss+"01");
	        //sdm("aud_play_sound(get_audio_theme_track(STR_Boss+'01')");
	    }
	}
	//var _PREV_INST_THEME = val(dm_music_inst[?string(mus_rm_inst)+STR_Theme]);
	//dm_music_inst[?string(mus_rm_inst)+STR_Audio+STR_Asset+STR_Name]









	// ------------------------------------------------------------------------
	// ------------------------------------------------------------------------
	// ------------------------------------------------------------------------
	// Play mus_rm_intr OR mus_rm_body ----------------------------------------

	// NOTE: When changing rooms, on Room_Start, if the theme is different from the prev 
	// room, there is a short period of time where music is stopped until 
	// g.ChangeRoom_timer reaches 0. During this period, if the theme is the same, 
	// you still need to check if the intro is ending to start the body on time, otherwise 
	// there could be a gap in between the intro and body. As of 2024/10/01 I've 
	// removed the `g.ChangeRoom_timer<=0` condition here and instead set  
	// `can_play_mus_rm_body` in Audio_Room_Start() and update_change_room().

	if (can_play_mus_rm_body 
	&&  mus_rm_body!=0   // if mus_rm_body==0, there's no intro
	&& !audio_is_playing(mus_rm_inst) )
	//&&  g.ChangeRoom_timer<=0 ) // g.ChangeRoom_timer might not be a whole number. NEED <=0 check
	{
	    var _audio_asset = 0;
	    var _play_pos = 0;
    
	    var _NAME = audio_get_name(mus_rm_body);
	    var _INTRO_LEN = val(dm[?_NAME+STR_Intro+STR_Length]);
	    if (_INTRO_LEN>0)
	    {
	        if(!val(dm[?rm_music_theme+dk_Intro_CanPlay])) _play_pos = _INTRO_LEN + 000.001;
	        dm[?rm_music_theme+dk_Intro_CanPlay] = false;
	        _audio_asset = mus_rm_body;
	    }
	    else
	    {
	        if (mus_rm_intr!=0 
	        &&  val(dm[?rm_music_theme+dk_Intro_CanPlay]) )
	        {
	                dm[?rm_music_theme+dk_Intro_CanPlay] = false;
	            _audio_asset = mus_rm_intr;
	        }
	        else
	        {
	            _audio_asset = mus_rm_body;
	        }
	    }
	    //sdm("audio_get_name(mus_rm_intr) '"+audio_get_name(mus_rm_intr)+"', "+"audio_get_name(mus_rm_body) '"+audio_get_name(mus_rm_body)+"', "+"audio_get_name(_audio_asset) '"+audio_get_name(_audio_asset)+"', ");
    
	    if (_audio_asset)
	    {
	        //var _interruper_inst_theme = val(dm_music_inst[?string(mus_rm_inst)+STR_Theme]);
        
        
	        // ==============================================================================
	        aud_play_sound(_audio_asset, PRIORITY_TOP, _audio_asset==mus_rm_body, -1, rm_music_theme);
	        // ==============================================================================
	        //sdm("Audio_update(). Sound played: "+audio_get_name(_audio_asset));
	        //if (room==rmB_Title) sdm("mus_rm_intr: "+audio_get_name(mus_rm_intr)+", mus_rm_body: "+audio_get_name(mus_rm_body)+", mus_rm_inst: "+audio_get_name(mus_rm_inst));
        
	        if (_play_pos>0) audio_sound_set_track_position(mus_rm_inst, _play_pos);
        
        
        
	        // This is to prevent long tracks from starting over if it's interupted by something like a level-up
	        if (mus_rm_body_last_pos>0 
	        &&  mus_asset_name_interrupted!=0 
	        &&  val(dm[?dk_SceneMusicThemeException+"02"+mus_asset_name_interrupted]) )
	        {
	            var _NAME = audio_get_name(mus_rm_inst);
	            if (val(dm[?dk_SceneMusicThemeException+"02"+_NAME])) // if it was a track that should continue after an interruption
	            {
	                if ((mus_rm_intr && _NAME==audio_get_name(mus_rm_intr) && _NAME==mus_asset_name_interrupted) 
	                ||  (mus_rm_body && _NAME==audio_get_name(mus_rm_body) && _NAME==mus_asset_name_interrupted) )
	                {
	                    mus_asset_name_interrupted = 0;
                    
	                    audio_sound_set_track_position(mus_rm_inst, mus_rm_body_last_pos);
	                    audio_sound_gain(mus_rm_inst, 0,0);
	                    audio_sound_gain(mus_rm_inst, val(dm[?_NAME+STR_Volume],.5), 500);
	                }
	            }
	        }
	        /*
	        // This is to prevent long tracks from starting over if it's interupted by something like a level-up
	        if (SceneThemeException_VER==1 
	        &&  mus_rm_body_last_pos>0 
	        &&  _interruper_inst_theme!=0 
	        &&  val(dm[?dk_SceneMusicThemeException+"02"+string(_interruper_inst_theme)]) ) // if it was an interrupter track
	        {
	            var _NAME = audio_get_name(mus_rm_inst);
	            if (val(dm[?dk_SceneMusicThemeException+"02"+_NAME])) // if it was a track that should continue after an interruption
	            {
	                if ((mus_rm_intr && _NAME==audio_get_name(mus_rm_intr)) 
	                ||  (mus_rm_body && _NAME==audio_get_name(mus_rm_body)) )
	                {
	                    audio_sound_set_track_position(mus_rm_inst, mus_rm_body_last_pos);
	                    audio_sound_gain(mus_rm_inst, 0,0);
	                    audio_sound_gain(mus_rm_inst, val(dm[?_NAME+STR_Volume],.5), 500);
	                }
	            }
	        }
	        */
	    }
	}



	if (mus_rm_body!=0 
	&&  audio_is_playing(mus_rm_body) )
	{
	    mus_asset_name_interrupted = 0;
	}




	// ------------------------------------------------------------------------
	if (encounter_sound_inst 
	&& !audio_is_playing(encounter_sound_inst) )
	{
	    encounter_sound_inst = 0;
	}







}
