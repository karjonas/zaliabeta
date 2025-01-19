/// @description  draw_key_stats()
function draw_key_stats() {


	var _i,_j, _count;
	var _text, _type;
	var _DUNGEON_COUNT=6;

	var _CLMS=$E;
	var _XL0 = viewXL() + ($06<<3);
	var _XL1 = _XL0+($01<<3);
	var _xl  = _XL0;

	var _YDIST1=$C;
	var _YT0 = viewYT() + ($06<<3);
	var _YT1 = _YT0+($01<<3);
	var _YT2 = _YT1+ $10;
	var _yt  = _YT0;

	var _H  = $20+(_DUNGEON_COUNT*_YDIST1);
	    _H += sign(_H&$7)<<3;
	//
	var _ROWS = _H>>3;


	draw_sprite_(spr_1x1_WHT,0, _XL0,_YT0, -1, _CLMS<<3,_H, c_black);

	for(_i=0;_i<_ROWS;_i++)
	{
	    for(_j=0;_j<_CLMS;_j++)
	    {
	            _type  =  !_i || _i==_ROWS-1;
	            _type |= (!_j || _j==_CLMS-1) <<1;
	        if(!_type) continue;
        
	        _xl  = _XL0 + (_j<<3);
	        _yt  = _YT0 + (_i<<3);
	        // tsrc: $20: horizontal, $21: vertical, $22: corner
	        draw_background_part_ext_(PI_GUI_1,ts_Menu01, (_type-1)<<3,$2<<3, 8,8, _xl,_yt, 1,1);
	    }
	}



	_text = "--- "+"KEYS"+" ---";
	//    "--- KEYS ---"
	//    "P6  6-3 1-2"
	//    "P6  max-acquired used-unused"
	_xl = _XL1;
	_yt = _YT1;
	draw_text_(_xl,_yt, _text, -1,PI_GUI_1);

	_xl = _XL1;
	_yt = _YT2;
	for(_i=1;_i<=_DUNGEON_COUNT;_i++)
	{
	    _xl  = _XL1;
    
	    _text ="P"+string(_i);
	    draw_text_(_xl,_yt, _text, -1,PI_GUI_1);
	    _xl += string_length(_text)<<3;
    
    
    
	    _xl += $10;
	    _text =string(get_key_count_acquired(_i));
	    draw_text_(_xl,_yt, _text, -1,PI_GUI_1);
	    _xl += string_length(_text)<<3;
    
	    draw_sprite_(spr_text_slash_forward,0, _xl,_yt, PI_GUI_1);
	    _xl += $8;
    
	    _count = val(g.dm_spawn[?STR_Dungeon+hex_str(_i)+STR_Key+STR_Count]);
	    _text =string(_count);
	    draw_text_(_xl,_yt, _text, -1,PI_GUI_1);
	    _xl += string_length(_text)<<3;
    
    
    
	    _xl += $10;
	    draw_sprite_(spr_Key_icon,0, _xl+4,_yt+4, PI_GUI_1);
	    _xl += $8;
	    draw_text_(_xl,_yt, "*", -1,PI_GUI_1);
	    //draw_sprite_(spr_Times_symbol,0, _xl,_yt, PI_GUI_1);
	    _xl += $8;
	    _text =string(get_key_count(_i));
	    draw_text_(_xl,_yt, _text, -1,PI_GUI_1);
    
	    _yt+=_YDIST1;
	}







}
