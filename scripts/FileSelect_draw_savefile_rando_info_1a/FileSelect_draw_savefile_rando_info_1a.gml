/// @description  FileSelect_draw_savefile_rando_info_1a(x, y, xr, text, *right pad clms)
function FileSelect_draw_savefile_rando_info_1a() {


	var                    _i=0;
	var _X      = argument[_i++];
	var _Y      = argument[_i++];
	var _XR     = argument[_i++];
	var _text   = argument[_i++];

	var                    _PAD = $2;
	if (argument_count>_i) _PAD = argument[_i++];

	var _DIST1 = sprite_get_width(FONT_SPRITE1);

	var _LEN = string_length(_text);
	if ((_X div _DIST1)+_LEN > (_XR div _DIST1))
	{
	    var _COUNT  = (_XR div _DIST1) - (_X div _DIST1);
	        _COUNT -= _PAD;
	    _text  = string_copy(_text,1, _COUNT);
	    _text += "..";
	}


	return _text;




	/*
	/// FileSelect_draw_savefile_rando_info_1a(x, y, xr, text, *right pad clms)


	var                    _i=0;
	var _X      = argument[_i++];
	var _Y      = argument[_i++];
	var _XR     = argument[_i++];
	var _text   = argument[_i++];

	var                    _PAD = $2;
	if (argument_count>_i) _PAD = argument[_i++];

	var _LEN = string_length(_text);
	if ((_X>>3)+_LEN > _XR>>3)
	{
	    var _COUNT  = (_XR>>3)-(_X>>3);
	        _COUNT -= _PAD;
	    _text  = string_copy(_text,1, _COUNT);
	    _text += "..";
	}


	return _text;




	*/



}
