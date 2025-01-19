/// @description  GraphicsEffectsEditor_update_Scanlines()
function GraphicsEffectsEditor_update_Scanlines() {


	if (timer)
	{
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}


	if (GraphicsEffectsEditor_update_backout(Scanlines_cursor==Scanlines_BACK))
	{   // Handles the check for this sub-menu's BACK option
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}



	if (pressed_move_cursor_v)
	{
	    var _DIR = sign_(!pressed_up);
	    var _COUNT = ds_grid_width(dg_Scanlines);
	    repeat(_COUNT)
	    {
	        Scanlines_cursor += _COUNT;
	        Scanlines_cursor += _DIR;
	        Scanlines_cursor  = Scanlines_cursor mod _COUNT;
        
	        if (Scanlines_cursor==Scanlines_ENABLE 
	        ||  Scanlines_cursor==Scanlines_DEFAULT 
	        ||  (dg_Scanlines[#Scanlines_ENABLE,$5] && dg_Scanlines[#Scanlines_cursor,$4]) ) // 5: current, 4: option available
	        {
	            aud_play_sound(SOUND_CURSOR1, -1,-1, SOUND_VOLUME);
	            break;//repeat(_COUNT)
	        }
	    }
    
	    timer = DURATION0;
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}








	switch(Scanlines_cursor)
	{
	    // ---------------------------------------
	    case Scanlines_ENABLE:{
	    if (pressed_confirm2)
	    {
	            dg_Scanlines[#Scanlines_ENABLE,$5] = !dg_Scanlines[#Scanlines_ENABLE,$5]; // 5: current
	        if (dg_Scanlines[#Scanlines_ENABLE,$5])   dg_Scanlines[#Scanlines_ENABLE,$A] = "ON";
	        else                                      dg_Scanlines[#Scanlines_ENABLE,$A] = "OFF";
	        dg_Main[#Main_SCANLINES,$A] = dg_Scanlines[#Scanlines_ENABLE,$A];
	        dg_Main[#Main_SCANLINES,$5] = dg_Scanlines[#Scanlines_ENABLE,$5];
	        aud_play_sound(SOUND_CONFIRM2, -1,-1, SOUND_VOLUME);
	        timer = DURATION0;
	    }
	    break;}//case Scanlines_ENABLE
    
    
	    // ---------------------------------------
	    case Scanlines_EDIT:{
	    if (pressed_right 
	    ||  pressed_left )
	    {
	        var  _IDX = Scanlines_EDIT;
	        var  _DIR = -sign_(pressed_right);
	        var  _val=dg_Scanlines[#_IDX,$5];            // 5: current
	        if ((_val>dg_Scanlines[#_IDX,$6] && !_DIR)   // 6: min
	        ||  (_val<dg_Scanlines[#_IDX,$7] &&  _DIR) ) // 7: max
	        {
	                 if (Input.Other5_held) _val += 0.050*_DIR; // large  change. Other5: LTrig
	            else if (Input.Other6_held) _val += 0.010*_DIR; // medium change. Other6: RTrig
	            else                        _val += 0.005*_DIR; // small  change
	            dg_Scanlines[#_IDX,$5] = clamp(_val, dg_Scanlines[#_IDX,$6],dg_Scanlines[#_IDX,$7]);
            
	            _val  = (dg_Scanlines[#_IDX,$7]-dg_Scanlines[#_IDX,$6]) / 2; // half the range
	            _val  =  dg_Scanlines[#_IDX,$6]+_val; // range mid point
	            _val += _val-dg_Scanlines[#_IDX,$5]; // opposite side of range midpoint
	            //_val  =  dg_Scanlines[#_IDX,$5];
            
	            dg_Scanlines[#_IDX,$A] = string_format(_val, 1,4); // 10: value text
            
	            aud_play_sound(SOUND_CURSOR2, -1,-1, SOUND_VOLUME);
	            timer = DURATION0;
	        }
	    }
	    break;}//case Scanlines_EDIT
    
    
	    // ---------------------------------------
	    case Scanlines_DEFAULT:{
	    if (pressed_confirm1)
	    {
	        dg_Scanlines[#Scanlines_EDIT,$5] = dg_Scanlines[#Scanlines_EDIT,$8]; // 5: current, 8: default
	        aud_play_sound(SOUND_CONFIRM1, -1,-1, SOUND_VOLUME);
	        timer = DURATION0;
	    }
	    break;}//case Scanlines_DEFAULT
    
    
	    // ---------------------------------------
	    case Scanlines_BACK:{
	    /*
	    if (pressed_confirm1)
	    {
	        aud_play_sound(SOUND_BACK, -1,-1, SOUND_VOLUME);
	        timer = DURATION1;
	        menu_focus = menu_focus_Main;
	    }
	    */
	    break;}//case Scanlines_BACK
	}//switch(Scanlines_cursor)











}
