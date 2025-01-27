/// @description  get_audio_theme_track(audio theme)
function get_audio_theme_track() {
    var _theme = argument[0];
	if (_theme == "undefined") {
		return -1;
	}
	with(Audio)
	{
	    if (string_pos("RANDOM",string_upper(audio_set)))
	    {
	        return get_audio_theme_track_random(_theme);
	    }
	    else
	    {
	        var _DEFAULT = val(dm[?_theme+dl_AUDIO_SETS[|0]]);
	        return         val(dm[?_theme+audio_set], _DEFAULT);
	    }
	}







}
