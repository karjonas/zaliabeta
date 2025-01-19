/// @description  GO_draw_trig_hb_1()
function GO_draw_trig_hb_1() {


	if(!g.DevTools_state) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	//if(!DEV)            exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	if(!g.can_draw_hb)  exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!
	if(!trig_canDraw)   exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!

	    trig_canDraw = false;
	//
	if (move_dirs&$3) draw_rect_(trig_color, trig_hori_x,trig_hori_y, trig_hori_w,trig_hori_h, 1,true);
	if (move_dirs&$C) draw_rect_(trig_color, trig_vert_x,trig_vert_y, trig_vert_w,trig_vert_h, 1,true);






}
