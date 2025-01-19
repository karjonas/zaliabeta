/// @description  window_set_position_(left x, top y)
function window_set_position_() {


	window_set_position(clamp(argument[0], g.WINDOW_PAD, display_get_width() -window_get_width()), 
	                    clamp(argument[1], g.WINDOW_PAD, display_get_height()-window_get_height()) );
	//

	g.window_center_x = window_get_x()+(window_get_width() >>1);
	g.window_center_y = window_get_y()+(window_get_height()>>1);







}
