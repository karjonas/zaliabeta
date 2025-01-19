/// @description  draw_rect_(color, x, y, w, h, *alpha, *outline);
/// @param color
/// @param  x
/// @param  y
/// @param  w
/// @param  h
/// @param  *alpha
/// @param  *outline
function draw_rect_() {


	var                   _ALPHA   = 1;
	if (argument_count>5) _ALPHA   = argument[5];

	var                   _OUTLINE = false;
	if (argument_count>6) _OUTLINE = argument[6];


	draw_set_alpha( _ALPHA);
	draw_set_colour(argument[0]);

	draw_rectangle( argument[1],                // x1
	                argument[2],                // y1
	                argument[1]+argument[3]-1,  // x2. (-1 to avoid drawing an extra pixel)
	                argument[2]+argument[4]-1,  // y2. (-1 to avoid drawing an extra pixel)
	                _OUTLINE);                  // outline
	//
	draw_set_alpha(1);







}
