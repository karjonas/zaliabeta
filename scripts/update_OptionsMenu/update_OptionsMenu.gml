/// @description  update_OptionsMenu()
function update_OptionsMenu() {


	with(g.OPTIONS_MENU)
	{
	    if (PCSpriteWalk_timer)
	    {
	        PCSpriteWalk_timer--;
	        if(!PCSpriteWalk_timer)
	        {
	            PCSpriteWalk_timer =  PCSpriteWalk_DURATION;
	            PCSpriteWalk_frame = (PCSpriteWalk_frame+1) mod 3;
	        }
	    }
    
    
	    if (timer2) timer2--;
    
	    start_button_pressed  = Input.Pause_pressed;
	    select_button_pressed = Input.Magic_pressed;
	    a_button_pressed      = Input.Jump_pressed;
	    b_button_pressed      = Input.Other1_pressed;
    
	    right_input_pressed   = Input.Right_pressed;
	    left_input_pressed    = Input.Left_pressed;
	    down_input_pressed    = Input.Down_pressed;
	    up_input_pressed      = Input.Up_pressed;
    
	    OpenClose_Key_pressed = keyboard_check_pressed(OpenClose_Key_KEY);
	    Backout_requested     = b_button_pressed || keyboard_check_pressed(vk_escape) || keyboard_check_pressed(vk_backspace);
    
    
    
    
    
	    // --------------------------------------------------------------------------------
	    switch(sub_state)
	    {
	        // =========================================================================
	        case sub_state_IDLE_CLOSED:{ // ------------------------------------------
	        if (timer){timer--; break;}
        
	        if (g.gui_state!=g.gui_state_OPTIONS)
	        {
	            if (OpenClose_Key_pressed)
	            {
	                OpenClose_Key_pressed = false;
                
	                anim_frame      = 0;
	                MainOption      = 0;
	                //cursor_op       = 0;
	                draw_rows_count = 0;
                
	                gui_state_backup = g.gui_state;
	                g.gui_state      = g.gui_state_OPTIONS;
                
	                Menu_in_focus     = Menu_MAIN;
	                InputConfigState  = InputConfigState_MAIN;
	                InputConfigOption = InputConfigOption_RIGHT;
                
	                timer = 0;
	                sub_state = sub_state_OPENING1;
	            }
            
	            return false;
	        }
	        break;}//case sub_state_IDLE_CLOSED
        
        
        
        
        
	        // =========================================================================
	        case sub_state_OPENING1:{ // ------------------------------------------
	        if (timer){timer--; break;}
        
	        if (OptionsMenu_option_is_avail(Menu_RANDO_OPTIONS,RandoOptions_MARK_ACQUIRED) 
	        ||  OptionsMenu_option_is_avail(Menu_RANDO_OPTIONS,RandoOptions_MAPS_SHOW_KEYS) 
	        ||  OptionsMenu_option_is_avail(Menu_RANDO_OPTIONS,RandoOptions_RANDO_ENEMY) 
	        ||  OptionsMenu_option_is_avail(Menu_RANDO_OPTIONS,RandoOptions_RANDO_OW_TILES) 
	        ||  OptionsMenu_option_is_avail(Menu_RANDO_OPTIONS,RandoOptions_SCENES) 
	        ||  OptionsMenu_option_is_avail(Menu_RANDO_OPTIONS,RandoOptions_RANDO_PALETTE) 
	        ||  OptionsMenu_option_is_avail(Menu_RANDO_OPTIONS,RandoOptions_MARK_HIDDEN_EXIT) )
	        {
	            RandoOptionsMenu_is_available = true;
	        }
	        else
	        {
	            RandoOptionsMenu_is_available = false;
	        }
        
	        aud_play_sound(get_audio_theme_track(dk_OpenGUI));
        
	        timer = 2;
	        sub_state = sub_state_OPENING_ANIM;
	        break;}//case sub_state_OPENING1
        
        
        
        
        
	        // =========================================================================
	        case sub_state_OPENING_ANIM:{ // ------------------------------------------
	        udp_OptionsMenu();
        
	        if (timer){timer--; break;}
        
	            anim_frame++;
	        if (anim_frame==ANIM_FRAMES_DEF)
	        {
	            timer = 0;
	            sub_state = sub_state_OPEN1;
	        }
	        break;}//case sub_state_OPENING_ANIM
        
        
        
        
        
	        // =========================================================================
	        case sub_state_OPEN1:{ // ------------------------------------------
	        if (g.gui_state==g.gui_state_OPTIONS) // To prevent game lock, in case QuitAppMenu was triggered this frame
	        {
	            udp_OptionsMenu();
            
	            if (timer){timer--; break;}
            
	            if (OpenClose_Key_pressed)
	            {   // Close options menu from any sub menu.
	                timer=0;
	                sub_state=sub_state_CLOSING1; // Start close menu
	                break;//case sub_state_OPEN1
	            }
            
            
	            switch(Menu_in_focus){
	            case   Menu_MAIN:         {OptionsMenu_Main_update();        break;}
	            case   Menu_AUDIO_CUSTOM: {OptionsMenu_AudioCustom_update(); break;}
	            case   Menu_INPUT_CONFIG: {OptionsMenu_InputConfig_update(); break;}
	            case   Menu_DEV_TOOLS:    {OptionsMenu_DevTools_update();    break;}
	            case   Menu_RANDO_OPTIONS:{OptionsMenu_RandoOptions_update();break;}
	            }
	        }
	        break;}//case sub_state_OPEN1
        
        
        
        
        
	        // =========================================================================
	        case sub_state_CLOSING1:{ // ------------------------------------------
	        udp_OptionsMenu();
        
	        //if (timer){timer--; break;}
        
        
	        aud_play_sound(get_audio_theme_track(dk_OpenGUI));
        
	        timer = 0;
	        sub_state = sub_state_CLOSING_ANIM;
	        break;}//case sub_state_CLOSING1
        
        
        
        
        
	        // =========================================================================
	        case sub_state_CLOSING_ANIM:{ // ------------------------------------------
	        //if (timer){timer--; break;}
        
	        if (anim_frame)
	        {
	            udp_OptionsMenu();
	        }
	        else
	        {
	            timer = 0;
	            sub_state = sub_state_CLOSING3;
	        }
        
	        anim_frame--;
	        break;}//case sub_state_CLOSING_ANIM
        
        
        
        
        
	        // =========================================================================
	        case sub_state_CLOSING3:{ // ------------------------------------------
	        //if (timer){timer--; break;}
        
        
	        anim_frame      = 0;
	        draw_rows_count = 0;
	        MainOption      = 0;
	        //cursor_op       = 0;
        
	        g.gui_state     = gui_state_backup;
        
        
        
	        save_game_pref();
	        //file_save_pref(f.file_num);
        
	        timer = 0;
	        sub_state = sub_state_IDLE_CLOSED;
	        break;}//case sub_state_CLOSING3
	    }//switch(sub_state)
	}//with(g.OPTIONS_MENU)


	return true;







}
