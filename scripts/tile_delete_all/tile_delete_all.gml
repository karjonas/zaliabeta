/// @description  tile_delete_all()
function tile_delete_all() {

    // delete all tiles in the room

    var _ar_TILE_IDS = tile_get_ids();

    // Does the same as tile_delete_ (note trailing _) but removes
    // each depth at a time
    if (g.tile_pal_swap_ver==1)
    {
        // Use a map to remove duplicates then go through the keys
        var __depthmap = ds_map_create();

        for(var _i=array_length_1d(_ar_TILE_IDS)-1; _i>=0; _i--)
        {
            var __tile = _ar_TILE_IDS[_i];
            if(!tile_exists(__tile)) {
                continue;
            }

            var _DEPTH = tile_get_depth(__tile);
            ds_map_add(__depthmap, _DEPTH, true);
        }

        __deptharray = ds_map_keys_to_array(__depthmap); // only unique depths
        ds_map_destroy(__depthmap);

        for (var __i = 0; __i < array_length(__deptharray); ++__i)
        {
            var __depth = __deptharray[__i];
            var _DEPTH = __depth;
            if (ds_list_find_index(g.dl_TILE_DEPTHS,    _DEPTH)!=-1
            &&  ds_list_find_index(g.dl_pal_swap_depths,_DEPTH)!=-1 )
            {
                var _ar_TILE_IDS_DEPTH = tile_get_ids_at_depth(_DEPTH);
                if (array_length_1d(_ar_TILE_IDS_DEPTH)==1)
                {
                    ds_list_delete(g.dl_pal_swap_depths, ds_list_find_index(g.dl_pal_swap_depths,_DEPTH));
                    ds_list_sort(  g.dl_pal_swap_depths, 0); // 0: descending
                }

                _ar_TILE_IDS_DEPTH=0;
            }
        }
    }

    for(var _i=array_length_1d(_ar_TILE_IDS)-1; _i>=0; _i--)
    {
        var __tile = _ar_TILE_IDS[_i];
        if(!tile_exists(__tile)) {
            continue;
        }
        tile_delete(__tile);
    }

    _ar_TILE_IDS = 0;
}
