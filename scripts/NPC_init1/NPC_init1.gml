/// @description  NPC_init1()
function NPC_init1() {


	init_vars_go_A();
	init_vars_NPC();

	DRAW_YOFF = 1; // +1 for 1 pixel in ground

	GO_depth_init(DEPTH_NPC);

	scr_step = GameObjectB_step;







}
