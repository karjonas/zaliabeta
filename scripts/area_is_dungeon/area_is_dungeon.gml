/// @description  area_is_dungeon(area)
function area_is_dungeon(argument0) {


	var _STR = string_letters(Area_PalcA);
	    _STR = string_copy(_STR,1,string_length(_STR)-1); // truncate the "A" at the end
	return string_pos(_STR,argument0);







}
