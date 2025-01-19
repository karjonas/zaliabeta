/// @description  Rando_randomize_items_1a_1(item id)
function Rando_randomize_items_1a_1() {


	var _ITEM_ID = argument[0];


	if(!Rando_is_attainable(_ITEM_ID))
	{
	    Rando_set_loc_num_options(_ITEM_ID,1); // populates dl_qualified_locations, dl_loc_cats, dl_loc_num_options
    
	    if (ds_list_size(   dl_loc_num_options))
	    {
	        ds_list_shuffle(dl_loc_num_options);
	        var _LOC_NUM =  dl_loc_num_options[|0];
	        if (Rando_set_data_1a(_LOC_NUM, _ITEM_ID))
	        {
	            var _idx =    ds_list_find_index(dl_prog1,_ITEM_ID);
	            if (_idx!=-1) ds_list_delete(    dl_prog1,_idx);
	                _idx =    ds_list_find_index(dl_locations_remaining,_LOC_NUM);
	            if (_idx!=-1) ds_list_delete(    dl_locations_remaining,_idx);
            
	            // With another item placed, place as many spells and keys that you can to maximize the number of reachable locations
	            Rando_sweep_combo(2);
	            if (CONTAINER_METHOD==2) Rando_place_container_pieces(1,1);
	        }
	    }
	}







}
