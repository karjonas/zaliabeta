/// @description  aud_toggle_mus()
function aud_toggle_mus() {


	if ( audio_sound_get_gain(mus_gain)>0) // Need >0 check b/c value can be .5 and below
	{    audio_group_set_gain(audiogroup_mus,                0, 0);  } //    mute
	else audio_group_set_gain(audiogroup_mus, Audio.mus_vol/10, 0);    // un-mute







}
