/// @description  wINwAll(ax, aw, bx, bw)
function wINwAll(argument0, argument1, argument2, argument3) {

	// width IN width All
	// Returns true if all of one width collides with another width


	return            argument0 >= argument2            // ax1 >= bx1
	    &&  argument0+argument1 <= argument2+argument3; // ax2 <= bx2
	//







}
