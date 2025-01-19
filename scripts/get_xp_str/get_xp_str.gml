/// @description  get_xp_str(xp)
function get_xp_str(argument0) {


	var _str = string(argument0);


	repeat(4-string_length(_str)) _str = "0"+_str;


	return _str;







}
