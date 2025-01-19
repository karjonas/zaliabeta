/// @description  GraphicsEffectsEditor_update_Blur()
function GraphicsEffectsEditor_update_Blur() {


	if (timer)
	{
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}


	if (GraphicsEffectsEditor_update_backout(Blur_cursor==Blur_BACK))
	{   // Handles the check for this sub-menu's BACK option
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}



	if (pressed_move_cursor_v)
	{
	    var _DIR = sign_(!pressed_up);
	    var _COUNT = ds_grid_width(dg_Blur);
	    repeat(_COUNT)
	    {
	        Blur_cursor += _COUNT;
	        Blur_cursor += _DIR;
	        Blur_cursor  = Blur_cursor mod _COUNT;
        
	        if (Blur_cursor==Blur_ENABLE 
	        ||  Blur_cursor==Blur_DEFAULT 
	        ||  (dg_Blur[#Blur_ENABLE,$5] && dg_Blur[#Blur_cursor,$4]) ) // 5: current, 4: option available
	        {
	            aud_play_sound(SOUND_CURSOR1, -1,-1, SOUND_VOLUME);
	            break;//repeat(_COUNT)
	        }
	    }
    
	    timer = DURATION0;
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}








	switch(Blur_cursor)
	{
	    // ---------------------------------------
	    case Blur_ENABLE:{
	    if (pressed_confirm2)
	    {
	            dg_Blur[#Blur_ENABLE,$5] = !dg_Blur[#Blur_ENABLE,$5]; // 5: current
	        if (dg_Blur[#Blur_ENABLE,$5])   dg_Blur[#Blur_ENABLE,$A] = "ON";
	        else                            dg_Blur[#Blur_ENABLE,$A] = "OFF";
	        dg_Main[#Main_BLUR,$A] = dg_Blur[#Blur_ENABLE,$A];
	        dg_Main[#Main_BLUR,$5] = dg_Blur[#Blur_ENABLE,$5];
	        aud_play_sound(SOUND_CONFIRM2, -1,-1, SOUND_VOLUME);
	        timer = DURATION0;
	    }
	    break;}//case Blur_ENABLE
    
    
	    // ---------------------------------------
	    case Blur_EDIT:{
	    if (pressed_right 
	    ||  pressed_left )
	    {
	        var  _IDX = Blur_EDIT;
	        var  _DIR = sign_(pressed_right);
	        var  _val=dg_Blur[#_IDX,$5];            // 5: current
	        if ((_val>dg_Blur[#_IDX,$6] && !_DIR)   // 6: min
	        ||  (_val<dg_Blur[#_IDX,$7] &&  _DIR) ) // 7: max
	        {
	                 if (Input.Other5_held) _val += 0.10*_DIR; // large  change. Other5: LTrig
	            else if (Input.Other6_held) _val += 0.05*_DIR; // medium change. Other6: RTrig
	            else                        _val += 0.01*_DIR; // small  change
	            dg_Blur[#_IDX,$5] = clamp(_val,   dg_Blur[#_IDX,$6],dg_Blur[#_IDX,$7]);
	            dg_Blur[#_IDX,$A] = string_format(dg_Blur[#_IDX,$5], 1,4); // 10: value text
            
	            aud_play_sound(SOUND_CURSOR2, -1,-1, SOUND_VOLUME);
	            timer = DURATION0;
	        }
	    }
	    break;}//case Blur_EDIT
    
    
	    // ---------------------------------------
	    case Blur_DEFAULT:{
	    if (pressed_confirm1)
	    {
	        dg_Blur[#Blur_EDIT,$5] = dg_Blur[#Blur_EDIT,$8]; // 5: current, 8: default
	        aud_play_sound(SOUND_CONFIRM1, -1,-1, SOUND_VOLUME);
	        timer = DURATION0;
	    }
	    break;}//case Blur_DEFAULT
    
    
	    // ---------------------------------------
	    case Blur_BACK:{
	    /*
	    if (pressed_confirm1)
	    {
	        aud_play_sound(SOUND_BACK, -1,-1, SOUND_VOLUME);
	        timer = DURATION1;
	        menu_focus = menu_focus_Main;
	    }
	    */
	    break;}//case Blur_BACK
	}//switch(Blur_cursor)







}
