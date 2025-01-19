/// @description  strReplaceAt(str, position, delete count, insert str)
function strReplaceAt(argument0, argument1, argument2, argument3) {
	// str          = argument0;
	// position     = argument1;
	// delete count = argument2;
	// insert str   = argument3;

	return string_insert(argument3,   // insert string
	                     string_delete(argument0,argument1,argument2), 
	                     argument1);  // position
	//




}
