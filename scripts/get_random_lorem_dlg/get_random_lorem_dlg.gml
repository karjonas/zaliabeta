/// @description  get_random_lorem_dlg(lines, *single word per line)
function get_random_lorem_dlg() {


	var                   _LINES  = clamp(argument[0], 1,g.DIALOGUE_WINDOW.MAX_LINES);
	var                   _SINGLE = false;
	if (argument_count>1) _SINGLE = argument[1];


	var _i;
	var _idx = 0;
	var _str = "";
	var _dlg = "";

	var             _dl_lorem = ds_list_create();
	ds_list_copy(   _dl_lorem, g.dl_LOREM);
	ds_list_shuffle(_dl_lorem);

	for(_i=0; _i<_LINES; _i++)
	{
	        _str  = "";
	    if (_SINGLE)
	    {
	        _str  = _dl_lorem[|_i];
	    }
	    else
	    {
	        while (true)
	        {
	            _str += _dl_lorem[|_idx++];
            
	            if (string_length(_str+_dl_lorem[|_idx])+1 > g.DIALOGUE_WINDOW.CHAR_PER_LINE_MAX)
	            {   break;  }
            
	            _str += " ";
	        }
	    }
    
	        _dlg += _str;
	    if (_i+1 < _LINES)
	    {   _dlg += g.CHAR_END_LINE1;  }
	}

	ds_list_destroy(_dl_lorem); _dl_lorem=undefined;


	return _dlg;







}
