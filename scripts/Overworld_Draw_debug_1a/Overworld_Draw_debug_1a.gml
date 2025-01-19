/// @description  Overworld_Draw_debug_1a()
function Overworld_Draw_debug_1a() {
	var _OFF = T_SIZE - 1;

	if (dest_dist & _OFF == _OFF) // Limit check to First frame of a move
	{
	    var _str = " ";
	    var _tids = tile_get_ids_at_depth(Tile_DEPTH1);
	    _str  = "_tids length "+string(array_length_1d(_tids))+", ";
	    _str += "room total "+string(tile_get_count())+", ";
	    show_debug_message(_str);
	    _tids = 0;
	}




}
