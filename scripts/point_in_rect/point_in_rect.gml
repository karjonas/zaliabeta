/// @description  point_in_rect(px, py, rx, ry, rw, rh)
function point_in_rect(argument0, argument1, argument2, argument3, argument4, argument5) {

	// *** Note: Since a point has no size, it sitting 
	// on the the edge of a hit box is technically 
	// both colliding and not colliding.
	// This considers that scenario as colliding.


	return argument0 >= argument2            // px >= rxl
	    && argument0 <= argument2+argument4  // px <= rxr
	    && argument1 >= argument3            // py >= ryt
	    && argument1 <= argument3+argument5; // py <= ryb
	//







}
