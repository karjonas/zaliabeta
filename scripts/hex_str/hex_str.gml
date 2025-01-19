/// @description  hex_str(number)
function hex_str(argument0) {

	// converts a number to a string representation of its hex value


	if (is_string(argument0)) return argument0;

	argument0&=$FFFFFFFF; // limit to 32 bits

	if (argument0==0) return "00";


	// ---------------------------------------------------------
	var _str = "";
	while (argument0!=0)   // HEX_CHARS = "0123456789ABCDEF";
	{   //_char =     strChar(HEX_CHARS,(argument0&$F)+1); // !!! causing slow performance
	    _str = string_char_at(HEX_CHARS,(argument0&$F)+1) + _str;
	    argument0 = argument0>>4;
	}

	if (string_length(_str)&$1) _str = "0"+_str;


	return _str;







}
