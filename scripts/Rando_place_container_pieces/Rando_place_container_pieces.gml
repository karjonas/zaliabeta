/// @description  Rando_place_container_pieces(heart piece count, magic piece count)
function Rando_place_container_pieces(argument0, argument1) {


	var _HEART_COUNT = argument0;
	var _MAGIC_COUNT = argument1;

	var _i,_j,_k, _idx, _count;
	var _loc_num, _item_id, _item_num, _loc_id, _rm_name, _type;
	var _dl_remaining_items=ds_list_create();

	for(_i=0; _i<2; _i++)
	{
	    if (_i)
	    {
	        _type=STR_MAGIC;
	        _count=_MAGIC_COUNT;
	    }
	    else
	    {
	        _type=STR_HEART;
	        _count=_HEART_COUNT;
	    }
    
    
	    for(_j=0; _j<_count; _j++)
	    {
	        if(!ds_list_size(dl_locations_remaining) 
	        || !ds_list_size(dl_ItemPool_C) )
	        {
	            _i=2;
	            break;//_j
	        }
        
	               ds_list_copy(_dl_remaining_items,dl_ItemPool_C);
	        for(_k=ds_list_size(_dl_remaining_items)-1; _k>=0; _k--)
	        {
	            _item_id = _dl_remaining_items[|_k];
            
	            if (string_pos(_type,_item_id))
	            {
	                Rando_set_loc_num_options(_item_id,1); // populates dl_qualified_locations, dl_loc_cats, dl_loc_num_options
	                if (ds_list_size(   dl_loc_num_options))
	                {
	                    ds_list_shuffle(dl_loc_num_options);
	                    _loc_num =      dl_loc_num_options[|0];
                    
	                    if (Rando_set_data_1a(_loc_num,_item_id)) // if item got placed
	                    {
	                            _idx =    ds_list_find_index(dl_ItemPool_C,_item_id);
	                        if (_idx!=-1) ds_list_delete(    dl_ItemPool_C,_idx);
	                            _idx =    ds_list_find_index(dl_locations_remaining,_loc_num);
	                        if (_idx!=-1) ds_list_delete(    dl_locations_remaining,_idx);
                        
	                        if (DEBUG){
	                        _rm_name  = val(dm_LOCATIONS[?hex_str(_loc_num)+STR_Rm+STR_Name], "undefined");
	                        _item_num = val(dm_LOCATIONS[?hex_str(_loc_num)+STR_Rm+STR_Location+STR_Num]);
	                        _loc_id   = _rm_name+hex_str(_item_num);
	                        if(!Rando_is_qual_location(_loc_id,_item_id)) sdm("Rando_is_qual_location() THINKS YOU CANT GET TO:  "+_loc_id+" FOR ITEM "+_item_id);
	                        }
                        
	                        break;//_k
	                    }
	                }
	            }
	        }
	    }
	}



	ds_list_destroy(_dl_remaining_items); _dl_remaining_items=undefined;







}
