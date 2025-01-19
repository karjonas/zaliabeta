/// @description  wINw(ax, aw, bx, bw)
function wINw(argument0, argument1, argument2, argument3) {
	// width IN width
	// Returns true if one width collides with another width

	return argument0           < argument2+argument3  // ax1 < bx2
	   &&  argument0+argument1 > argument2;           // ax2 > bx1
	//







	/*
	/// wINw(ax, aw, bx, bw)
	// width IN width
	// Returns true if one width collides with another width

	if (argument0           < argument2+argument3  // ax1 < bx2
	&&  argument0+argument1 > argument2          ) // ax2 > bx1
	{   return true;  }
	    return false;
	//
	*/








	/*
	/// wINw(ax, aw, bx, bw)
	// width IN width
	// Returns true if one width collides with another width

	if (argument0           >= argument2+argument3) return false; // ax1 >= bx2
	if (argument0+argument1 <= argument2          ) return false; // ax2 <= bx1
	                                                return true;
	*/



	/*
	/// wINw(ax, aw, bx, bw)
	// width IN width
	// Returns true if one width collides with another width

	if      (argument0           >= argument2+argument3) return false; // ax1 >= bx2
	else if (argument0+argument1 <= argument2          ) return false; // ax2 <= bx1
	                                                     return true;

	*/





}
