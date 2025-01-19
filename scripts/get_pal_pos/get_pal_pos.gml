/// @description  get_pal_pos(pal idx)
function get_pal_pos(argument0) {


	argument0  = clamp(argument0, 1,global.palette_image_W-1);
	argument0 *= COL_PER_PAL;
	argument0  = (argument0<<1)+p.PAL_POS_BASE;

	return argument0;







}
