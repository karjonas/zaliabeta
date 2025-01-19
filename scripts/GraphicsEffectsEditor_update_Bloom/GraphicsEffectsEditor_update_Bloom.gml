/// @description  GraphicsEffectsEditor_update_Bloom()
function GraphicsEffectsEditor_update_Bloom() {


	if (timer)
	{
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}


	if (GraphicsEffectsEditor_update_backout(Bloom_cursor==Bloom_BACK))
	{   // Handles the check for this sub-menu's BACK option
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}



	if (pressed_move_cursor_v)
	{
	    var _DIR = sign_(!pressed_up);
	    var _COUNT = ds_grid_width(dg_Bloom);
	    repeat(_COUNT)
	    {
	        Bloom_cursor += _COUNT;
	        Bloom_cursor += _DIR;
	        Bloom_cursor  = Bloom_cursor mod _COUNT;
        
	        if (Bloom_cursor==Bloom_ENABLE 
	        ||  Bloom_cursor==Bloom_DEFAULT 
	        ||  (dg_Bloom[#Bloom_ENABLE,$5] && dg_Bloom[#Bloom_cursor,$4]) ) // 5: current, 4: option available
	        {
	            aud_play_sound(SOUND_CURSOR1, -1,-1, SOUND_VOLUME);
	            break;//repeat(_COUNT)
	        }
	    }
    
	    timer = DURATION0;
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}








	if (isVal(Bloom_cursor, Bloom_A,Bloom_B,Bloom_C,Bloom_D,Bloom_E,Bloom_F,Bloom_G))
	{
	    if (pressed_right 
	    ||  pressed_left )
	    {
	        var  _IDX = Bloom_cursor;
	        var  _DIR = sign_(pressed_right);
	        var  _val=dg_Bloom[#_IDX,$5];            // 5: current
	        if ((_val>dg_Bloom[#_IDX,$6] && !_DIR)   // 6: min
	        ||  (_val<dg_Bloom[#_IDX,$7] &&  _DIR) ) // 7: max
	        {
	            var _val1=0.01; // small  change
	            var _val2=0.05; // medium change
	            var _val3=0.10; // large  change
	            switch(Bloom_cursor){
	            case   Bloom_A:{_val1=0.0005; _val2=0.0020; _val3=0.0050; break;} // default: 0.0004
	            case   Bloom_B:{_val1=0.0010; _val2=0.0050; _val3=0.0100; break;} // default: 0.0120
	            case   Bloom_C:{_val1=0.0010; _val2=0.0050; _val3=0.0100; break;} // default: 0.0090
	            case   Bloom_D:{_val1=0.0010; _val2=0.0050; _val3=0.0100; break;} // default: 0.0075
	            case   Bloom_E:{_val1=0.0100; _val2=0.0500; _val3=0.1000; break;} // default: 0.3000
	            case   Bloom_F:{_val1=0.0100; _val2=0.0500; _val3=0.1000; break;} // default: 0.5000
	            case   Bloom_G:{_val1=0.0100; _val2=0.0500; _val3=0.1000; break;} // default: 0.2500
	            }
	                 if (Input.Other5_held) _val += _val3*_DIR; // large  change. Other5: LTrig
	            else if (Input.Other6_held) _val += _val2*_DIR; // medium change. Other6: RTrig
	            else                        _val += _val1*_DIR; // small  change
	            dg_Bloom[#_IDX,$5] = clamp(_val,   dg_Bloom[#_IDX,$6],dg_Bloom[#_IDX,$7]);
	            dg_Bloom[#_IDX,$A] = string_format(dg_Bloom[#_IDX,$5], 1,4); // 10: value text
            
	            aud_play_sound(SOUND_CURSOR2, -1,-1, SOUND_VOLUME);
	            timer = DURATION0;
	        }
	    }
    
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}




	switch(Bloom_cursor)
	{
	    // ---------------------------------------
	    case Bloom_ENABLE:{
	    if (pressed_confirm2)
	    {
	            dg_Bloom[#Bloom_ENABLE,$5] = !dg_Bloom[#Bloom_ENABLE,$5]; // 5: current
	        if (dg_Bloom[#Bloom_ENABLE,$5])   dg_Bloom[#Bloom_ENABLE,$A] = "ON";
	        else                              dg_Bloom[#Bloom_ENABLE,$A] = "OFF";
	        dg_Main[#Main_BLOOM,$A] = dg_Bloom[#Bloom_ENABLE,$A];
	        dg_Main[#Main_BLOOM,$5] = dg_Bloom[#Bloom_ENABLE,$5];
	        aud_play_sound(SOUND_CONFIRM2, -1,-1, SOUND_VOLUME);
	        timer = DURATION0;
	    }
	    break;}//case Bloom_ENABLE
    
    
	    // ---------------------------------------
	    case Bloom_DEFAULT:{
	    if (pressed_confirm1)
	    {
	        dg_Bloom[#Bloom_A,$5] = dg_Bloom[#Bloom_A,$8]; // 5: current, 8: default
	        dg_Bloom[#Bloom_B,$5] = dg_Bloom[#Bloom_B,$8]; // 5: current, 8: default
	        dg_Bloom[#Bloom_C,$5] = dg_Bloom[#Bloom_C,$8]; // 5: current, 8: default
	        dg_Bloom[#Bloom_D,$5] = dg_Bloom[#Bloom_D,$8]; // 5: current, 8: default
	        dg_Bloom[#Bloom_E,$5] = dg_Bloom[#Bloom_E,$8]; // 5: current, 8: default
	        dg_Bloom[#Bloom_F,$5] = dg_Bloom[#Bloom_F,$8]; // 5: current, 8: default
	        dg_Bloom[#Bloom_G,$5] = dg_Bloom[#Bloom_G,$8]; // 5: current, 8: default
	        aud_play_sound(SOUND_CONFIRM1, -1,-1, SOUND_VOLUME);
	        timer = DURATION0;
	    }
	    break;}//case Bloom_DEFAULT
    
    
	    // ---------------------------------------
	    case Bloom_BACK:{
	    /*
	    if (pressed_confirm1)
	    {
	        aud_play_sound(SOUND_BACK, -1,-1, SOUND_VOLUME);
	        timer = DURATION1;
	        menu_focus = menu_focus_Main;
	    }
	    */
	    break;}//case Bloom_BACK
	}//switch(Bloom_cursor)







}
