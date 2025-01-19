/// @description  PC_update_1b()
function PC_update_1b() {


	// 9610
	if (control & control_SOUND1 
	&&  hspd 
	&&  g.counter1&$7==1 )
	{
	        Audio.walk_water_played_count++;
	    if (Audio.walk_water_played_count&$1)
	    {    aud_play_sound(get_audio_theme_track(dk_WalkWater+"02"));  } // higher pitch
	    else aud_play_sound(get_audio_theme_track(dk_WalkWater+"01"));
	}

	var                               _timing = $0; // every   frame
	     if (control & control_MOVE1) _timing = $1; // every 2 frame
	else if (control & control_MOVE2) _timing = $3; // every 4 frame

	if!(g.counter1 & _timing) // if is qualified frame
	{   // 9628: JSR D1CE
	    updateX();
	}







}
