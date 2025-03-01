/// @description Shifts all tiles at the indicated depth layer by a given amount.
/// @param depth The depth of tiles which is to be shifted.
/// @param x The amount to shift over the x-axis.
/// @param y The amount to shift over the y-axis.
/// @returns 
function tile_layer_shift(argument0, argument1, argument2) {

	var __depth = argument0;
	var __x = argument1;
	var __y = argument2;

	// Scan through all layers looking for tiles
	var __layers = layer_get_all();
	var __numlayers = array_length_1d(__layers);

	var __i;
	for(__i = 0; __i < __numlayers; __i++)
	{
		if (layer_get_depth(__layers[__i]) != __depth)
			continue;
	
		var __els = layer_get_all_elements(__layers[__i]);
		var __numels = array_length_1d(__els);
	
		var __j;
		for(__j = 0; __j < __numels; __j++)
		{
			var __elem = __els[__j];
			var __eltype = layer_get_element_type(__elem);
			if (__eltype == layerelementtype_tile)
			{
				layer_tile_x(__elem, layer_tile_get_x(__elem) + __x);
				layer_tile_y(__elem, layer_tile_get_y(__elem) + __y);			
			}
		}	
	}


}
