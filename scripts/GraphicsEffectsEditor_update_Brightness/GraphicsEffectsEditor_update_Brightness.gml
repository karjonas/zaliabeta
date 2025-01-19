/// @description  GraphicsEffectsEditor_update_Brightness()
function GraphicsEffectsEditor_update_Brightness() {


	if (timer)
	{
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}


	if (GraphicsEffectsEditor_update_backout(Brightness_cursor==Brightness_BACK))
	{   // Handles the check for this sub-menu's BACK option
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}
	/*
	if (pressed_backout 
	||  (Brightness_cursor==Brightness_BACK && pressed_confirm1) )
	{
	    GraphicsEffectsEditor_reset_cursors(-1);
	    //GraphicsEffectsEditor_reset_cursors(Main_BRIGHTNESS);
	    aud_play_sound(SOUND_BACK);
	    timer = DURATION1;
	    menu_focus = menu_focus_Main;
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}
	*/


	if (pressed_move_cursor_v)
	{
	    var _DIR = sign_(!pressed_up);
	    var _COUNT = ds_grid_width(dg_Brightness);
	    repeat(_COUNT)
	    {
	        Brightness_cursor += _COUNT;
	        Brightness_cursor += _DIR;
	        Brightness_cursor  = Brightness_cursor mod _COUNT;
        
	        if (Brightness_cursor==Brightness_ENABLE 
	        ||  Brightness_cursor==Brightness_DEFAULT 
	        ||  (dg_Brightness[#Brightness_ENABLE,$5] && dg_Brightness[#Brightness_cursor,$4]) ) // 5: current, 4: option available
	        {
	            aud_play_sound(SOUND_CURSOR1, -1,-1, SOUND_VOLUME);
	            break;//repeat(_COUNT)
	        }
	    }
    
	    timer = DURATION0;
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}








	switch(Brightness_cursor)
	{
	    // ---------------------------------------
	    case Brightness_ENABLE:{
	    if (pressed_confirm2)
	    {
	            dg_Brightness[#Brightness_ENABLE,$5] = !dg_Brightness[#Brightness_ENABLE,$5]; // 5: current
	        if (dg_Brightness[#Brightness_ENABLE,$5])   dg_Brightness[#Brightness_ENABLE,$A] = "ON";
	        else                                        dg_Brightness[#Brightness_ENABLE,$A] = "OFF";
	        dg_Main[#Main_BRIGHTNESS,$A] = dg_Brightness[#Brightness_ENABLE,$A];
	        dg_Main[#Main_BRIGHTNESS,$5] = dg_Brightness[#Brightness_ENABLE,$5];
	        aud_play_sound(SOUND_CONFIRM2, -1,-1, SOUND_VOLUME);
	        timer = DURATION0;
	    }
	    break;}//case Brightness_ENABLE
    
    
	    // ---------------------------------------
	    case Brightness_EDIT:{
	    if (pressed_right 
	    ||  pressed_left )
	    {
	        var  _IDX = Brightness_EDIT;
	        var  _DIR = sign_(pressed_right);
	        var  _val=dg_Brightness[#_IDX,$5];            // 5: current
	        if ((_val>dg_Brightness[#_IDX,$6] && !_DIR)   // 6: min
	        ||  (_val<dg_Brightness[#_IDX,$7] &&  _DIR) ) // 7: max
	        {
	                 if (Input.Other5_held) _val += 0.10*_DIR; // Other5: LTrig
	            else if (Input.Other6_held) _val += 0.05*_DIR; // Other6: RTrig
	            else                        _val += 0.01*_DIR;
	            dg_Brightness[#_IDX,$5] = clamp(_val,   dg_Brightness[#_IDX,$6],dg_Brightness[#_IDX,$7]);
	            dg_Brightness[#_IDX,$A] = string_format(dg_Brightness[#_IDX,$5], 1,4); // 10: value text
            
	            aud_play_sound(SOUND_CURSOR2, -1,-1, SOUND_VOLUME);
	            timer = DURATION0;
	        }
	    }
	    break;}//case Brightness_EDIT
    
    
	    // ---------------------------------------
	    case Brightness_DEFAULT:{
	    if (pressed_confirm1)
	    {
	        dg_Brightness[#Brightness_EDIT,$5] = dg_Brightness[#Brightness_EDIT,$8]; // 5: current, 8: default
	        aud_play_sound(SOUND_CONFIRM1, -1,-1, SOUND_VOLUME);
	        timer = DURATION0;
	    }
	    break;}//case Brightness_DEFAULT
    
    
	    // ---------------------------------------
	    case Brightness_BACK:{
	    /*
	    if (pressed_confirm1)
	    {
	        aud_play_sound(SOUND_BACK, -1,-1, SOUND_VOLUME);
	        timer = DURATION1;
	        menu_focus = menu_focus_Main;
	    }
	    */
	    break;}//case Brightness_BACK
	}//switch(Brightness_cursor)







}
