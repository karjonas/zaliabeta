/// @description  strR(str, pos)
function strR(argument0, argument1) {
	// R: Right. Returns a substr of the pos and all to the RIGHT of pos

	return string_copy( argument0,                                  // string
	                    argument1,                                  // position
	                    string_length(argument0)-(argument1-1) );   // count


	// return string_copy(argument0,argument1,string_length(argument0)-(argument1-1));






}
