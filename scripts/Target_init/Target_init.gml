/// @description  Target_init()
function Target_init() {


	init_vars_go_A();
	init_vars_gob_1a(); // GameObjectB


	DRAW_YOFF = 0;

	GO_depth_init(DEPTH_ENEMY);

	scr_step = GameObjectB_step;


	source_inst = 0;

	BVR_STRT = 1;
	BVR_VULN = 2;
	BVR_FAIL = 3;
	behavior = BVR_STRT;

	target_hit = false;







}
