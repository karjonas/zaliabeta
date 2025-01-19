/// @description  tile_add_(background, left, top, width, height, x, y, depth)
function tile_add_(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7) {


	// argument7: depth
	if (g.tile_pal_swap_ver==1)
	{
	    if (ds_list_find_index(g.dl_TILE_DEPTHS,    argument7)!=-1 
	    &&  ds_list_find_index(g.dl_pal_swap_depths,argument7)==-1 )
	    {
	        ds_list_add(       g.dl_pal_swap_depths,argument7);
	        ds_list_sort(      g.dl_pal_swap_depths,false); // false: descending
	    }
	}

	if (g.BackgroundTileAnimations_VER)
	{
	    var _TS_NAME = background_get_name(argument0);
	    if (val(g.dm_TILE_ANIM[?_TS_NAME+STR_Tileset])==argument0 
	    &&  ds_list_find_index(g.dl_scene_anims,_TS_NAME)==-1 )
	    {   ds_list_add(       g.dl_scene_anims,_TS_NAME);  }
	}


	// returns tile id
	return tile_add(argument0,            // background/tileset
	                argument1,argument2,  // left, top
	                argument3,argument4,  // width, height
	                argument5,argument6,  // x, y
	                argument7 );          // depth
	//







}
