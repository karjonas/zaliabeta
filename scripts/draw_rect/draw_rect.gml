/// @description  draw_rect(color, x, y, w, h)
function draw_rect(argument0, argument1, argument2, argument3, argument4) {

	// Light-weight version of draw_rect_ 
	// For drawing SOLID rectangle


	draw_set_colour(argument0);
	draw_rectangle( argument1,                  // x1
	                argument2,                  // y1
	                argument1 + argument3-1,    // x2
	                argument2 + argument4-1,    // y2
	                false       );              // outline
	//







}
