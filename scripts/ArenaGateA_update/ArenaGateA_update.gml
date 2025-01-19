/// @description  ArenaGateA_update()
function ArenaGateA_update() {


	update_EF11();


	switch(sub_state)
	{
	    // ------------------------------------------------------------
	    // ------------------------------------------------------------
	    // ------------------------------------------------------------
	    case SUB_STATE_OPEN:{
	    if (timer) break;
    
	    break;}
    
    
    
	    // ------------------------------------------------------------
	    // ------------------------------------------------------------
	    // ------------------------------------------------------------
	    case SUB_STATE_TRIG:{
	    if (timer) break;
    
	    for(var _i=0; _i<DOOR_ROWS; _i++)
	    {   // Change tiles to solid to block pc in.
	        tile_change_1a(0, xl,DOOR_Y+(_i<<3), -1,0, TID_SOLID1);
	    }
    
    
	    timer = ((DOOR_ROWS<<1)<<TIMING) + 1;
	    sub_state = SUB_STATE_CLOS;
	    break;}
    
    
    
	    // ------------------------------------------------------------
	    // ------------------------------------------------------------
	    // ------------------------------------------------------------
	    case SUB_STATE_CLOS:{ // Closing
	    if (timer)
	    {
	        if!(timer & (($1<<TIMING)-1))
	        {
	            counter++;
	            aud_play_combo1(2); // 2: aud_play_sound(SND_BRDG_CRBL); aud_play_sound(SND_CRSR_MVE1);
	        }
        
	        break;
	    }
    
    
	    timer = 8; // Delay DONE
	    sub_state = SUB_STATE_CLSD;
	    break;}
    
    
    
	    // ------------------------------------------------------------
	    // ------------------------------------------------------------
	    // ------------------------------------------------------------
	    case SUB_STATE_CLSD:{
	    if (timer) break;
    
	    sub_state = SUB_STATE_DONE;
	    break;}
    
    
    
	    // ------------------------------------------------------------
	    // ------------------------------------------------------------
	    // ------------------------------------------------------------
	    case SUB_STATE_DONE:{
	    if (timer) break;
    
	    if (is_undefined(   boss) 
	    || !instance_exists(boss) 
	    ||                 !boss.state )
	    {
	        timer = $20; // Delay explosion & unlock cam
	        sub_state = SUB_STATE_DSTR;
	    }
	    break;}
    
    
    
	    // ------------------------------------------------------------
	    // ------------------------------------------------------------
	    // ------------------------------------------------------------
	    case SUB_STATE_DSTR:{
	    if (timer) break;
    
	    for(var _i=0; _i<DOOR_ROWS; _i++)
	    {   // Change tiles to non-solid.
	        tile_change_1a(0, xl,DOOR_Y+(_i<<3), -1,0, 0);
	    }
    
    
	    g.pc_lock = PC_LOCK_ALL;
    
    
	    aud_play_sound(get_audio_theme_track(STR_Open+STR_LockedDoor));
	    aud_play_sound(get_audio_theme_track(dk_EnemyDeath));
    
	    timer = explosion_DURATION1; // $25: 0.617s
	    state = state_EXPLODE;
	    break;}
	}







}
