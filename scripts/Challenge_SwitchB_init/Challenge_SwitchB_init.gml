/// @description  Challenge_SwitchB_init()
function Challenge_SwitchB_init() {


	var                _a=1;
	STATE_IDLE       = _a++; // 
	STATE_CHANGING1  = _a++; // 
	STATE_CHANGING2  = _a++; // 
	STATE_CHANGING3  = _a++; // 
	STATE_INCOMPLETE = _a++; // 
	STATE_COMPLETE1  = _a++; // 
	STATE_COMPLETE2  = _a++; // 
	STATE_COMPLETE   = _a++; // 
	sub_state        = STATE_IDLE;


	DUR_DELAY1 = $40; // Delay completion start
	DUR_DELAY2 = $20; // Delay completion reward
	DUR_DELAY3 = $10; // 


	var         _DEPTH=DEPTH_ENEMY;
	with(SwchB){_DEPTH=depth; break;}
	with(PushA){_DEPTH=depth; break;}
	with(SwchB) GO_depth_init(_DEPTH+1);


	complete = false;


	switch(ver)
	{
	    // =========================================================
	    // ----------------------------------------------------
	    case 1:{
	    locked_door = noone;
    
	    if (val(f.dm_challenges[?challenge_id+STR_Complete]))
	    {
	        complete = true;
	        with(SwchB) complete=true;
	        sub_state = STATE_COMPLETE;
	    }
	    else
	    {
	        complete = false;
	        locked_door = GameObject_create(x,y, LoDoA,3);
	    }
	    break;}//case 1
    
    
    
    
    
	    // =========================================================
	    // ----------------------------------------------------
	    case 2:{
	    complete = false;
    
	    Blocks_COUNT_X = 2;
	    Blocks_COUNT_Y = 2;
	    Blocks_DEPTH   = DEPTH_BG4;
	    Blocks_TSRC    = "EE"+"EF"+"FE"+"FF";
	    //Blocks_TSRC    = "30"+"31"+"32"+"33";
	    Blocks_SND_CHANGE = get_audio_theme_track(dk_BlockBreak);
	    Challenge_SwitchB_update_1a(!complete);
	    break;}//case 2
    
    
    
    
    
	    // =========================================================
	    // ----------------------------------------------------
	    case 3:{
	    /*
	    if (val(f.dm_challenges[?challenge_id+STR_Complete]))
	    {
	        complete = true;
        
	        with(Exit)
	        {
	            if (exitNum==$00)
	            {
	                open = true;
	                doorway_spr = g.Doorway1_SPR;
	                aud_play_sound(get_audio_theme_track(STR_Open+STR_LockedDoor));
	                break;//with(Exit)
	            }
	        }
        
	        sub_state = STATE_COMPLETE;
	    }
	    else
	    {
	        complete = false;
	    }
	    */
	    break;}//case 3
	}//switch(ver)







}
