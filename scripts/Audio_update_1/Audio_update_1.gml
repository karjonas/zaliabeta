/// @description  Audio_update_1()
function Audio_update_1() {

	// MUTE / UN-MUTE -----------------------------------------------


	// SOUND -----------------------
	if (keyboard_check_pressed(TOGGLE_SOUND_KEY))
	{
	    aud_toggle_snd();
	}


	// MUSIC -----------------------
	if (keyboard_check_pressed(TOGGLE_MUSIC_KEY))
	{
	    aud_toggle_mus();
	}







	// C1C6
	// ------------------------------------------------------------------------
	if (    dl_snd_fire[|1]) // 1: can_play. Must be set every frame
	{
	    if(!audio_is_playing(    dl_snd_fire[|0]) // 0: current snd playing
	    || !dl_snd_fire[|3] )                     // 3: timer
	    {
	        dl_snd_fire[|3] =    dl_snd_fire[|4]; // 4: timer reset
        
	        if (SND_FIRE_VER==1) dl_snd_fire[|0] = dl_snd_fire[|irandom(3)+5];
        
	        if (dl_snd_fire[|2]==-1)              // -1: use default volume
	        {    aud_play_sound( dl_snd_fire[|0]);  }
	        else aud_play_sound( dl_snd_fire[|0], dl_snd_fire[|2]);
	    }
    
	    if (dl_snd_fire[|3])     dl_snd_fire[|3]--; // 3: timer
	}
	else
	{
	        audio_stop_sound(    dl_snd_fire[|0]); // 0: current snd playing
	}

	dl_snd_fire[|1] =  0; //  1: can_play. Must be set every frame
	dl_snd_fire[|2] = -1; // -1: use default volume







}
