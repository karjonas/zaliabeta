/// @description  rectInView(x, y, w, h)
function rectInView(argument0, argument1, argument2, argument3) {
	return rectInRect(argument0,    // A_x
	                  argument1,    // A_y
	                  argument2,    // A_w
	                  argument3,    // A_h
	                  viewXL(),     // B_x
	                  viewYT(),     // B_y
	                  viewW(),      // B_w
	                  viewH()   );  // B_h
	// 



}
