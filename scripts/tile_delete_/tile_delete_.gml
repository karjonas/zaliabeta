/// @description  tile_delete_(tile id)
function tile_delete_(argument0) {


	if(!tile_exists(argument0)) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!



	if (g.tile_pal_swap_ver==1)
	{
	    var _DEPTH = tile_get_depth(argument0);
	    if (ds_list_find_index(g.dl_TILE_DEPTHS,    _DEPTH)!=-1 
	    &&  ds_list_find_index(g.dl_pal_swap_depths,_DEPTH)!=-1 )
	    {
	        var _ar_TILE_IDS = tile_get_ids_at_depth(_DEPTH);
	        if (array_length_1d(_ar_TILE_IDS)==1)
	        {
	            ds_list_delete(g.dl_pal_swap_depths, ds_list_find_index(g.dl_pal_swap_depths,_DEPTH));
	            ds_list_sort(  g.dl_pal_swap_depths, 0); // 0: descending
	        }
        
	        _ar_TILE_IDS=0;
	    }
	}


	tile_delete(argument0);







}
