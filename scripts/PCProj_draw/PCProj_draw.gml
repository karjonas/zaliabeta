/// @description  PCProj_draw()
function PCProj_draw() {


	if(!state) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


	if (can_draw_self) GameObject_draw_1a(sprite, palidx);

	// draw body
	GO_draw_body_hb(); // Toggle with 'N'

	// draw sprite outline
	GO_draw_sprite_outline(); // Sequence with 'K'







}
