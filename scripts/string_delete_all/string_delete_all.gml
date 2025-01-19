/// @description  string_delete_all(string, substring)
function string_delete_all(argument0, argument1) {
	// Returns a new string without any of the substring


	var _return = argument0;
	var _len    = string_length(argument1);
	var _pos    = string_pos(argument1,_return);
	while (_pos)
	{
	    _return = string_delete(_return,_pos,_len);
	    _pos    = string_pos(argument1,_return);
	}

	return _return;


	/*
	// var _STR_ARG    = argument0;
	// var _DEL_CHAR   = argument1;
	var _str_new    = "";
	var _char       = "";


	for (var i = string_length(argument0); i >= 1; i--)
	{
	        _char  = string_char_at(argument0, i);
	    if (_char != argument1) _str_new = _char + _str_new;
	}


	return _str_new;
	*/




	/*
	/// strDelAll(string, char)
	// Returns a new string without any of the char passed

	var _STR_ARG    = argument0;
	var _DEL_CHAR   = argument1;
	var _str_new    = "";
	var _char       = "";


	for (var i = 1; i < string_length(_STR_ARG)+1; i++)
	{
	        _char  = string_char_at(_STR_ARG, i);
	    if (_char != _DEL_CHAR) _str_new += _char;
	}


	return _str_new;
	*/








}
