/// @description  get_audio_theme_track(audio theme)
function get_audio_theme_track() {


	with(Audio)
	{
	    if (string_pos("RANDOM",string_upper(audio_set)))
	    {
	        return get_audio_theme_track_random(argument[0]);
	    }
	    else
	    {
	        var _DEFAULT = val(dm[?argument[0]+dl_AUDIO_SETS[|0]]);
	        return         val(dm[?argument[0]+audio_set], _DEFAULT);
	    }
	}







}
