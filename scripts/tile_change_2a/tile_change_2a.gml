/// @description  tile_change_2a(size 8 or 16, ts, tsrc, x, y, depth, 1:add -1:delete 0:both)
function tile_change_2a(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {


	if(!argument6) // argument6: if <= 0, will delete underlying tile
	{
	    var          _TILE_ID = tile_layer_find(argument5, argument3,argument4);
	    tile_delete_(_TILE_ID);
	    if (argument6<0)
	    {   return   _TILE_ID;  } // argument6: < 0 will skip add tile
	}



	// argument6: >= 0 will add a tile
	argument0 = clamp(argument0&$18, $08,$10); // TILE SIZE
	// (argument0>>3)+2; // Result is 3 or 4
	var _TS_X = ((argument2>>0)&$F) <<((argument0>>3)+2);
	var _TS_Y = ((argument2>>4)&$F) <<((argument0>>3)+2);


	return tile_add_(argument1,            // Tileset
	                 _TS_X,_TS_Y,          // Tileset x,y
	                 argument0,argument0,  // Tile size
	                 argument3,argument4,  // room x,y
	                 argument5);           // Depth
	//







}
