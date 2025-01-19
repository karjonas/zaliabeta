/// @description  ContinueSaveScreen_step()
function ContinueSaveScreen_step() {


	switch(state)
	{
	    // -----------------------------------------------------
	    // -----------------------------------------------
	    case ST_NUL:{
	    if (counter >= READY_CUE)
	    {
	        state = ST_FRE;
	    }
	    break;}
    
    
    
    
    
	    // -----------------------------------------------------
	    // -----------------------------------------------
	    case ST_FRE:{
	    var _cursor_dir = 0;
	    switch(global.GUI_NAV1_VER)
	    {
	        default:{
	        _cursor_dir = Input.GP_Select_pressed || Input.Magic_pressed;
	        break;}
        
	        case 2:{
	            _cursor_dir = bit_dir(gui_tmr_cursor_v());
	        if (_cursor_dir==0)
	        {   _cursor_dir = Input.GP_Select_pressed || Input.Magic_pressed;  }
	        break;}
	    }//switch(global.GUI_NAV1_VER)
    
	    if (_cursor_dir!=0)
	    {
	        Options_idx = (Options_idx+_cursor_dir+Options_COUNT) mod Options_COUNT;
	        aud_play_sound(get_audio_theme_track(dk_CursorSpellMenu));
	        break;
	    }
    
	    if (Input.GP_Start_pressed 
	    ||  Input.Pause_pressed )  // Start button pressed
	    {
	        state   = ST_SEL; // An option has been selected
	        counter = Options_idx;
	        aud_play_sound(get_audio_theme_track(dk_ItemDrop));
	    }
	    break;}
    
    
    
    
    
	    // -----------------------------------------------------
	    // -----------------------------------------------
	    case ST_SEL:{
	    switch(Options_idx)
	    {   // -----------------------------------------------------
	        case Option_CONT:{
	        if (counter >= NEXT_LIFE_SCREEN_CUE)
	        {
	            audio_group_stop_all(audiogroup_mus);
	            room_goto_(rmB_NextLife);
	            exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	        }
	        break;}
        
        
        
	        // -----------------------------------------------------
	        case Option_SAVE:{
	        if (counter >= TITLE_SCREEN_CUE1)
	        {
	            file_save(f.file_num,false);
            
	            // Saving f.cont_run_town_num=0 will start player at North Castle next save file load
	            //set_saved_value(f.file_num, STR_Save+STR_Town+STR_Num, 0);
            
	            // Save new xp amount ------------------------
	            // The exploit: When player saves here, then reload game, 
	            // they retain all progress AND get back the xp they 
	            // had when they last saved with an NPC.
	            set_saved_value(f.file_num, STR_XP, f.xp);
            
	            goto_title_rm();
	        }
        
	        if (counter&$7==4) saveFlashCount++;
	        break;}
        
        
        
	        // -----------------------------------------------------
	        case Option_QUIT:{
	        if (counter >= TITLE_SCREEN_CUE2)
	        {
	            goto_title_rm();
	        }
	        break;}
	    }//switch(Options_idx)
	    break;}//case ST_SEL
	}//switch(state)



	counter++;







}
