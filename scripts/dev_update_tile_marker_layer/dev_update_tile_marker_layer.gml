/// @description  dev_update_tile_marker_layer(x, y, solid value, special value)
function dev_update_tile_marker_layer(argument0, argument1, argument2, argument3) {


	if(!g.dev_use_tile_markers)
	{
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}

	if (argument2==-1 
	&&  argument3==-1 )
	{
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}



	var _i, _val, _depth;
	for(_i=0; _i<2; _i++)
	{
	    if (_i) _val = argument3; // unique
	    else    _val = argument2; // solid
    
	    if (_val==-1) continue; // >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    
    
	    if (_i) _depth = DEPTH_UNIQUE;
	    else    _depth = DEPTH_SOLIDS;
    
	    tile_delete_(tile_layer_find(_depth, argument0,argument1));
    
    
    
    
	    if (_val)
	    {
	        tile_add_(g.ts_TILE_MARKER,   // tileset
	                  ((_val>>0)&$F) <<3, // ts x
	                  ((_val>>4)&$F) <<3, // ts y
	                  8, 8,               // tile w, tile h
	                  argument0,          // rm x
	                  argument1,          // rm y
	                  _depth);            // depth
	    }
	}







}
