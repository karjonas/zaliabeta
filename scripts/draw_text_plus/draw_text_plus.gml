/// @description  draw_text_plus(xl, xr, yt, text, font, palette idx)
function draw_text_plus() {

	// draw_text_() but with word wrap


	var                         _i=0;
	var _XL          = argument[_i++];
	var _XR          = argument[_i++];
	var _YT          = argument[_i++];
	var _text        = argument[_i++];
	var _FONT_SPRITE = argument[_i++];
	var _PALETTE_IDX = argument[_i++];

	var _word, _pos_space, _pos_end_line;
	var _char_w = sprite_get_width( _FONT_SPRITE);
	var _char_h = sprite_get_height(_FONT_SPRITE);
	var _x,_y, _dist1;
	var _DIST1  = _char_h; // Leading (vertical dist between yt of each line)
	    _DIST1 += 2;       // Line padding
	//


	_x = _XL;
	_y = _YT;

	while (true)
	{
	    var _LEN = string_length(_text);
	    if(!_LEN) break;//while (true)
    
	    _pos_space    = string_pos(" ",_text);
	    _pos_end_line = string_pos(g.CHAR_END_LINE3,_text);
	    var                                   _POS = 0;
	         if (_pos_space && _pos_end_line) _POS = min(_pos_space,_pos_end_line);
	    else if (_pos_space || _pos_end_line) _POS = max(_pos_space,_pos_end_line);
    
    
	    if (_POS!=1)
	    {
	        if(!_POS) _word = _text;
	        else      _word = string_copy(_text, 1,_POS-1); // This truncates the 'space'/'end line' at _POS
        
	        _dist1 = string_length(_word)*_char_w;
	        if (_x+_dist1 >= _XR)
	        {
	            _x = _XL;
	            _y+=_DIST1;
	        }
        
	        draw_text_(_x,_y, _word, _FONT_SPRITE,_PALETTE_IDX);
	        _x += _dist1;
	    }
    
	    // Add the 'space' after the word. An 'end line' character turns into a 'space'.
	    _x += _char_w;
    
	    if (_POS 
	    &&  _POS<_LEN )
	    {
	        // The remaining text beyond _POS
	        _text = string_copy(_text, _POS+1,_LEN-_POS);
        
	        if (_POS==_pos_end_line 
	        ||  _x>=_XR)
	        {
	            _x = _XL;
	            _y+=_DIST1;
	        }
	    }
	    else
	    {
	        break;//while (true)
	    }
	}//while (true)


	_y += _DIST1;
	return _y;
	//_y += _DIST1<<1;







}
