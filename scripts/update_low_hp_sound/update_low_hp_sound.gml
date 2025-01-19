/// @description  update_low_hp_sound()
function update_low_hp_sound() {

	// Low HP Beeping -------------------------------------


	if (g.room_type!="A") exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


	with(Audio)
	{
	    if (LowHPSound_HP_AMT<=f.hp)
	    {
	        LowHPSound_counter1 = 0;
	        LowHPSound_counter2 = 0;
	        exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	    }
    
    
    
    
	    if (LowHPSound_counter1>=LowHPSound_PLAY_LIMIT1)
	    {   LowHPSound_counter2++;  }
    
	    if(!g.game_end_state)
	    {   // D4D1, D4ED
	        if(!g.mod_LOW_HP_SOUND 
	        ||   LowHPSound_counter1<LowHPSound_PLAY_LIMIT1 
	        || !(LowHPSound_counter2&$7F) )
	        {
	            if(!audio_is_playing(get_audio_theme_track(dk_LowHPBeep)))
	            {
	                aud_play_sound(  get_audio_theme_track(dk_LowHPBeep));
	                LowHPSound_counter1++;
	            }
	        }
	    }
	}







}
