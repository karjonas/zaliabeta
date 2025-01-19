/// @description  round16(int)
function round16(argument0) {
	// round an int to the nearest 16th
	return ((argument0>>4)<<4) + ((argument0&$8)<<1);





}
