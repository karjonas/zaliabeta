/// @description  GameObjectB_debug_draw_1a()
function GameObjectB_debug_draw_1a() {


	if(!g.DevTools_state) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!



	// body hb. Toggle with 'N'
	GO_draw_body_hb(); // body hb

	// shield hb. Toggle with 'N'
	GO_draw_shield_hb();

	// sword hb. Toggle with 'N'
	GO_draw_sword_hb();

	// cs points. Toggle with 'H'
	GO_draw_cs_points();

	// draw ocs lines. Toggle with 'C'
	GO_draw_ocs();







}
