/// @description  Boss_init_2b(dist from arena center)
function Boss_init_2b(argument0) {

	// Determine & set the side of the arena to start on.


	if (argument0 == -1)
	{   argument0  = (arena_w>>1) - ((arena_w>>1)-abs(x-arena_x));  }

	var _DIR = sign_(g.pc.x<arena_x); // Determines which side of arena to start on
	set_xy(id, arena_x+(argument0*_DIR), y);







}
