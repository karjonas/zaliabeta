/// @description  sound_is_audio_group(sound id, audio group)
function sound_is_audio_group(argument0, argument1) {


	return val(Audio.dm[?audio_get_name(argument0)+STR_AudioGroup]) == argument1;







}
