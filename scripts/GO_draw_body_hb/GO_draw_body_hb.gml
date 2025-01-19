/// @description  GO_draw_body_hb()
function GO_draw_body_hb() {
	if(!g.DevTools_state) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	//if(!DEV)            exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	if(!g.can_draw_hb)  exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!
	if(!BodyHB_can_draw)  exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!

	//BodyHB_can_draw = false;
	//
	if (BodyHB_r) draw_circ_(BodyHB_color, BodyHB_x,BodyHB_y, BodyHB_r,          1, true);
	else          draw_rect_(BodyHB_color, BodyHB_x,BodyHB_y, BodyHB_w,BodyHB_h, 1, true);






}
