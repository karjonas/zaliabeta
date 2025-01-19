/// @description  aud_toggle_snd()
function aud_toggle_snd() {


	if ( audio_sound_get_gain(snd_gain)>0) // Need >0 check b/c value can be .5 and below
	{    audio_group_set_gain(audiogroup_snd,                0, 0);  } //    mute
	else audio_group_set_gain(audiogroup_snd, Audio.snd_vol/10, 0);    // un-mute







}
