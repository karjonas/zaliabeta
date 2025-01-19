/// @description  Torch_1_udd()
function Torch_1_udd() {


	// xScale for flame
	if (g.counter1&$4) xScale = -1;
	else               xScale =  1;

	can_draw_self = state && rectInView(xl,yt-$10, 8,$20);

	update_draw_xy();







}
