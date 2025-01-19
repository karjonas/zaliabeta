/// @description  set_go_hspd_pushbback(go inst, new hspd pb)
function set_go_hspd_pushbback(argument0, argument1) {

	// Push back dir is which side of colliding-obj gob is on.
	// Push back dir is RIGHT($0C) when to the right of colliding-obj  OR  even with colliding-obj
	// Push back dir is  LEFT($F4) when to the left  of colliding-obj


	with(argument0)
	{
	    if (stun_timer) hspd_pushback = (argument1<<1) &$FF;
	    else            hspd_pushback =  argument1;
	}







}
