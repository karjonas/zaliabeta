/// @description  OptionsMenu_AudioCustom_refresh_indicator_states()
function OptionsMenu_AudioCustom_refresh_indicator_states() {


	with(Audio)
	{
	    var _i,_j, _count1,_count2;
	    var _theme, _set;
	    var _DK1 = "_Indicator"+STR_State;
    
	    var _dm = ds_map_create();
	    _dm[?"_All_On"]  = 1;
	    _dm[?"_All_Off"] = 1;
	    for(_i=0; _i<AudioSets_COUNT; _i++)
	    {
	        _set = dl_AUDIO_SETS[|_i];
	        _dm[?_set+"_All_On"]  = 1;
	        _dm[?_set+"_All_Off"] = 1;
	    }
    
    
	    _count1 = val(dm[?STR_Theme+STR_Count+STR_Music]);
	    for(_i=1; _i<=_count1; _i++) // Each theme with at least 1 mus track
	    {
	        _theme = dm[?STR_Theme+STR_Music+hex_str(_i)];
	        if(!is_undefined(_theme))
	        {
	            _dm[?_theme+"_All_On"]  = 1;
	            _dm[?_theme+"_All_Off"] = 1;
	        }
        
	        _count2 = val(dm[?_theme+STR_Track+STR_Count+STR_Music]);
	        for(_j=1; _j<=_count2; _j++)
	        {
	            _set = dm[?_theme+STR_Track+STR_Music+hex_str(_j)+STR_Set];
	            if (val(dm_random_custom[?_theme+hex_str(_j)+STR_Qualified]))
	            {
	                _dm[?"_All_Off"] = 0;
                
	                if(!is_undefined(_set) 
	                &&  is_string(   _set) )
	                {
	                    _dm[?_set+"_All_Off"] = 0;
	                }
                
	                if(!is_undefined(_theme))
	                {
	                    _dm[?_theme+"_All_Off"] = 0;
	                    other.dm_AudioCustom[?_DK1+_theme+hex_str(_j)] = 2;
	                }
	            }
	            else
	            {
	                _dm[?"_All_On"]  = 0;
                
	                if(!is_undefined(_set) 
	                &&  is_string(   _set) )
	                {
	                    _dm[?_set+"_All_On"] = 0;
	                }
                
	                if(!is_undefined(_theme))
	                {
	                    _dm[?_theme+"_All_On"]  = 0;
	                    other.dm_AudioCustom[?_DK1+_theme+hex_str(_j)] = 0;
	                }
	            }
	        }
	    }
    
    
    
	    for(_i=0; _i<AudioSets_COUNT; _i++)
	    {
	        _set = dl_AUDIO_SETS[|_i];
	        other.dm_AudioCustom[?_DK1+_set] = !val(_dm[?_set+"_All_Off"]) + val(_dm[?_set+"_All_On"]);
	    }
    
	    _count1 = val(dm[?STR_Theme+STR_Count+STR_Music]);
	    for(_i=1; _i<=_count1; _i++)
	    {
	        _theme = dm[?STR_Theme+STR_Music+hex_str(_i)];
	        if(!is_undefined(_theme))
	        {
	            other.dm_AudioCustom[?_DK1+_theme] = !val(_dm[?_theme+"_All_Off"]) + val(_dm[?_theme+"_All_On"]);
	        }
	    }
    
	    other.dm_AudioCustom[?_DK1+"_ToggleAll"] = !val(_dm[?"_All_Off"]) + val(_dm[?"_All_On"]);
    
    
	    ds_map_destroy(_dm); _dm=undefined;
	}







}
