/// @description  round8(int)
function round8(argument0) {
	// round an int to the nearest 8th

	return ((argument0>>3)<<3)  +  ((argument0&$4)<<1);







}
