/// @description  spr_x_at_x(sprite, x pos, *align 0_cen 1_rgt -1_lft)
function spr_x_at_x() {

	// Returns the x coord you would need to draw a sprite 
	// aligned to a preferred x pos. Default alignment is centered.


	var                   _ALIGN = 0;
	if (argument_count>2) _ALIGN = sign(argument[2]);

	var _x  = argument[1];
	    _x -= (sprite_get_width(argument[0])>>1) - sprite_get_xoffset(argument[0]);
	    _x -= (sprite_get_width(argument[0])>>1) * _ALIGN;
	//
	return _x;







}
