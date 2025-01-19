/// @description  Boss_init_2a()
function Boss_init_2a() {


	GROUND_Y  = ((viewYC()>>8)+1)<<8;
	GROUND_Y -= $3<<3;
	GROUND_Y  = get_ground_y(arena_x,GROUND_Y, -1,GROUND_Y);







}
