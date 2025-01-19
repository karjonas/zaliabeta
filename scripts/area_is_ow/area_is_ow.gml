/// @description  area_is_ow(str area name)
function area_is_ow(argument0) {


	// Returns true if the str argument contains "AreaID_Ovrw"
	// This is for quick checking if AreaID, rm_name, exit_name are overworld
	var _STR = string_letters(Area_OvrwA);                  // "_OvrwA_" -> "OvrwA"
	    _STR = string_copy(_STR, 1, string_length(_STR)-1); // "OvrwA" -> "Ovrw"
	return     string_pos( _STR,argument0); // true if argument0 contains "Ovrw"







}
