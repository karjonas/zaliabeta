/// @description  drawPointCross(x, y, *cross color, *point color)
function drawPointCross() {

	// Draws a cross with center point, centered on the coordinate passed


	var _X = argument[0];
	var _Y = argument[1];

	var                   _CROSS_COL = c_lime;
	if (argument_count>2) _CROSS_COL = argument[2];

	var                   _POINT_COL = c_purple;
	if (argument_count>3) _POINT_COL = argument[3];

	draw_set_colour(_CROSS_COL); // cross color
	draw_line(_X,   _Y-3, _X,   _Y+2);  // vertical
	draw_line(_X-3, _Y,   _X+2, _Y);    // horizontal

	draw_set_colour(_POINT_COL); // point color
	draw_point(_X, _Y);







}
