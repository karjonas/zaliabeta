function draw_Boomerang() {

	if (can_draw_self) GameObject_draw_1a(sprite, palidx); // draw self


	// draw catch hb
	if(!g.DevTools_state) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	//if(!DEV)                         exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!
	if(!g.can_draw_hb)               exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!
	if(!can_draw_catch_hb || !state) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!
	// if(!can_draw_catch_hb || !pID) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!


	can_draw_catch_hb = false;
	draw_rect_(c_lime, catchX,catchY, CATCH_W,CATCH_H, .5);




}
