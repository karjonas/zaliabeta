/// @description  Stalfoon_draw()
function Stalfoon_draw() {

	if(!can_draw_self) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


	pal_swap_set(p.palette_image, palidx, false);

	draw_sprite_(sprBG,0, drawX, drawY+BG_YOFF, -1, xScale);
	GO_draw_sprite(sprite);

	pal_swap_reset();







}
