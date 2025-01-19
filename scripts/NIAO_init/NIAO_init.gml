/// @description  NIAO_init()
function NIAO_init() {

	// NIAO: Non-Interactive Animated Object


	init_vars_draw_1a();
	init_vars_phys_1a();

	init_vars_go_1a(); // ver, state, xl,xc,xr, yt,yc,yb, ww,hh, 
	init_vars_go_4a(); // scr_vars, scr_ini1/2, scr_step, scr_updt, scr_udp, scr_draw, scr_rmen, scr_dstr, scr_iend

	dk_spawn = undefined;

	GO_depth_init(DEPTH_NIAO); // sets depth & depth_def

	// default GameObject draw YOff
	DRAW_YOFF = 0;




}
