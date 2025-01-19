/// @description  PCProj_init()
function PCProj_init() {


	var _i, _a;

	init_vars_draw_1a();

	init_vars_phys_1a();

	init_vars_coll_1a();

	init_vars_go_1a(); // ver, state, xl,xc,xr, yt,yc,yb, ww,hh, 
	init_vars_go_2a(); // stunTimer, uIdx, spawnData_idx, counter, ocs, camX, facingDir, behavior, spawn_xy, pc_sword_collided_solid_body
	init_vars_go_4a(); // scr_vars, scr_init1/2, scr_step, scr_updt, scr_udp, scr_draw, scr_rmen, scr_dstr, scr_iend

	PCProj_init_vars();

	// default GameObject draw YOff
	DRAW_YOFF = 0;

	GO_depth_init(DEPTH_PC_SWORD_BEAM);

	dl_sprites[|1] = spr_Fireball1;
	dl_sprites[|0] = spr_Link_sword_beam;
	GO_sprite_init(dl_sprites[|0]);
	GO_init_palidx(PI_MOB_ORG);



	BodyHB_xoff    = 2 + g.HB_ADJ_X;
	BodyHB_yoff    = 4 + g.HB_ADJ_Y;
	BodyHB_w       = 4 + g.HB_ADJ_W;
	BodyHB_h       = 6 + g.HB_ADJ_H;







}
