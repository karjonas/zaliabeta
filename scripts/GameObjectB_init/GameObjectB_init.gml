/// @description  GameObjectB_init()
function GameObjectB_init() {


	init_vars_go_A();

	init_vars_coll_1b(); // shield hb
	init_vars_coll_1c(); // sword hb

	init_vars_gob_1a();  // Stuff used by Enemy, Boss, ... 

	// default GameObject draw YOff
	if (is_ancestor(object_index,GOB1)) DRAW_YOFF=1; // +1 for 1 pixel in ground

	if (is_ancestor(object_index,Enemy)) GO_depth_init(DEPTH_ENEMY);
	else                                 GO_depth_init(DEPTH_NPC);

	scr_step = GameObjectB_step;







}
