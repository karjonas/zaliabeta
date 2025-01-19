/// @description  Challenge_SpellSequenceA_update()
function Challenge_SpellSequenceA_update() {



	can_draw_self = true;


	switch(sub_state)
	{
	    // -------------------------------------------------------------------------------
	    // -------------------------------------------------------------------------------
	    case SUB_STATE_SEQU:{
	    if (timer) timer--;
	    if (timer) break;
    
    
	    Challenge_SpellSequenceA_update_1a();
    
	    if (sub_state==SUB_STATE_CMPL1)
	    {
	        f.dm_challenges[?challenge_id+STR_Complete]=1;
	    }
    
    
	    break;}
    
    
    
    
    
	    // -------------------------------------------------------------------------------
	    // -------------------------------------------------------------------------------
	    case SUB_STATE_CMPL1:{
	    if (timer) timer--;
	    if (timer) break;
    
	    //g.pc_lock = PC_LOCK_ALL;
    
	    aud_play_sound(get_audio_theme_track(STR_Secret));
	    sub_state = SUB_STATE_CMPL2;
    
	    break;}
    
    
    
    
    
	    // -------------------------------------------------------------------------------
	    // -------------------------------------------------------------------------------
	    case SUB_STATE_CMPL2:{
	    if (timer) timer--;
	    if (timer) break;
    
	    //g.pc_lock = PC_LOCK_ALL;
	    can_draw_self = false;
    
	    aud_play_sound(get_audio_theme_track(dk_EnemyDeath));
	    aud_play_sound(get_audio_theme_track(dk_BlockBreak));
	    sub_state = SUB_STATE_CMPL3;
    
	    break;}
    
    
    
    
    
	    // -------------------------------------------------------------------------------
	    // -------------------------------------------------------------------------------
	    case SUB_STATE_CMPL3:{
	    if (timer) timer--;
	    if (timer) break;
    
	    var _i, _x,_y;
	    for(_i=0; _i<4; _i++)
	    {   // Change tiles to solid to block shaft.
	        _x = xl + ((_i&1)<<3);
	        _y = yt + ((_i>1)<<3);
	        tile_change_1a(0, _x,_y, -1,0, 0);
	    }
    
	    instance_destroy();
	    break;}
    
    
    
    
	    /*
	    // -------------------------------------------------------------------------------
	    // -------------------------------------------------------------------------------
	    case SUB_STATE_CMPL1:{
	    if (timer) timer--;
	    if (timer) break;
    
    
	    break;}
	    */
	}








}
