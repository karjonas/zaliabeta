/// @description  get_audio_theme_track_intro(track)
function get_audio_theme_track_intro() {


	return val(Audio.dm[?audio_get_name(argument[0])+STR_Intro], argument[0]);







}
