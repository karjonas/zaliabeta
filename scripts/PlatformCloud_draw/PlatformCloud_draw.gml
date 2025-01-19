/// @description  PlatformCloud_draw()
function PlatformCloud_draw() {


	if(!can_draw_self) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!



	PlatformCloud_draw_1a();
	GO_draw_sprite(Cloud_SPR1, palidx);




	// ------------------------------------------------------------------------------
	if(!g.DevTools_state) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	//if(!DEV) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

	GO_draw_body_hb();







}
