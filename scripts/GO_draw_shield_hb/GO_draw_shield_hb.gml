/// @description  GO_draw_shield_hb()
function GO_draw_shield_hb() {

	if(!g.DevTools_state)       exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	//if(!DEV)                        exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	if(!g.can_draw_hb)              exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!
	if(!variable_instance_exists(id, "ShieldHB_can_draw")) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!
	if(!ShieldHB_can_draw)  exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!
	if(!ShieldHB_w)         exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!
	if(!ShieldHB_collidable)exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!

	//ShieldHB_can_draw = false;
	draw_rect_(ShieldHB_color, ShieldHB_x,ShieldHB_y, ShieldHB_w,ShieldHB_h, 1, true);




}
