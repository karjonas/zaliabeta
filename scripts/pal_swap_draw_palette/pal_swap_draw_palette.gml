/// @description pal_swap_draw_palette(palette_sprite,pal_index,x,y);
/// @param palette_sprite
/// @param pal_index
/// @param x
/// @param y
function pal_swap_draw_palette() {
	//Draws only the specified palette from the given palette sprite.
	draw_sprite_part(argument[0],0,                      // sprite, subimg
	                 argument[1],0,                      // left, top
	                 1,sprite_get_height(argument[0]),   // width, height
	                 argument[2],argument[3]  );         // x, y
	//







}
