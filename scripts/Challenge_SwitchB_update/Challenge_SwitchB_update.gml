/// @description  Challenge_SwitchB_update()
function Challenge_SwitchB_update() {


	// -----------------------------------------------------------------------
	switch(sub_state)
	{
	    // =========================================================
	    // ----------------------------------------------------
	    case STATE_IDLE:{
	    if (timer){timer--; break;}
    
	    if (ver==1 
	    &&  complete )
	    {
	        timer = 0;
	        sub_state = STATE_COMPLETE;
	    }
    
    
    
    
	    var _change=false;
	    //var _pressed_count=0;
	    var _all_pressed=true;
	    with(SwchB)
	    {
	        if(!pressed)
	        {
	            _all_pressed=false;
	            break;//with(SwchB)
	        }
	    }
    
	    switch(ver)
	    {
	        case 1:{
	        _change  = !complete && _all_pressed;
	        complete =  complete || _all_pressed;
	        break;}//case 1
        
	        case 2:{
	        if (complete != _all_pressed)
	        {
	            _change=true;
	            complete=_all_pressed;
	        }
	        break;}//case 2
        
	        case 3:{
	        if (complete != _all_pressed)
	        {
	            _change=true;
	            complete=_all_pressed;
	        }
	        break;}//case 3
	    }//switch(ver)
    
    
	    if (_change)
	    {
	        timer = 0;
	        sub_state = STATE_CHANGING1;
	    }
	    break;}//case STATE_IDLE
    
    
    
    
    
    
    
    
	    // =========================================================
	    // ----------------------------------------------------
	    case STATE_CHANGING1:{
	    if (timer){timer--; break;}
    
	    g.pc_lock = PC_LOCK_ALL;
    
	    switch(ver)
	    {
	        case 1:{
	        if (complete)
	        {
	            f.dm_challenges[?challenge_id+STR_Complete] = true;
	            with(SwchB) complete = other.complete;
	        }
	        break;}//case 1
        
	        case 2:{
	        f.dm_challenges[?challenge_id+STR_Complete] = complete;
	        break;}//case 2
        
	        case 3:{
	        f.dm_challenges[?challenge_id+STR_Complete] = complete;
	        break;}//case 3
	    }//switch(ver)
    
	    timer = DUR_DELAY2; // DUR_DELAY2=$20
	    sub_state = STATE_CHANGING2;
	    break;}//case STATE_CHANGING1
    
    
    
    
    
    
    
    
	    // =========================================================
	    // ----------------------------------------------------
	    case STATE_CHANGING2:{
	    if (timer){timer--; break;}
    
	    switch(ver)
	    {
	        case 1:{
	        if (complete 
	        &&  locked_door )
	        {   locked_door.counter = -1;  } // Starts opening process
	        break;}//case 1
        
        
	        case 2:{
	        Challenge_SwitchB_update_1a(!complete);
	        break;}//case 2
        
        
	        case 3:{
	        with(Exit)
	        {
	            if (exitNum==$00)
	            {
	                open = other.complete;
	                if (open) doorway_spr = g.Doorway1_SPR;
	                else      doorway_spr = spr_Doorway01_Closed01;
	                aud_play_sound(get_audio_theme_track(STR_Open+STR_LockedDoor));
	                break;//with(Exit)
	            }
	        }
	        break;}//case 3
	    }//switch(ver)
    
	    timer = DUR_DELAY3; // DUR_DELAY3=$10
	    //timer = DUR_DELAY2; // DUR_DELAY2=$20
	    sub_state = STATE_CHANGING3;
	    break;}//case STATE_CHANGING2
    
    
    
    
    
    
    
    
	    // =========================================================
	    // ----------------------------------------------------
	    case STATE_CHANGING3:{
	    if (timer){timer--; break;}
    
	    g.pc_lock = 0;
    
	    timer = 0;
	    sub_state = STATE_COMPLETE1;
	    break;}//case STATE_CHANGING3
    
    
    
    
    
    
    
    
	    // =========================================================
	    // ----------------------------------------------------
	    case STATE_COMPLETE1:{
	    if (timer){timer--; break;}
    
	    timer = 0;
	    sub_state = STATE_COMPLETE2;
	    break;}//case STATE_COMPLETE1
    
    
    
    
    
    
    
    
	    // =========================================================
	    // ----------------------------------------------------
	    case STATE_COMPLETE2:{
	    if (timer){timer--; break;}
    
	    timer = 0;
	    sub_state = STATE_COMPLETE;
	    break;}//case STATE_COMPLETE2
    
    
    
    
    
    
    
    
	    // =========================================================
	    // ----------------------------------------------------
	    case STATE_COMPLETE:{
	    if (timer){timer--; break;}
    
	    g.pc_lock = 0;
    
	    switch(ver)
	    {
	        case 1:{
	        timer = 0;
	        //sub_state = STATE_IDLE;
	        break;}//case 1
        
	        case 2:{
	        timer = 0;
	        sub_state = STATE_IDLE;
	        break;}//case 2
        
	        case 3:{
	        timer = 0;
	        sub_state = STATE_IDLE;
	        break;}//case 3
	    }//switch(ver)
	    break;}//case STATE_COMPLETE
	}//switch(sub_state)







}
