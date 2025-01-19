/// @description  Fenser_init2()
function Fenser_init2() {


	GO_init_palidx(PI_MOB_BLU);

	var _DIST = $60;

	    GROUND_Y = get_ground_y(x,spawn_y, 1, spawn_y);
	if (GROUND_Y) Rise_YT = GROUND_Y                 - _DIST;
	else          Rise_YT = ((viewYB()>>3)<<3) - $18 - _DIST;
	Rise_yt =     Rise_YT;







}
