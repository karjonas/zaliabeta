/// @description  aud_play_sound(sound id, *priority, *loop, *volume, *theme)
function aud_play_sound() {


	var _inst = 0;


	with(Audio)
	{
	    var                                      _PRIORITY = $FF;
	    if (argument_count>1 && argument[1]!=-1) _PRIORITY = argument[1];
    
	    var                                      _LOOP = false;
	    if (argument_count>2 && argument[2]!=-1) _LOOP = argument[2];
    
	    var                                      _VOLUME = val(dm[?audio_get_name(argument[0])+STR_Volume], 1);
	    if (argument_count>3 && argument[3]!=-1) _VOLUME = argument[3];
	    _VOLUME = clamp(_VOLUME,0,1);
    
	    var                   _THEME = undefined;
	    if (argument_count>4) _THEME = argument[4];
    
    
	    // ---------------------------------------------------
	    if (sound_is_audio_group(argument[0], audiogroup_mus))
	    {   // MUSIC
        
	        //if (mus_rm_inst 
	        //&&  audio_is_playing(mus_rm_inst) 
	        if (mus_rm_body != -1 
	        &&  audio_is_playing(mus_rm_body) 
	        &&  val(dm[?dk_SceneMusicThemeException+"02"+audio_get_name(mus_rm_body)]) 
	        && !is_undefined(_THEME) 
	        &&  val(dm[?dk_SceneMusicThemeException+"02"+string(_THEME)])
	        &&  audio_get_name(mus_rm_body)!=audio_get_name(argument[0]) )
	        //&&  audio_get_name(mus_rm_inst)==
	        {
	            mus_asset_name_interrupted = audio_get_name(mus_rm_body);
	        }
        
        
	        audio_group_stop_all(audiogroup_mus);
        
        
	        _inst = audio_play_sound(argument[0], _PRIORITY, _LOOP);
	        mus_rm_inst = _inst;
        
	        //sdm("mus_rm_inst: "+string(mus_rm_inst));
	        if(!is_undefined(_THEME))
	        {
	            if (ds_map_size( dm_music_inst)>$FF)
	            {   // Just in case dm_music_inst_theme gets too big
	                ds_map_clear(dm_music_inst);
	            }
            
	            dm_music_inst[?string(_inst)+STR_Theme] = _THEME;
	            dm_music_inst[?string(_inst)+STR_Loop]  = _LOOP;
	            dm_music_inst[?string(_inst)+STR_Audio+STR_Asset+STR_Name] = audio_get_name(mus_rm_inst);
	        }
	        //sdm("aud_play_sound(): "+"_THEME: "+string(val(_THEME))+", mus_rm_inst: "+string(mus_rm_inst)+" val(dm_music_inst[?string(mus_rm_inst)+STR_Audio+STR_Asset+STR_Name]) "+string(val(dm_music_inst[?string(mus_rm_inst)+STR_Audio+STR_Asset+STR_Name]))+" "+audio_get_name(mus_rm_inst)+", _PRIORITY "+hex_str(_PRIORITY)+", _LOOP "+string(_LOOP)+", _VOLUME "+string(_VOLUME)); sdm("");
	    }
	    else
	    {   // SOUND
	                audio_stop_sound(argument[0]);
	        _inst = audio_play_sound(argument[0], _PRIORITY, _LOOP);
	    }
    
	    if (_inst) audio_sound_gain(_inst, _VOLUME, 0);
	}


	//sdm(""); sdm("aud_play_sound(). sound played: "+audio_get_name(_inst)+", played from: "+object_get_name(object_index)+", rm_music_theme: "+Audio.rm_music_theme); sdm("");
	return _inst;







}
