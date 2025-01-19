/// @description  Boss_set_MusicBattle_props(theme)
function Boss_set_MusicBattle_props() {


	MusicBattle_THEME = argument[0];
	MusicBattle_SOUND_OBJECT_DK = MusicBattle_THEME+get_audio_set_by_theme(MusicBattle_THEME);

	if (0)
	{
	    MusicBattle_BODY  = val(Audio.dm[?MusicBattle_SOUND_OBJECT_DK+STR_Body]);
	    MusicBattle_INTRO = val(Audio.dm[?MusicBattle_SOUND_OBJECT_DK+STR_Intro]);
	}
	else
	{
	    MusicBattle_BODY  = get_audio_theme_track(MusicBattle_THEME);
	    MusicBattle_INTRO = get_audio_theme_track_intro(MusicBattle_BODY);
    
	    if (MusicBattle_INTRO)
	    {
	        var _NAME = audio_get_name(MusicBattle_INTRO);
	        if (string_pos("Wyng",_NAME))
	        {
	            MusicBattle_INTRO = 0;
	        }
	    }
	}







}
