/// @description  Challenge_SwitchA_update()
function Challenge_SwitchA_update() {


	with(SwchA)
	{
	    if(  !is_undefined(scr_update))
	    {   script_execute(scr_update);  }
	}




	// -----------------------------------------------------------------------
	switch(sub_state)
	{
	    // -------------------------------------------------------
	    case STATE_INCM:{
	    var _complete = true;
	    with(SwchA)
	    {
	        if (sub_state != SUB_ST_GOAL)
	        {
	            _complete = false;
	            break;//with(SwchA)
	        }
	    }
    
	    if(!_complete) break;//switch(sub_state)
    
    
	    with(SwchA) sub_state = SUB_ST_COMP;
	    f.dm_challenges[?challenge_id+STR_Complete] = 1;
    
	    timer = DUR_DELAY_CMP1;
	    sub_state = STATE_CMP1;
	    break;}
    
    
    
    
	    // -------------------------------------------------------
	    case STATE_CMP1:{
	    if (timer) timer--;
	    if (timer) break;
    
    
	    var _diff;
	    with(SwchA)
	    {
	        _diff = 3 * DIR_IN;
	        if (orientation&$1) set_xlyt(id, GOAL_XX      , GOAL_YY+_diff);
	        else                set_xlyt(id, GOAL_XX+_diff, GOAL_YY);
        
	        sub_state = SUB_ST_COMP;
	    }
    
    
	    aud_play_sound(get_audio_theme_track(dk_ElevatorMove));
	    aud_play_sound(get_audio_theme_track(dk_BridgeCrumble));
	    aud_play_sound(get_audio_theme_track(STR_Stab));
    
    
	    timer = DUR_DELAY_CMP2;
	    sub_state = STATE_CMP2;
	    break;}
    
    
    
    
	    // -------------------------------------------------------
	    case STATE_CMP2:{
	    if (timer) timer--;
	    if (timer) break;
    
    
	    if (locked_door) locked_door.counter = -1; // Starts opening process
    
	    sub_state = STATE_CMP3;
	    break;}
    
    
    
    
	    // -------------------------------------------------------
	    case STATE_CMP3:{
	    if (timer) timer--;
	    if (timer) break;
	    break;}
	}







}
