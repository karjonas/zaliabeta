/// @description  RestoreFairy_update()
function RestoreFairy_update() {


	// D91E
	if(!greeting_played 
	&&  ocsH1(id) )   // if (any of width) are in ocs area width
	//&& !Sound._07FE )
	{
	    greeting_played = true; // Prevent sound from playing again
	    aud_play_sound(get_audio_theme_track(STR_Fairy+STR_Greeting));
	}



	// D931: JSR DE40
	GOB_update_2();




	// D934
	switch(sub_state)
	{
	    // --------------------------------------------------------------
	    // --------------------------------------------------
	    case SUB_STATE_IDLE:{
	    if!(cs&CS_BD1) break;
    
    
	    g.pc_lock = PC_LOCK_ALL;
	    g.StatRestore_timer_hp = get_stat_max(STR_Heart);
    
	    sub_state = SUB_STATE_RSTR;
	    break;}
    
    
    
	    // --------------------------------------------------------------
	    // --------------------------------------------------
	    case SUB_STATE_RSTR:{
	    var                     _DURATION = p.Flash_Pal_timer | $10;
	    p.Flash_Pal_timer     = _DURATION;
	    p.SpellFlash_PC_timer = _DURATION;
    
	    if(!g.StatRestore_timer_hp)
	    {   // Restoration complete.
	        g.pc_lock = 0;
	        state     = 0;
	    }
	    break;}
	}







}
