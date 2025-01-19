/// @description  drawSprOutline(sprite x, sprite y, sprite, color, *alpha)
function drawSprOutline() {


	// var _x     = argument[0];
	// var _y     = argument[1];
	// var _spr   = argument[2];
	// var _color = argument[3];

	var                   _alpha = .4;
	if (argument_count>4) _alpha = argument[4];

	argument[0] -= sprite_get_xoffset(argument[2]);
	argument[1] -= sprite_get_yoffset(argument[2]);

	draw_rect_(argument[3],                    // color
	           argument[0], argument[1],       // x, y
	           sprite_get_width( argument[2]), // width
	           sprite_get_height(argument[2]), // height
	           _alpha,                         // alpha
	           true );                         // outline
	//







}
