/// @description  Stallakk_draw()
function Stallakk_draw() {


	if(!can_draw_self) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


	pal_swap_set(p.palette_image, palidx, false);
	GO_draw_sprite(Btm_spr);
	GO_draw_sprite(Top_spr);
	pal_swap_reset();







}
