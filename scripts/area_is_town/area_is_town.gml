/// @description  area_is_town(area)
function area_is_town(argument0) {


	var _STR = string_letters(Area_TownA);                // "_TownA_" --> "TownA"
	    _STR = string_copy(_STR,1,string_length(_STR)-1); //  "TownA"  --> "Town"
	return string_pos(_STR,argument0) != 0;







}
