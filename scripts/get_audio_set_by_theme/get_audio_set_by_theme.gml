/// @description  get_audio_set_by_theme(theme)
function get_audio_set_by_theme() {

	// This will get the right audio set in case Audio.audio_set is random


	var _THEME = argument[0];

	var _return_set = Audio.dl_AUDIO_SETS[|0];

	with(Audio)
	{
	    if(!string_pos("RANDOM",string_upper(audio_set)))
	    {
	        _return_set = audio_set;
	    }
	    else
	    {
	        var _TRACK_COUNT = val(dm[?_THEME+STR_Track+STR_Count]);
	        //sdm("_TRACK_COUNT "+string(_TRACK_COUNT));
        
	        if (_TRACK_COUNT>1)
	        {
	            switch(audio_set)
	            {
	                // ---------------------------------------------------------------
	                default:{
	                var _NUM = irandom(_TRACK_COUNT-1)+1;
	                _return_set = val(dm[?_THEME+STR_Track+hex_str(_NUM)+STR_Set], _return_set);
	                break;}//default
                
                
	                // ---------------------------------------------------------------
	                case dk_RandomCustom:{
	                var _DK1 = STR_Unique+STR_Track;
	                var _COUNT = val(dm[?_THEME+_DK1+STR_Count+STR_Music]);
	                if (_COUNT)
	                {
	                    var _i, _set;
	                    var _dl_sets = ds_list_create();
	                    for(_i=1; _i<=_COUNT; _i++)
	                    {
	                        _set = dm[?_THEME+_DK1+STR_Music+hex_str(_i)+STR_Set];
	                        if(!is_undefined(_set) 
	                        &&  val(dm_random_custom[?_THEME+hex_str(_i)+STR_Qualified]) ) // if it's set in the AUDIO CUSTOM audio set
	                        {
	                            ds_list_add(_dl_sets,_set);
	                        }
	                    }
                    
	                    if (ds_list_size(   _dl_sets))
	                    {
	                        ds_list_shuffle(_dl_sets);
	                        _return_set =   _dl_sets[|0];
	                    }
                    
	                    ds_list_destroy(_dl_sets); _dl_sets=undefined;
	                }
	                else
	                {
	                    var _NUM = irandom(_TRACK_COUNT-1)+1;
	                    _return_set = val(dm[?_THEME+_DK1+hex_str(_NUM)+STR_Set], _return_set);
	                }
	                break;}//case dk_RandomCustom
	            }//switch(audio_set)
	        }
	    }
	}


	return _return_set;







}
