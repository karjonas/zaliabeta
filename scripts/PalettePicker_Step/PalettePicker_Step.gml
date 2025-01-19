/// @description  PalettePicker_Step()
function PalettePicker_Step() {


	//if(!g.can_use_dev_tools1) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	//if(!DEV) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	//if(!room_is_type("A"))  exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


	// --------------------------------------------------------------------
	var _i;


	/*
	GP_Attack // Xbox X button, PS SQUARE button
	GP_Jump   // Xbox A button, PS CROSS button

	GP_Other1 // Xbox B button, PS CIRCLE button
	GP_Other2 // Xbox Y button, PS TRIANGLE button

	GP_Other3 // LEFT  bumper
	GP_Other4 // RIGHT bumper
	GP_Other5 // LEFT  trigger
	GP_Other6 // RIGHT trigger
	*/
	CTL  = keyboard_check(vk_control);
	SHF  = keyboard_check(vk_shift);
	ALT  = keyboard_check(vk_alt);
	CTL0 =  CTL && !SHF && !ALT; // ONLY CTL held
	SHF0 = !CTL &&  SHF && !ALT; // ONLY SHF held
	ALT0 = !CTL && !SHF &&  ALT; // ONLY ALT held
	//                                                  //
	PP   = keyboard_check_pressed(ord("P"));
	PH   = keyboard_check(        ord("P"));
	PP0  = !CTL && !SHF && !ALT && PP;
	PH0  = !CTL && !SHF && !ALT && PH;

	var _EDIT_REQUESTED_PAL = (CTL0 && PP) 
	                       || (Input.GP_Other6_held && Input.GP_Other4_held && Input.GP_Other2_pressed); // Hold trigR + bumpR, press Y
	//
	var _EDIT_REQUESTED_BGR = (Input.GP_Other5_held && Input.GP_Other3_held && Input.GP_Other2_pressed); // Hold trigL + bumpL, press Y




	// --------------------------------------------------------------------
	if (timer) timer--;




	// --------------------------------------------------------------------
	if (isVal(state, STATE_PKM1,STATE_PKM2,STATE_BGR_COLOR))
	{
	    var _CANCEL = keyboard_check_pressed(vk_backspace) || keyboard_check_pressed(vk_escape);
    
    
	    g.canDrawPalette = false;
    
	    if (state==STATE_PKM1)
	    {
	        //col_idx_old_col = str_hex(p.pal_rm_curr, PalettePicker_pal_col_pos()-1);
	        col_idx_old_col = str_hex(string_copy(p.pal_rm_curr, PalettePicker_pal_col_pos(), 2));
	        pal_curs_col    = p.dl_COLOR[|col_idx_old_col];
	    }
    
	    col_idx_new_col = ((col_curs_idx div COLOR_GRID_W)<<4) | (col_curs_idx mod COLOR_GRID_W);
	    col_curs_col    = p.dl_COLOR[|col_idx_new_col];
	}






	// ----------------------------------------------------------------------------------------
	// ----------------------------------------------------------------------------------------
	// ----------------------------------------------------------------------------------------
	// ----------------------------------------------------------------------------------------
	// ----------------------------------------------------------------------------------------
	// ----------------------------------------------------------------------------------------






	switch(state)
	{
	    // ----------------------------------------------------------------------------------------
	    // ----------------------------------------------------------------------------------------
	    // ----------------------------------------------------------------------------------------
	    // ----------------------------------------------------------------------------------------
	    // ----------------------------------------------------------------------------------------
	    // ----------------------------------------------------------------------------------------
	    case STATE_IDLE:{
	    if (timer) break;
    
    
	    if(!g.gui_state)
	    {
	        if (_EDIT_REQUESTED_PAL)
	        {
	            pal_at_sess_start = p.pal_rm_curr;
            
	            timer = DELAY1_DUR; // Delay any input reaction in next state.
	            state = STATE_PKM1;
	            break;
	        }
        
	        if (_EDIT_REQUESTED_BGR)
	        {
	            bgr_at_sess_start = p.background_color_index;
            
	            timer = DELAY1_DUR; // Delay any input reaction in next state.
	            state = STATE_BGR_COLOR;
	            break;
	        }
        
        
	        PalettePicker_Step_1a();
	    }
	    break;}
    
    
    
    
    
    
    
    
    
    
    
    
	    // ----------------------------------------------------------------------------------------
	    // ----------------------------------------------------------------------------------------
	    // ----------------------------------------------------------------------------------------
	    // ----------------------------------------------------------------------------------------
	    // ----------------------------------------------------------------------------------------
	    // ----------------------------------------------------------------------------------------
	    case STATE_PKM1:{ // Choose a palette's color to change
	    if (timer) break;
    
    
	    PalettePicker_Step_1a();
    
    
	    // CANCEL/DONE ------------------------------------------------------------------
	        _CANCEL |= _EDIT_REQUESTED_PAL;
	    var _CONFIRM = Input.Pause_pressed || keyboard_check_pressed(vk_enter);
	    if (_CANCEL    // Backspace || ESC
	    ||  _CONFIRM ) // Start button || ENTER
	    {
	        if (_CONFIRM)
	        {
	            if (pal_at_sess_start!=p.pal_rm_curr)
	            {
	                ds_list_add(dl_hist_room,p.pal_rm_curr);
	            }
	        }
	        else if (_CANCEL)
	        {
	            change_pal(pal_at_sess_start);
	            p.background_color_index = val(g.dm_rm[?g.rm_name+STR_Background_color], p.CI_ERR0);
	        }
        
	        //pal_at_sess_start = "";
	        ds_list_clear(dl_hist_sess);
        
        
	        timer = DELAY1_DUR; // Delay any input reaction in next state.
	        state = STATE_IDLE;
	        break;
	    }
    
    
    
    
    
    
	    // SELECT COLOR ------------------------------------------------------------------
	    if (Input.Jump_pressed) // xbox 'A'
	    {
	        pal_before_edit_color = p.pal_rm_curr;
	        pal_in_editor         = p.pal_rm_curr;
	        col_curs_idx = ((col_idx_old_col>>4)*COLOR_GRID_W) + (col_idx_old_col&$F);
        
	        timer = DELAY2_DUR; // DELAY2_DUR: $20.  Delay any input reaction in next state.
	        state = STATE_PKM2;
	        break; // Selecting a palette color to edit gets priority.
	    }
    
    
    
    
    
    
	    // TOGGLE COLORS  ----------------------------------------------------
	    // --------------------------------------------------------------------------
	    var _Input1_HELD = Input.GP_Other5_held;     // All colors of the cursor's PI
	    //var _Input1_HELD = Input.bump_LH;            // All colors of the cursor's PI
	    var _Input2_HELD = Input.GP_Other6_held;     // The whole palette
	    var _Input3_PRES = Input.Attack_pressed;     // xbox 'X'.  Randomizing
	    var _Input4_HELD = Input.GP_Other2_held;     // xbox 'Y'.  Toggle old/new
	    var _Input4_RELS = Input.GP_Other2_released; // xbox 'Y'.  Toggle old/new
    
    
    
	    if (_Input4_HELD)
	    {
	        if (_Input1_HELD   // Input.trig_LH
	        &&  _Input2_HELD ) // Input.trig_RH
	        {
	            break;
	        }
        
        
        
	        // TOGGLE OLD/NEW COLOR of the cursor --------------------------------------------------------
	        if!(_Input1_HELD|_Input2_HELD) // Neither are held
	        {
	            var _POS  = PalettePicker_pal_col_pos();
	            var _COL1 = string_copy(pal_at_sess_start, _POS, 2);
	            var _COL2 = string_copy(pal_in_editor,     _POS, string_length(_COL1));
	            if (_COL1!=_COL2)
	            {
	                change_pal(strReplaceAt(p.pal_rm_new, _POS, string_length(_COL1), _COL1));
	                break;
	            }
	        }
        
        
        
	        // TOGGLE OLD/NEW COLORS of the cursor's PI --------------------------------------------------------
	        if (_Input1_HELD   //  Input.trig_LH
	        && !_Input2_HELD ) // !Input.trig_RH
	        {
	            var _POS  = (pal_curs_idx mod PAL_CNT) + PI_OFFSET;
	                _POS *= COL_PER_PAL;
	                //_POS += COL_PER_PAL-COL_PER_PAL_;
	                _POS  = (_POS<<1)+1; // because string pos
	            //
	            var _PAL1 = string_copy(pal_at_sess_start, _POS, COL_PER_PAL<<1);
	            var _PAL2 = string_copy(pal_in_editor,     _POS, string_length(_PAL1));
	            if (_PAL1!=_PAL2)
	            {
	                change_pal(strReplaceAt(p.pal_rm_new, _POS, string_length(_PAL1), _PAL1));
	                break;
	            }
	        }
        
        
        
	        // TOGGLE OLD/NEW COLORS of the WHOLE palette --------------------------------------------------------
	        if (_Input2_HELD   //  Input.trig_RH
	        && !_Input1_HELD ) // !Input.trig_LH
	        {
	            if (p.pal_rm_curr!=pal_at_sess_start)
	            {
	                change_pal(pal_at_sess_start);
	                break;
	            }
	        }
        
        
	        break;
	    }
	    else
	    {
	        if (_Input4_RELS  // xbox 'Y' released
	        &&  p.pal_rm_curr!=pal_in_editor )
	        {
	            change_pal(pal_in_editor);
	            break;
	        }
	    }
    
    
    
    
    
    
	    // RANDOMIZE COLORS  ----------------------------------------------------
	    // --------------------------------------------------------------------------
	    if (_Input3_PRES) // Input3: xbox 'X'.  Randomize a color
	    {
	        if (_Input2_HELD   // Input.trig_RH
	        &&  _Input1_HELD ) // Input.trig_LH
	        {
	            break;
	        }
        
        
	        if (_Input2_HELD) // Input.trig_RH
	        {   // randomize whole palette
	            pal_in_editor = change_pal(dev_randomize_palette_1a(p.pal_rm_new)); // 
	            break;
	        }
        
        
	        var _rand;
	        var _col_idx, _hms;
	        var _new_colors = "";
        
	        if (_Input1_HELD) // Input.trig_LH
	        {
	            var _POS  = (pal_curs_idx mod PAL_CNT) + PI_OFFSET;
	                _POS *= COL_PER_PAL;
	                _POS += 1;
	                _POS  = (_POS<<1)+1; // because string pos
	        }
	        else
	        {
	            var _POS  = PalettePicker_pal_col_pos();
	        }
        
	        for(_i=0; _i<3; _i++)
	        {   // randomize a color
	            _col_idx = irandom($3);
	            _rand    = irandom($B)==0; // $B==0. 1/12th chance
            
	            if (_Input1_HELD) // Input.trig_LH
	            {    _hms = _i;  }
	            else _hms = pal_curs_idx mod PAL_CNT;
            
	            switch(_hms)
	            {
	                case 0:{ // H: HIGHLIGHT
	                _col_idx = dev_randomize_palette_highlight();
	                //_col_idx += _rand;
	                break;}
                
	                case 1:{ // M: MIDTONE
	                _col_idx = dev_randomize_palette_midtone();
	                //if (isVal(_col_idx,0,3) && _rand)
	                //{         _col_idx += sign_(_col_idx==0);  }
	                break;}
                
	                case 2:{ // S: SHADOW
	                _col_idx = dev_randomize_palette_shadow();
	                //_col_idx -= _rand;
	                break;}
	            }
            
	            //_col_idx  = dev_randomize_palette_1b(_col_idx);
	            //_col_idx  = clamp(  _col_idx, 0,3) <<4;
	            //_col_idx |= irandom($D); // $D: Last color in a column
	            _new_colors += hex_str(_col_idx);
            
	            if(!_Input1_HELD) break;
	        }
        
	        pal_in_editor = change_pal(strReplaceAt(p.pal_rm_new, _POS, string_length(_new_colors), _new_colors));
        
	        break;
	    }
    
    
    
	    // MOVE CURSOR  ------------------------------------------------------
	    // --------------------------------------------------------------------------
	    pal_curs_idx = PalettePicker_update_cursor(pal_curs_idx, PAL_CNT,COL_PER_PAL_);
	    break;}
    
    
    
    
    
    
    
    
    
    
    
    
    
	    // ----------------------------------------------------------------------------------------
	    // ----------------------------------------------------------------------------------------
	    // ----------------------------------------------------------------------------------------
	    // ----------------------------------------------------------------------------------------
	    // ----------------------------------------------------------------------------------------
	    // ----------------------------------------------------------------------------------------
	    case STATE_PKM2:{ // Choose a new color for the palette color
	    PalettePicker_Step_1a();
    
    
	    if(!timer)
	    {
	        // TOGGLE OLD/NEW COLOR --------------------------------------------------------
	        if (Input.GP_Other2_held) // gp4: xbox 'Y' button
	        {
	            if (p.pal_rm_curr!=pal_before_edit_color)
	            {       change_pal(pal_before_edit_color);  }
            
	            break;
	        }
	        else
	        {
	            if (p.pal_rm_curr!=pal_in_editor)
	            {       change_pal(pal_in_editor);  }
	        }
        
        
        
	        // CANCEL/DONE ------------------------------------------------------------------
	        if (_CANCEL  // Backspace || ESC
	        ||  Input.GP_Other1_pressed ) // gp2: xbox B button
	        {
	            pal_in_editor = change_pal(pal_before_edit_color);
	            //pal_before_edit_color = "";
            
	            timer = DELAY1_DUR; // Delay any input reaction in next state.
	            state = STATE_PKM1;
	            break;
	        }
        
        
        
	        // SELECT COLOR ------------------------------------------------------------------
	        if (Input.Jump_pressed) // xbox 'A' button
	        {
	            if (pal_before_edit_color!=p.pal_rm_new)
	            {
	                ds_list_add(dl_hist_sess,p.pal_rm_new);
	            }
            
	            timer = DELAY2_DUR; // Delay any input reaction in next state.
	            state = STATE_PKM1;
	            break; // Selecting a palette color to edit gets priority.
	        }
	    }
    
    
    
	    // MOVE CURSOR ------------------------------------------------------------------
	        col_curs_idx_prev = col_curs_idx;
	        col_curs_idx  = PalettePicker_update_cursor(col_curs_idx, COLOR_GRID_W,COLOR_GRID_H);
    
	    if (col_curs_idx!=col_curs_idx_prev)
	    {
	        var _COL = ((col_curs_idx div COLOR_GRID_W)<<4) | (col_curs_idx mod COLOR_GRID_W);
	        var _POS = PalettePicker_pal_col_pos();
	        pal_in_editor = change_pal(strReplaceAt(p.pal_rm_new, _POS, 2, hex_str(_COL)));
        
	        if(0){
	        var _CLM  = ((_POS-1)>>1) mod global.palette_image_W;
	        var _ROW  = ((_POS-1)>>1) div global.palette_image_W;
	        var _str  =   "_CLM $"+hex_str(_CLM);
	            _str += ", _ROW $"+hex_str(_ROW);
	        sdm(""); sdm(_str); sdm("");
	        }
	    }
	    break;}
    
    
    
    
    
    
    
    
    
    
    
	    // ----------------------------------------------------------------------------------------
	    // ----------------------------------------------------------------------------------------
	    // ----------------------------------------------------------------------------------------
	    // ----------------------------------------------------------------------------------------
	    // ----------------------------------------------------------------------------------------
	    // ----------------------------------------------------------------------------------------
	    case STATE_BGR_COLOR:{ // Choose a new color for the background
	    if (timer) break;
    
	    PalettePicker_Step_1a();
    
    
	    // CANCEL/DONE ------------------------------------------------------------------
	        _CANCEL |= _EDIT_REQUESTED_BGR;
	    var _CONFIRM = Input.Pause_pressed || keyboard_check_pressed(vk_enter);
	    if (_CANCEL    // Backspace || ESC
	    ||  _CONFIRM ) // Start button || ENTER
	    {
	        if (_CONFIRM)
	        {
	            if (bgr_at_sess_start!=p.background_color_index)
	            {
	                //ds_list_add(dl_hist_room, p.pal_rm_curr);
	            }
	        }
	        else if (_CANCEL)
	        {
	            //bg_set_color(p.dl_COLOR[|bgr_at_sess_start]);
	            //p.background_color_index = bgr_at_sess_start;
	            p.background_color_index = val(g.dm_rm[?g.rm_name+STR_Background_color], p.CI_ERR0);
	        }
        
	        //pal_at_sess_start = "";
	        //ds_list_clear(dl_hist_sess);
        
	        timer = DELAY1_DUR; // Delay any input reaction in next state.
	        state = STATE_IDLE;
	        break;
	    }
    
    
    
    
	    // TOGGLE OLD/NEW COLORS --------------------------------------------------------
	    if (Input.GP_Other2_held) // gp4: xbox 'Y' button
	    {
	        //p.background_color_index = val(g.dm_rm[?g.rm_name+STR_Background_color], p.CI_ERR0);
	        p.background_color_index = bgr_at_sess_start;
	        break;
	    }
	    else
	    {
	        p.background_color_index = bgr_in_editor;
	    }
    
    
    
    
	    // MOVE CURSOR ------------------------------------------------------------------
	        col_curs_idx_prev = col_curs_idx;
	        col_curs_idx = PalettePicker_update_cursor(col_curs_idx, COLOR_GRID_W,COLOR_GRID_H);
    
	    if (col_curs_idx!=col_curs_idx_prev)
	    {
	        //var _COL = ((col_curs_idx div COLOR_GRID_W)<<4) | (col_curs_idx mod COLOR_GRID_W);
	        //var _POS = PalettePicker_pal_col_pos();
	        bgr_in_editor = ((col_curs_idx div COLOR_GRID_W)<<4) | (col_curs_idx mod COLOR_GRID_W);
	        //bgr_in_editor = col_curs_idx;
	        p.background_color_index = bgr_in_editor;
	        //pal_in_editor = change_pal(strReplaceAt(p.pal_rm_new, _POS, 2, hex_str(_COL)));
        
	        if(0){
	        var _CLM  = ((_POS-1)>>1) mod global.palette_image_W;
	        var _ROW  = ((_POS-1)>>1) div global.palette_image_W;
	        var _str  =   "_CLM $"+hex_str(_CLM);
	            _str += ", _ROW $"+hex_str(_ROW);
	        sdm(""); sdm(_str); sdm("");
	        }
	    }
	    break;}
	} // switch (state)







}
