/// @description  hINh(ay, ah, by, bh)
function hINh(argument0, argument1, argument2, argument3) {

	// height IN height
	// Returns true if one height collides with another height


	return argument0           <  argument2+argument3   // ay1 <  by2
	    && argument0+argument1 >= argument2;            // ay2 >= by1
	//







}
