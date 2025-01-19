/// @description  Exit_Create()
function Exit_Create() {


	init_vars_draw_1a();

	init_vars_coll_1a(); // body hb

	init_vars_go_1a(); // ver, state, xl,xc,xr, yt,yc,yb, ww,hh, 
	init_vars_go_4a(); // scr_vars, scr_ini1/2, scr_step, scr_updt, scr_udp, scr_draw, scr_rmen, scr_dstr, scr_iend

	GO_depth_init(DEPTH_NIAO); // sets depth & depth_def
	GO_sprite_init(spr_Placement_01x01);
	GO_init_palidx(PI_BGR_1);


	doorway_spr      = 0;
	doorway_spr_xoff = 0;
	doorway_spr_yoff = 0;


	side         = 0; // 0: inside room, 1: right, 2: left, 4: down, 8: up
	open         = true;
	exitName     = undefined;
	exitNum      = 0;
	exit_type    = 0;
	page_x       = 0;
	page_y       = 0;

	goToExitName = 0;
	goToRoom     = 0;
	goToExitNum  = 0;

	is_draw_open_exit = false;







}
