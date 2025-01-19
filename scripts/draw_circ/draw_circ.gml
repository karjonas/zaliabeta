/// @description  draw_circ(color, x, y, radius)
function draw_circ(argument0, argument1, argument2, argument3) {
	// Light-weight version of draw_circ_() 
	// For drawing SOLID circle

	draw_set_colour(argument0);
	draw_circle(    argument1-1,    // x
	                argument2-1,    // y
	                argument3,      // radius
	                false       );  // outline






}
