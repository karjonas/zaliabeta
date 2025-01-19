/// @description  GameObject_draw(can draw debug)
function GameObject_draw(argument0) {


	     if (scr_draw)      script_execute(scr_draw);
	else if (can_draw_self) GameObject_draw_1a(sprite, palidx); // draw self

	//  -----------------------------------------------------------
	//  Debug draw
	if (argument0) GO_debug_draw_1a(); // xlyt,xy point, sprite outline







}
