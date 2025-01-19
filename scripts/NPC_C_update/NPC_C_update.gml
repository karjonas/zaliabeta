/// @description  NPC_C_update()
function NPC_C_update() {


	if (is_talking)
	{
	    if (g.dialogue_source==id)
	    {
	        //f.items |= ITM_BOOK; // Testing
	        if (f.items&ITM_BOOK 
	        && !is_undefined(    dk_spawn) 
	        && !val(f.dm_quests[?dk_spawn+STR_Translated]) )
	        {
	                f.dm_quests[?dk_spawn+STR_Translated] = 1;
	        }
        
	        exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	    }
	    else
	    {
	        is_talking = false;
	    }
	}

	if(!is_talking) HylianText_read = false;

	// 9AC2: JSR 99B9
	var _qual = true;
	if (ver==3) // Kasuto Cemetery
	{
	    with(Kakusu)
	    {
	        // Disable dialogue trigger during Kakusu battle
	        // SUB_STATE_SEQU is only sub_state the Kakusu is hiding
	        if (sub_state!=SUB_STATE_SEQU) _qual = false;
	    }
	}

	if (_qual) NPC_update_2(); // collision, enter restore house, start dlg








	// -------------------------------------------------------------
	switch(sub_state)
	{
	    // -------------------------------------------------------------
	    // ------------------------------------------------------
	    case SUB_STATE_SEQ:{
	    if (timer) break;
	    if (is_talking) break;
    
    
	    if (spell_sequence_is_complete(SPELL_SEQ))
	    {
	        f.dm_quests[?dk_spawn+STR_Complete] = 1;
        
	        timer = p.SpellFlash_PC_timer+4;
	        sub_state = SUB_STATE_CMPL1;
	    }
	    break;}
    
    
    
    
	    // -------------------------------------------------------------
	    // ------------------------------------------------------
	    case SUB_STATE_CMPL1:{
	    if (timer) break;
    
	    if (ver==3) // Kasuto Cemetery
	    {
	        with(Kakusu)
	        {
	            timer = 0;
	            sub_state = SUB_STATE_CMPL1;
	        }
        
	        timer = 0;
	        sub_state = SUB_STATE_DONE;
        
	        if (instance_exists(Kakusu))
	        {
	            aud_play_sound(get_audio_theme_track(STR_Secret));
	        }
	    }
	    else
	    {   // King's Tomb, PENDANT Tomb
	        aud_play_sound(get_audio_theme_track(STR_Open+STR_LockedDoor));
	        aud_play_sound(get_audio_theme_track(dk_BlockBreak));
        
	        timer = 0;
	        sub_state = SUB_STATE_CMPL2;
	    }
	    break;}
    
    
    
    
	    // -------------------------------------------------------------
	    // ------------------------------------------------------
	    case SUB_STATE_CMPL2:{
	    if (timer) break;
    
	    aud_play_sound(get_audio_theme_track(STR_Secret));
    
	    timer = 0;
	    sub_state = SUB_STATE_CMPL3;
	    break;}
    
    
    
    
	    // -------------------------------------------------------------
	    // ------------------------------------------------------
	    case SUB_STATE_CMPL3:{
	    if (timer) break;
    
	    var _i, _xl,_yt;
	    for(_i=0; _i<4; _i++)
	    {   // Change tiles to NON-solid to UN-block shaft.
	        _xl = Block_XL + ((_i&$1)<<3);
	        _yt = Block_YT + ((_i>$1)<<3);
	        tile_change_1a(0, _xl,_yt, -1,0, 0);
	    }
    
	    timer = 0;
	    sub_state = SUB_STATE_DONE;
	    break;}
    
    
    
    
	    // -------------------------------------------------------------
	    // ------------------------------------------------------
	    case SUB_STATE_DONE:{
	    if (timer) break;
    
	    //timer = 0;
	    //sub_state = SUB_STATE_DONE;
	    break;}
	}







}
