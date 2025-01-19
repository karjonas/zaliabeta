/// @description  PalettePicker_draw_cursor(color, x, y, w, h)
function PalettePicker_draw_cursor(argument0, argument1, argument2, argument3, argument4) {


	draw_rect_(c_black,   argument1-1,argument2-1, argument3+2,argument4+2, 1,true);
	draw_rect_(argument0, argument1,  argument2,   argument3,  argument4,   1,true);







}
