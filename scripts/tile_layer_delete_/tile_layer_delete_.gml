/// @description  tile_layer_delete_(depth)
function tile_layer_delete_(argument0) {


	if (g.tile_pal_swap_ver==1)
	{
	    if (ds_list_find_index(g.dl_TILE_DEPTHS,    argument0)!=-1 
	    &&  ds_list_find_index(g.dl_pal_swap_depths,argument0)!=-1 )
	    {
	        ds_list_delete(g.dl_pal_swap_depths, ds_list_find_index(g.dl_pal_swap_depths,argument0));
	        ds_list_sort(  g.dl_pal_swap_depths, 0); // 0: descending
	    }
	}


	tile_layer_delete(argument0);







}
