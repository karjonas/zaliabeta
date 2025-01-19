/// @description  update_stat_restore()
function update_stat_restore() {

	// Life & Magic restoration

	// ***** Keep mp even because spell costs are drawn as half of what the 
	// actual values are. Pause menu could show that the player has the 
	// exact mp to cast a spell but the spell is actually costs +1 more


	var _MAX_MP = get_stat_max(STR_Magic);

	if (f.items&ITM_NKLC 
	&& !g.StatRestore_timer_mp 
	&&  f.mp<_MAX_MP 
	&& !(g.counter0&$7F) )
	{
	    if(!(g.counter0&$FF) 
	    ||  f.mp&$4 )
	    {
	        adjust_stat(0,2);
	    }
	}


	// D3EF
	if(!g.StatRestore_timer_hp 
	&& !g.StatRestore_timer_mp )
	{
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}



	if(!audio_is_playing(get_audio_theme_track(dk_CursorSpellMenu))) 
	{   aud_play_sound(  get_audio_theme_track(dk_CursorSpellMenu));  }


	var                       _TIMER = g.counter1;
	if (g.mod_STAT_RESTORE_1) _TIMER = g.counter0;


	// --------------------------------------------------------
	if (_TIMER&$1  // every odd  frame
	&&  g.StatRestore_timer_hp )
	{
	    var _MAX_HP = get_stat_max(STR_Heart);
    
	    adjust_stat(2,0);
	    if (f.hp==_MAX_HP) g.StatRestore_timer_hp = 0;
	    else               g.StatRestore_timer_hp--;
	}
	// --------------------------------------------------------
	if (!(_TIMER&$1)  // every even frame
	&&  g.StatRestore_timer_mp )
	{
	    //var _MAX_MP = get_stat_max(STR_Magic);
	    adjust_stat(0,2);
    
	    if (f.mp==_MAX_MP) g.StatRestore_timer_mp = 0;
	    else               g.StatRestore_timer_mp--;
	}






	/*

	// D3EF
	// Life & Magic restoration

	var _LIF =   g.timer0 & 1  && g.tmr_restore_hp; // every odd  frame
	var _MAG = !(g.timer0 & 1) && g.tmr_restore_mp; // every even frame

	if (_LIF || _MAG)
	{
	    if (_LIF)
	    {
	        g.tmr_restore_hp--;
	        f.hp += 2;
	        if (f.hp >= get_stat_max(STR_Heart))
	        {
	            f.hp  = get_stat_max(STR_Heart);
	            g.tmr_restore_hp = 0;
	        }
	    }
	    else
	    {
	        g.tmr_restore_mp--;
	        f.mp += 2;
	        if (f.mp >= get_stat_max(STR_Magic))
	        {
	            f.mp  = get_stat_max(STR_Magic);
	            g.tmr_restore_mp = 0;
	        }
	    }
    
	    // D41F
	    if (_LIF) g._074F |= $40;
	    else      g._074F |= $80;
    
    
	    if (!audio_is_playing(g.SND_CRSR_MVE1)) 
	    {    aud_play_sound(  g.SND_CRSR_MVE1);  Sound._00EF = $10;  }
	    // aud_play_sound(g.SND_CRSR_MVE1);  Sound._00EF = $10; // cursor move sound
	    if (Sound._07FB != $10) 
	    {
	        // aud_play_sound(g.SND_CRSR_MVE1);  Sound._00EF = $10; // cursor move sound
	    }
	}



	*/



}
