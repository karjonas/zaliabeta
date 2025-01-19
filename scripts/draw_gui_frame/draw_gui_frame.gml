/// @description  draw_gui_frame(tsrc data array, draw row count, base x, base y)
function draw_gui_frame() {


	/*
	var _ar_TSRC_DATA   =     argument0;
	var _CNT_DRAW_ROWS  = min(argument1, array_length_1d(_ar_TSRC_DATA) - 1);
	var _BASE_X         =     argument2;
	var _BASE_Y         =     argument3;

	var i, j, _x, _y;
	var _tsrc, _ts_x, _ts_y;
	var _data, _char;

	for (i = _CNT_DRAW_ROWS; i >= 0; i--) // 8x8. Each row of this section
	{
	    _data = ar_TSRC_DATA[i];
    
	    for (j = string_length(_data)-1; j >= 0; j--) // 8x8. each column of the row
	    {
	        _char = string_char_at(_data, j + 1);
	        if (string_digits(_char) != "")
	        {
	            _tsrc = g.ar_tsrc_menu_frame[real(_char)];
	            _ts_x = (_tsrc & $F) <<3;
	            _ts_y = (_tsrc >> 4) <<3;
	            _x    = _BASE_X + (j <<3);
	            _y    = _BASE_Y + (i <<3);
	            draw_background_part(g.TS_MENU, _ts_x,_ts_y, 8,8, _x,_y);
	        }
	    }
	}
	*/





	/*
	/// draw_gui_frame(data string, base x, base y)

	var i, _char, _tsrc;

	for (i = string_length(argument0)-1; i >= 0; i--) // 8x8. each column of the row
	{
	    _char = string_char_at(argument0, i + 1);
	    if (string_digits(_char) != "")
	    {
	        _tsrc = g.tsrc_menu[real(_char)];
	        draw_background_part(   g.TS_MENU,                  // tileset
	                                (_tsrc & $F)   << 3,        // tileset x
	                                (_tsrc >> 4)   << 3,        // tileset y
	                                8,8,                        // width, height
	                                argument1 + (k << 3),       // x
	                                argument2 + (j << 3)  );    // y
	    }
	}
	*/




}
