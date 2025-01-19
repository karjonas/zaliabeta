/// @description  tile_add_2a(depth, room x, room y, tileset, tileset rc, *hidden type)
function tile_add_2a() {

	// This is a lightweight ver of tile_change_1a() created in an 
	// attempt to add tiles faster for large rms on rm_enter_set_tiles().


	var _TILE_ID = tile_add_(argument[3],             // tileset asset
	                       ((argument[4]>>0)&$F) <<3, // tileset x
	                       ((argument[4]>>4)&$F) <<3, // tileset y
	                         8,8,                     // tile w, tile h
	                         argument[1],             // room x
	                         argument[2],             // room y
	                         argument[0] );           // depth
	//


	if (argument_count>5 
	&&  argument[5]!=-1   // rm_enter_set_tiles() could pass as -1
	&&  _TILE_ID!=-1      // tile_add() returns -1 if it fails to add the tile
	&&  tile_exists(_TILE_ID) )
	{
	    tile_hidden_update_1a(_TILE_ID,argument[5]);
	}


	return _TILE_ID;







}
