/// @description  tile_layer_get_tsrc(depth, x, y)
function tile_layer_get_tsrc(argument0, argument1, argument2) {


	// Get tile id.
	    argument0 = tile_layer_find(argument0, argument1,argument2); // tile id
	if (argument0+1) // if (tile id>=0) create tsrc(TileSet RowClm)
	{   argument0 = ((tile_get_top(argument0)>>3)<<4) | (tile_get_left(argument0)>>3);  }


	return argument0;







}
