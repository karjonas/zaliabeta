/// @description  OptionsMenu_Draw_AudioCustom()
function OptionsMenu_Draw_AudioCustom() {


	var _i,_j, _idx, _val, _count, _size, _state;
	var _x,_y, _x0,_y0, _x1,_y1, _x2,_y2;
	var _dk, _set;
	var _sprite, _pi, _color,_color1;
	var _PI_DARK1=get_pi(PI_DARKLONK,3);
	//var _GREY_COLOR1 = p.C_GRY1;
	var _tsrc, _ts_x,_ts_y;
	var _font, _text;
	var _NO_ACTION_TEXT = "---";
	var _FONT = Font2;
	var _FONT_SIZE = sprite_get_width(Font2);
	var _LEADING1 = $6;
	var _LEADING2 = $4;
	var _PAD1 = $2;
	var _DIST1 = _FONT_SIZE+_LEADING1;
	var _DIST2 = _DIST1-3;
	var _BLINK_TIMING = $40;

	var _Window_W = draw_clms_count<<3;

	var _Info_H         = $3<<3; // Information area
	var _ScrollArea_YB  = drawY+Window_H;
	    _ScrollArea_YB -= $8;    // Window frame
	    _ScrollArea_YB -= _Info_H; // Information area
	    _ScrollArea_YB -= $8;      // Divider
	var _Info_YT        = _ScrollArea_YB;
	    _ScrollArea_YB -= $6;    // Padding
	var _ScrollArea_YT  = drawY+ScrollArea_Y_MIN;
	var _ScrollArea_H   = _ScrollArea_YB -_ScrollArea_YT;
	var _ScrollArea_YC  = _ScrollArea_YT+(_ScrollArea_H>>1);

	var _Option_ROWS = _ScrollArea_H div _DIST1;


	//var _Text_Y_MAX = _ScrollArea_YB-_DIST1;
	var _Text_Y_MAX = _ScrollArea_YB-_FONT_SIZE;

	var _OpenSubMenu_IDX = -1;
	var _SUB_MENU_IS_OPEN = false;
	for(_i=0; _i<AudioCustom_COUNT; _i++)
	{
	    if (dg_AudioCustom[#_i,2])
	    {
	        _OpenSubMenu_IDX = _i;
	        _SUB_MENU_IS_OPEN = true;
	        break;//_i
	    }
	}


	var _IS_CURSOR_BLINK_PERIOD = g.counter0&(_BLINK_TIMING-1) < _BLINK_TIMING div 3;
	var _CURSOR_ON_THEME = inRange(AudioCustom_cursor, AudioCustom_Themes_IDX,AudioCustom_Themes_IDX+val(Audio.dm[?STR_Theme+STR_Count+STR_Music]));
	//var _CURSOR_HAS_SUBMENU = AudioCustom_cursor==AudioCustom_TOGGLE_SET || inRange(AudioCustom_cursor, AudioCustom_Themes_IDX,AudioCustom_Themes_IDX+val(Audio.dm[?STR_Theme+STR_Count+STR_Music]));
	var _CURSOR_HAS_SUBMENU = _CURSOR_ON_THEME || AudioCustom_cursor==AudioCustom_TOGGLE_SET;


	var _TextArea1_XL  = drawX;
	    _TextArea1_XL += $8; // window frame
	    _TextArea1_XL += $0; // pad
	    _TextArea1_XL += $8; // cursor width
	    _TextArea1_XL += $8; // state indicator
	//
	var _Cursor1_XL  = _TextArea1_XL;
	    _Cursor1_XL -= $8; // cursor width
	    _Cursor1_XL -= $8; // state indicator
	//
	var _TextArea2_XL  = _TextArea1_XL;
	    _TextArea2_XL += $8; // cursor width
	    _TextArea2_XL += $8; // state indicator
	    _TextArea2_XL += $4; // micro adjustment
	//
	var _Cursor2_XL  = _TextArea2_XL;
	    _Cursor2_XL -= $8; // cursor width
	    _Cursor2_XL -= $8; // state indicator
	//





	_count = 0;
	if (_OpenSubMenu_IDX+1)
	{
	    if (_OpenSubMenu_IDX==AudioCustom_TOGGLE_SET)
	    {    _count = Audio.AudioSets_COUNT;  }
	    else _count = val(Audio.dm[?dg_AudioCustom[#_OpenSubMenu_IDX,0]+STR_Track+STR_Count+STR_Music]);
	}
	_count += AudioCustom_COUNT-1;
	_count += 1; // For divider
	//_count  = AudioCustom_COUNT-1;
	//_count += 1; // For divider

	_y2  = _ScrollArea_YB-_FONT_SIZE;
	_y2 -= _count*_DIST1;

	_count  = AudioCustom_cursor;
	_count += AudioCustom_cursor2*(_OpenSubMenu_IDX>=0);
	_y1  = _ScrollArea_YT + ((_Option_ROWS>>1)*_DIST1);
	_y1 -= _count*_DIST1;

	_y0  = clamp(_y1,_y2,_ScrollArea_YT);




	//AudioCustom_cursor2
	//if (_i==AudioCustom_TOGGLE_SET) _count = Audio.AudioSets_COUNT;
	//else                            _count = val(Audio.dm[?dg_AudioCustom[#_i,0]+STR_Track+STR_Count+STR_Music]);









	// ------------------------------------------------------------------------------
	_tsrc = g.dl_MenuFrame_TSRC[|0]; // 0: horizontal bar
	for(_i=draw_clms_count-2; _i>=1; _i--) // 8x8. each column of the row
	{
	    _ts_x = ((_tsrc>>0)&$F) <<3;
	    _ts_y = ((_tsrc>>4)&$F) <<3;
	    _x    = drawX + (_i<<3);
	    _y    = _Info_YT;
	    draw_background_part(g.TS_MENU, _ts_x,_ts_y, 8,8, _x,_y);
	}









	//pal_swap_set(p.pal_spr, PI_MENU, false);
	//pal_swap_reset();
	// ------------------------------------------------------------------------------
	for(_i=0; _i<AudioCustom_COUNT; _i++)
	{
	    if (_i==AudioCustom_Themes_IDX)
	    {   // themes divider line
	        _val =  _Window_W-($12<<1); // divider w
	        //_val = (_Window_W div 3)<<1; // divider w
	        _x   =  drawX+(_Window_W>>1);
	        _x  -= _val>>1;
        
	        _y   = _y0+(_DIST1>>1);
	        _y  -= 4;
	        if (_y>=_ScrollArea_YT 
	        &&  _y<=_ScrollArea_YB-1 )
	        {
	            draw_rect(p.C_GRY2, _x,_y, _val,1);
	        }
        
	        _y0 += _DIST1;
	    }
    
    
	    //_font = dg_AudioCustom[#_i,1];
	    _text = dg_AudioCustom[#_i,4]; // 4: text to draw
	    _x = _TextArea1_XL;
	    _y = _y0;
    
	    if (_y>=_ScrollArea_YT 
	    &&  _y<=_Text_Y_MAX )
	    {
	        if (_SUB_MENU_IS_OPEN 
	        && !dg_AudioCustom[#_i,2] ) // 2: open state
	        {    _pi = _PI_DARK1;  }
	        else _pi =  PI_MENU;
        
	        //if (_i==AudioCustom_cursor) _color = c_white;
	        //else                        _color = -1;
	        //draw_text_(_x,_y, _text,_FONT, _pi,_color);
	        draw_text_(_x,_y, _text,_FONT, _pi);
        
        
	        // State Indicator
	        if (dg_AudioCustom[#_i,3]) // 3: has state indicator
	        {
	            if (_i==AudioCustom_TOGGLE_ALL) _state = val(dm_AudioCustom[?"_Indicator"+STR_State+"_ToggleAll"]);
	            else                            _state = val(dm_AudioCustom[?"_Indicator"+STR_State+dg_AudioCustom[#_i,0]]);
            
	            _x1  = _x-$4;              // indicator center x
	            _x1 -= _PAD1;
	            _y1  = _y+(_FONT_SIZE>>1); // indicator center y, text center y
	            _x1--;
	            _y1--;
	            if (_state==1) draw_rect_(p.C_WHT2, _x1,_y1, 2,2);
	            _x1--;
	            _y1--;
	            if (_state==2) draw_rect_(p.C_WHT1, _x1,_y1, 4,4);
	            _x1--;
	            _y1--;
	            draw_rect_(p.C_GRY2, _x1,_y1, 6,6, 1,true);
	        }
        
        
	        // Arrow Cursor
	        if (_i==AudioCustom_cursor)
	        {
	            if (_SUB_MENU_IS_OPEN 
	            || !_IS_CURSOR_BLINK_PERIOD )
	            {
	                if (dg_AudioCustom[#_i,2]) // 2: open state
	                {
	                    _sprite = spr_arrow_6_dwn;
	                    _pi = _PI_DARK1;
	                }
	                else
	                {
	                    _sprite = spr_arrow_6_rgt;
	                    _pi = PI_MENU;
	                }
	                _x -= $C;
	                _x -= $1;
	                _y += _FONT_SIZE>>1;
	                draw_sprite_(_sprite,0, _x,_y, _pi);
	            }
	        }
	    }
    
    
	    _y0 += _DIST1;
    
    
    
	    if (dg_AudioCustom[#_i,2]) // 2: open state
	    {
	        if (_i==AudioCustom_TOGGLE_SET) _count = Audio.AudioSets_COUNT;
	        else                            _count = val(Audio.dm[?dg_AudioCustom[#_i,0]+STR_Track+STR_Count+STR_Music]);
        
	        for(_j=0; _j<_count; _j++)
	        {
	            _x = _TextArea2_XL;
	            _y = _y0;
	            if (_y>=_ScrollArea_YT 
	            &&  _y<=_Text_Y_MAX )
	            {
	                if (_i==AudioCustom_TOGGLE_SET)
	                {
	                    _set   = Audio.dl_AUDIO_SETS[|_j];
	                    _text  = val(Audio.dm[?STR_Audio+STR_Set+STR_Creator+STR_Name+_set], _set);
	                    _state = val(dm_AudioCustom[?"_Indicator"+STR_State+_set]);
	                }
	                else
	                {
	                    _set   = val(Audio.dm[?dg_AudioCustom[#_i,0]+STR_Track+STR_Music+hex_str(_j+1)+STR_Set], "undefined");
	                    _set   = string(_set);
	                    _text  = val(Audio.dm[?STR_Audio+STR_Set+STR_Creator+STR_Name+_set], _set);
	                    _state = val(Audio.dm_random_custom[?dg_AudioCustom[#_i,0]+hex_str(_j+1)+STR_Qualified]);
	                    _state = min(_state+sign(_state), 2);
	                }
                
                
	                // Audioset Name
	                if (_j==AudioCustom_cursor2) _color = p.C_WHT2;
	                else                         _color = p.C_GRY1;
	                draw_text_(_x,_y, _text,_FONT, -1,_color);
	                //draw_text_(_x,_y, _text,_FONT);
                
                
	                // State Indicator
	                _x1  = _x-$4;              // indicator center x
	                _x1 -= _PAD1;
	                _y1  = _y+(_FONT_SIZE>>1); // indicator center y, text center y
	                _x1--;
	                _y1--;
	                if (_state==1) draw_rect_(p.C_WHT2, _x1,_y1, 2,2);
	                _x1--;
	                _y1--;
	                //if (_state) draw_rect_(p.C_WHT2, _x1,_y1, 4,4);
	                if (_state==2) draw_rect_(p.C_WHT1, _x1,_y1, 4,4);
	                _x1--;
	                _y1--;
	                draw_rect_(p.C_GRY2, _x1,_y1, 6,6, 1,true);
                
                
	                // Arrow Cursor
	                if (_j==AudioCustom_cursor2 
	                && !_IS_CURSOR_BLINK_PERIOD )
	                {
	                    _sprite = spr_arrow_6_rgt;
	                    _x -= $8;            // state indicator xl
	                    _x -= $4;            // arrow center x
	                    _x -= $1;
	                    _y += _FONT_SIZE>>1; // arrow center y
	                    draw_sprite_(_sprite,0, _x,_y, PI_MENU);
	                }
	            }
            
            
	            _y0 += _DIST1;
	        }
	    }
    
    
	    if (_y0>_Text_Y_MAX)
	    {
	        break;//_i
	    }
	}










	// ------------------------------------------------------------------------------
	_color  = p.C_WHT2;
	_color1 = p.C_GRY2;
	//_color1 = p.C_GRY1;

	// _NO_ACTION_TEXT = "---"
	_text = "START: ";
	switch(AudioCustom_cursor)
	{   // -------------------------------------------------------------
	    case AudioCustom_BACK:{
	    _text += "BACK";
	    break;}
    
    
	    // -------------------------------------------------------------
	    case AudioCustom_TOGGLE_ALL:{
	    _text += "TOGGLE ALL TRACKS";
	    break;}
    
    
	    // -------------------------------------------------------------
	    case AudioCustom_TOGGLE_SET:{
	    if (_SUB_MENU_IS_OPEN)
	    {
	        _set = Audio.dl_AUDIO_SETS[|AudioCustom_cursor2];
	        _text += "TOGGLE ALL TRACKS FOR ";
	        _text += "'";
	        _text += val(Audio.dm[?STR_Audio+STR_Set+STR_Creator+STR_Name+_set], _set);
	        _text += "'";
	    }
	    else
	    {
	        _text += _NO_ACTION_TEXT;
	        _color = _color1;
	    }
	    break;}
    
    
	    // -------------------------------------------------------------
	    default:{
	    if (_SUB_MENU_IS_OPEN)
	    {
	        _text += "TOGGLE TRACK";
	    }
	    else
	    {
	        _text += "TOGGLE ALL TRACKS FOR ";
	        _text += "'";
	        _text += dg_AudioCustom[#AudioCustom_cursor,4];
	        _text += "'";
	    }
	    break;}
	}



	_x0  = drawX;
	_x0 += $8; // Window frame
	_x0 += $2; // Padding
	_y0  = _Info_YT;
	_y0 += $8; // Divider

	_x  = _x0;
	_y  = _y0;
	draw_text_(_x,_y, _text,_FONT, -1,_color);
	_y0 += _DIST2;




	_x  = _x0;
	_y  = _y0;
	_text  = "XBOX-Y/";
	_text += "SPACEBAR";
	//_text += AudioCustom_PLAY_KEY;
	//_text += "-KEY";
	_text += ": ";
	if (_CURSOR_ON_THEME) _text += "PLAY TRACK";
	else                  _text += _NO_ACTION_TEXT;
	//_text = "XBOX 'Y': PLAY OR STOP TRACK";
	//_text = "XBOX 'Y': PLAY/STOP TRACK";
	if (_CURSOR_ON_THEME) _color = p.C_WHT1;
	else                  _color = _color1;
	draw_text_(_x,_y, _text,_FONT, -1,_color);
	_y0 += _DIST2;




	if (_CURSOR_HAS_SUBMENU)
	{
	    _color = p.C_WHT1;
	    _pi = PI_MENU;
	}
	else
	{
	    _color = _color1;
	    _pi = _PI_DARK1;
	}

	_x  = _x0;
	_x += $4; // arrow center
	_y  = _y0;
	_y += $4; // arrow center
	_y -= $1; // micro adjustment
	draw_sprite_(spr_arrow_1b,0, _x-1,_y, _pi, -1);

	_x += $4; // text xl
	_y  = _y0;
	_text  = ",";
	draw_text_(_x,_y, _text,_FONT, -1,_color);

	_x += $C; // arrow center
	_y  = _y0;
	_y += $4; // arrow center
	_y -= $1; // micro adjustment
	draw_sprite_(spr_arrow_1b,0, _x-1,_y, _pi);

	_x += $4; // text xl
	_y  = _y0;
	_text  = ": ";
	if (_CURSOR_HAS_SUBMENU) _text += "OPEN/CLOSE SUB-MENU";
	else                     _text += _NO_ACTION_TEXT;
	draw_text_(_x,_y, _text,_FONT, -1,_color);

	//_text = "RIGHT AND LEFT: SUB-MENU";
	//_text = "RIGHT AND LEFT: OPEN AND CLOSE SUB-MENU";
	//_text = "RIGHT/LEFT: OPEN/CLOSE SUB-MENU";
	//draw_text_(_x,_y, _text,_FONT);
	_y0 += _DIST2;


	//"BACK: XBOX B, ESCAPE" + "LEFT"







}
