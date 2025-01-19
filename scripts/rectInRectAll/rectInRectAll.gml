/// @description  rectInRectAll(ax, ay, aw, ah, bx, by, bw, bh)
function rectInRectAll(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7) {

	// All of rect-'a' must be colliding with rect-'b'


	return           argument0 >= argument4            // a_LFT >= b_LFT
	    &&           argument1 >= argument5            // a_TOP >= b_TOP
	    && argument0+argument2 <= argument4+argument6  // a_RGT <= b_RGT
	    && argument1+argument3 <= argument5+argument7; // a_BTM <= b_BTM
	//







}
