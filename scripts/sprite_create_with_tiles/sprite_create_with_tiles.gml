/// @description  sprite_create_with_tiles(dl_ts idx data, tsrc data, rc off data, *flip data)
function sprite_create_with_tiles() {


	// tsrc data, rc off data, *flip data    are all strings that should be equal length.
	// Example:
	//     dl_ts idx data: "00" + "06" + "00" + "05"
	//     tsrc data:      "54" + "55" + "64" + "65"
	//     rcoff data:     "00" + "01" + "10" + "11"
	//     flip  data:     "00" + "00" + "01" + "01"



	var                        _arg=0;
	var _TSIDX_DATA = argument[_arg++]; // 
	var _TSRC_DATA  = argument[_arg++]; // 



	var _i, _count;
	var _return_spr = spr_0;



	var _Char_COUNT = string_length(_TSRC_DATA);


	if (_Char_COUNT<2) return _return_spr;



	// ----------------------------------------------------------------------------------
	// ----------------------------------------------------------------------------------
	var _x,_y, _xscale,_yscale, _w,_h;
	var _clm,_row, _clms,_rows, _rcoff;
	var _tileset, _tsrc, _tsx,_tsy;



	if (_Char_COUNT&$1) // truncates last char if odd
	{
	    _Char_COUNT--;
	    _TSRC_DATA = string_copy(_TSRC_DATA, 1, _Char_COUNT);
	}

	var _Tile_COUNT = _Char_COUNT>>1;




	// ----------------------------------------------------------------------------------
	         _count=string_length(_TSIDX_DATA);
	     if (_count<_Char_COUNT)  _TSIDX_DATA += string_repeat("F", max(0,   _Char_COUNT-_count));
	else if (_count>_Char_COUNT)  _TSIDX_DATA  = string_copy(_TSIDX_DATA, 1, _Char_COUNT);






	// ----------------------------------------------------------------------------------
	var _RCOFF_DATA = string_repeat("0",_Char_COUNT);
	if (argument_count>_arg)
	{
	    _RCOFF_DATA = argument[_arg++];
	             _count=string_length(_RCOFF_DATA);
	         if (_count<_Char_COUNT)  _RCOFF_DATA += string_repeat("F",   max(0, _Char_COUNT-_count));
	    else if (_count>_Char_COUNT)  _RCOFF_DATA  = string_copy(_RCOFF_DATA, 1, _Char_COUNT);
	}




	// ----------------------------------------------------------------------------------
	//  _FLIP_DATA is a string of "0"s and "1"s.  "0": scale = 1,  "1": scale = -1
	var _FLIP_DATA = string_repeat("0",_Char_COUNT);
	if (argument_count>_arg)
	{
	    _FLIP_DATA = argument[_arg++];
	             _count=string_length(_FLIP_DATA);
	         if (_count<_Char_COUNT)  _FLIP_DATA += string_repeat("0", _Char_COUNT-_count);
	    else if (_count>_Char_COUNT)  _FLIP_DATA  = string_copy(_FLIP_DATA, 1, _Char_COUNT);
	}






	// ----------------------------------------------------------------------------------
	var _CLMS = 1;
	var _ROWS = 1;
	for(_i=0; _i<_Tile_COUNT; _i++)
	{
	    _rcoff = str_hex(_RCOFF_DATA,_i);
	    _clm = (_rcoff>>0)&$F;
	    _row = (_rcoff>>4)&$F;
	    if (_clm+1>_CLMS) _CLMS = _clm+1;
	    if (_row+1>_ROWS) _ROWS = _row+1;
	}


	// sdm(", _Char_COUNT "+string(_Char_COUNT)+", _Tile_COUNT "+string(_Tile_COUNT)+", _CLMS "+string(_CLMS)+", _ROWS "+string(_ROWS)+", _TSRC_DATA "+string(_TSRC_DATA)+", _TSIDX_DATA "+string(_TSIDX_DATA)+", _RCOFF_DATA "+string(_RCOFF_DATA)+", _FLIP_DATA "+string(_FLIP_DATA));

	var _flip = 0;

	var _SPR_W  = _CLMS<<3;
	var _SPR_H  = _ROWS<<3;
	var _SURF_W = _SPR_W;
	var _SURF_H = _SPR_H;


	var _SURF = surface_create(_SURF_W,_SURF_H);
	surface_set_target(_SURF);
	draw_clear_alpha(c_white,0); // Because previous drawn pixels will still be there.



	for(_i=0; _i<_Tile_COUNT; _i++)
	{
	    _tileset = str_hex(_TSIDX_DATA,_i);
	    _tileset = g.dl_tileset[|_tileset];
    
	    _flip    = str_hex(_FLIP_DATA,_i);
    
	    _xscale  = (_flip>>0)&$F;
	    _xscale  = -sign_(_xscale);
    
	    _yscale  = (_flip>>4)&$F;
	    _yscale  = -sign_(_yscale);
    
    
	    _rcoff   = str_hex(_RCOFF_DATA,_i);
	    _clm     = (_rcoff>>0)&$F;
	    _row     = (_rcoff>>4)&$F;
	    _clm    += !_xscale;
	    _row    += !_yscale;
    
	    _x       =  _clm<<3;
	    _y       =  _row<<3;
    
	    _tsrc    = str_hex(_TSRC_DATA,_i);
	    _tsx     =((_tsrc>>0)&$F) <<3;
	    _tsy     =((_tsrc>>4)&$F) <<3;
	    draw_background_part_ext(_tileset, _tsx,_tsy, 8,8, _x,_y, _xscale,_yscale, c_white,1);
	    // sdm(", _FLIP_DATA "+_FLIP_DATA+", _flip $"+hex_str(_flip)+", _xscale "+string(_xscale)+", _yscale "+string(_yscale)+", _rcoff $"+hex_str(_rcoff)+", _x $"+hex_str(_x)+", _y $"+hex_str(_y)+", _tsrc $"+hex_str(_tsrc)+", _tsx $"+hex_str(_tsx)+", _tsy $"+hex_str(_tsy));
	}


	_return_spr = sprite_create_from_surface(_SURF,0,0, _SPR_W,_SPR_H, false,false, _SPR_W>>1,_SPR_H>>1);
	sprite_set_offset(_return_spr, sprite_get_width(_return_spr)>>1,sprite_get_height(_return_spr)>>1);


	draw_clear_alpha(c_white,0); // Because drawn pixels will still be there.

	surface_reset_target();
	surface_free(_SURF);




	return _return_spr;







}
