/// @description  draw_background_part_ext_(palidx, bg, bg_x,bg_y, w,h, x,y, xscale,yscale)
function draw_background_part_ext_(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9) {


	pal_swap_set(p.palette_image,  argument0);

	draw_background_part_ext(argument1,             // background
	                         argument2, argument3,  // bg x, bg y
	                         argument4, argument5,  // w, h
	                         argument6, argument7,  // x, y
	                         argument8, argument9,  // xscale, yscale
	                         -1       , 1);         // color, alpha
	pal_swap_reset();







}
