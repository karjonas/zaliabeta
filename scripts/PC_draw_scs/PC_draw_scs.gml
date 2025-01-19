/// @description  PC_draw_scs()
function PC_draw_scs() {
	// SCS: Sword Collide Solid. Toggle with 'N'

	if(!g.can_draw_hb) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!
	if(!SCS_can_draw)  exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!
	    //SCS_can_draw = false;
	//
	drawPointCross(SCS_draw_x, SCS_draw_y, c_yellow, SCS_COLOR);




}
