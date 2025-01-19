/// @description  Eyenocc_init1()
function Eyenocc_init1() {


	init_vars_draw_1a();

	init_vars_phys_1a();

	init_vars_coll_1a(); // body hb
	init_vars_coll_2a(); // cs: Colliding Sides

	init_vars_go_1a(); // ver, state, xl,xc,xr, yt,yc,yb, ww,hh, 
	init_vars_go_2a(); // counter, ocs, cam_x, facingDir, behavior, spawn_xy, stun_timer, uIdx, spawn_idx, pc_sword_collided_solid_body
	init_vars_go_3a(); // abilities, hp,xp, respawn_type, atk_lvl, etc..
	init_vars_go_4a(); // scr_vars, scr_init1/2, scr_step, scr_update, scr_udp, scr_draw, scr_roomend, scr_dstr, scr_instend


	GO_depth_init(DEPTH_NPC);
	scr_step = GameObjectB_step2;
	//scr_step = GameObjectB_step;


	sequence_num = $00;

	SPEED1 = $20;


	Jiggle_DURATION1 = $20;
	Jiggle_timer = 0;







}
