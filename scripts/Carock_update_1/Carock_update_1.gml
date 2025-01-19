/// @description  Carock_update_1()
function Carock_update_1() {

	// Find and set new x for Attack1


	// AEBD
	var _x = arena_xl + ww_ + irandom(arena_w-ww);

	var _DIST  = ww_+g.pc.ww_;
	    _DIST += $14; // pad
	if (_DIST >= abs(_x-g.pc.x)) // if too close to PC
	{
	    if (abs(g.pc.x-arena_x) > (arena_w>>1)-_DIST) // if PC too close to arena edge
	    {    _x = g.pc.x + (_DIST*sign_(g.pc.x<arena_x));  }
	    else _x = g.pc.x + (_DIST*sign_(irandom(1)));
	}

	set_xy(id, _x,y);







}
