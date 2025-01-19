/// @description  aud_play_fire(play or stop, *volume)
function aud_play_fire() {


	     Audio.dl_snd_fire[|1] =       argument[0]; // dl_snd_fire[| 1]: can play
	if (argument_count>1)
	{    Audio.dl_snd_fire[|2] = clamp(argument[1], 0,1);  } // -1: use default volume that was set in Audio_Create()
	else Audio.dl_snd_fire[|2] = -1; // -1: use default volume that was set in Audio_Create()







}
