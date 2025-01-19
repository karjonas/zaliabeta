/// @description  spr_y_at_y(sprite, y pos, *align 0_cen 1_btm -1_top)
function spr_y_at_y() {

	// Returns the y coord you would need to draw a sprite 
	// aligned to a preferred y pos. Default alignment is centered.

	var                   _ALIGN = 0;
	if (argument_count>2) _ALIGN = sign(argument[2]);

	var _y  =   argument[1];
	    _y -= (sprite_get_height(argument[0])>>1) - sprite_get_yoffset(argument[0]);
	    _y -= (sprite_get_height(argument[0])>>1) * _ALIGN;
	//
	return _y;




}
