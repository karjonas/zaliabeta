/// @description  GraphicsEffectsEditor_update_Saturation()
function GraphicsEffectsEditor_update_Saturation() {


	if (timer)
	{
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}


	if (GraphicsEffectsEditor_update_backout(Saturation_cursor==Saturation_BACK))
	{   // Handles the check for this sub-menu's BACK option
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}



	if (pressed_move_cursor_v)
	{
	    var _DIR = sign_(!pressed_up);
	    var _COUNT = ds_grid_width(dg_Saturation);
	    repeat(_COUNT)
	    {
	        Saturation_cursor += _COUNT;
	        Saturation_cursor += _DIR;
	        Saturation_cursor  = Saturation_cursor mod _COUNT;
        
	        if (Saturation_cursor==Saturation_ENABLE 
	        ||  Saturation_cursor==Saturation_DEFAULT 
	        ||  (dg_Saturation[#Saturation_ENABLE,$5] && dg_Saturation[#Saturation_cursor,$4]) ) // 5: current, 4: option available
	        {
	            aud_play_sound(SOUND_CURSOR1, -1,-1, SOUND_VOLUME);
	            break;//repeat(_COUNT)
	        }
	    }
    
	    timer = DURATION0;
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}








	switch(Saturation_cursor)
	{
	    // ---------------------------------------
	    case Saturation_ENABLE:{
	    if (pressed_confirm2)
	    {
	            dg_Saturation[#Saturation_ENABLE,$5] = !dg_Saturation[#Saturation_ENABLE,$5]; // 5: current
	        if (dg_Saturation[#Saturation_ENABLE,$5])   dg_Saturation[#Saturation_ENABLE,$A] = "ON";
	        else                                        dg_Saturation[#Saturation_ENABLE,$A] = "OFF";
	        dg_Main[#Main_SATURATION,$A] = dg_Saturation[#Saturation_ENABLE,$A];
	        dg_Main[#Main_SATURATION,$5] = dg_Saturation[#Saturation_ENABLE,$5];
	        aud_play_sound(SOUND_CONFIRM2, -1,-1, SOUND_VOLUME);
	        timer = DURATION0;
	    }
	    break;}//case Saturation_ENABLE
    
    
	    // ---------------------------------------
	    case Saturation_EDIT:{
	    if (pressed_right 
	    ||  pressed_left )
	    {
	        var  _IDX = Saturation_EDIT;
	        var  _DIR = sign_(pressed_right);
	        var  _val=dg_Saturation[#_IDX,$5];            // 5: current
	        if ((_val>dg_Saturation[#_IDX,$6] && !_DIR)   // 6: min
	        ||  (_val<dg_Saturation[#_IDX,$7] &&  _DIR) ) // 7: max
	        {
	                 if (Input.Other5_held) _val += 0.010*_DIR; // Other5: LTrig
	            else if (Input.Other6_held) _val += 0.005*_DIR; // Other6: RTrig
	            else                        _val += 0.001*_DIR;
	            dg_Saturation[#_IDX,$5] = clamp(_val,   dg_Saturation[#_IDX,$6],dg_Saturation[#_IDX,$7]);
	            dg_Saturation[#_IDX,$A] = string_format(dg_Saturation[#_IDX,$5], 1,4); // 10: value text
            
	            aud_play_sound(SOUND_CURSOR2, -1,-1, SOUND_VOLUME);
	            timer = DURATION0;
	        }
	    }
	    break;}//case Saturation_EDIT
    
    
	    // ---------------------------------------
	    case Saturation_DEFAULT:{
	    if (pressed_confirm1)
	    {
	        dg_Saturation[#Saturation_EDIT,$5] = dg_Saturation[#Saturation_EDIT,$8]; // 5: current, 8: default
	        aud_play_sound(SOUND_CONFIRM1, -1,-1, SOUND_VOLUME);
	        timer = DURATION0;
	    }
	    break;}//case Saturation_DEFAULT
    
    
	    // ---------------------------------------
	    case Saturation_BACK:{
	    /*
	    if (pressed_confirm1)
	    {
	        aud_play_sound(SOUND_BACK, -1,-1, SOUND_VOLUME);
	        timer = DURATION1;
	        menu_focus = menu_focus_Main;
	    }
	    */
	    break;}//case Saturation_BACK
	}//switch(Saturation_cursor)







}
