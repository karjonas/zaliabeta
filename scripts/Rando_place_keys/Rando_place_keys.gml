/// @description  Rando_place_keys(number of keys to place, will add to save data)
function Rando_place_keys() {


	var _i, _idx, _count;
	var _loc_num, _loc_id, _item_id;

	var                                   _arg=0;
	var _PLACEMENT_COUNT       = argument[_arg++];
	var _WILL_ADD_TO_SAVE_DATA = argument[_arg++];


	if (KeyLocations_WILL_RANDOMIZE)
	{
	    if (_PLACEMENT_COUNT)
	    {
	        var _j;
	        var _loc_cat;
        
	        for(_i=0; _i<_PLACEMENT_COUNT; _i++)
	        {
	            for(_j=ds_list_size(dl_remaining_keys)-1; _j>=0; _j--)
	            {
	                _item_id =      dl_remaining_keys[|_j];
	                Rando_set_loc_num_options(_item_id);
                
	                if (ds_list_size(dl_loc_num_options))
	                {
	                    //sdm("ds_list_size(dl_loc_num_options) $"+hex_str(ds_list_size(dl_loc_num_options)));
	                    ds_list_shuffle(dl_loc_num_options);
	                    _loc_num =   dl_loc_num_options[|0];
                    
	                    if (Rando_set_data_1a(_loc_num, _item_id)) // returns true if it was able to place the item
	                    {
	                            _idx =    ds_list_find_index(dl_remaining_keys,_item_id);
	                        if (_idx!=-1) ds_list_delete(    dl_remaining_keys,_idx);
	                            _idx =    ds_list_find_index(dl_locations_remaining,_loc_num);
	                        if (_idx!=-1) ds_list_delete(    dl_locations_remaining,_idx);
                        
	                        if(!ds_list_size(dl_remaining_keys) 
	                        || !ds_list_size(dl_locations_remaining) )
	                        {
	                            _i=_PLACEMENT_COUNT;
	                        }
                        
	                        break;//_j
	                        //_j=0;// break _j
	                    }
	                }
	            }//for(_j=ds_list_size(dl_remaining_keys)-1; _j>=0; _j--)
	        }
	    }
	}
	else
	{
	    var          _COUNT = ds_list_size(dl_KEYS);
	    for(_i=0; _i<_COUNT; _i++)
	    {
	        if (ds_list_size(dl_keys_placed)>=_COUNT)
	        {
	            break;//_i
	        }
        
        
	        _item_id = dl_KEYS[|_i];
	        if (ds_list_find_index(dl_keys_placed,   _item_id)==-1 
	        &&  ds_list_find_index(dl_remaining_keys,_item_id)!=-1 )
	        {
	            _loc_num = val(dm_LOCATIONS[?_item_id+STR_Location+STR_Num]);
	            _loc_id  = val(dm_LOCATIONS[?hex_str(_loc_num)+STR_Location+STR_ID], "undefined");
	            if (Rando_is_qual_location(_loc_id, _item_id))
	            {
	                if (_WILL_ADD_TO_SAVE_DATA)
	                {
	                    if (Rando_set_data_1a(_loc_num, _item_id))
	                    {
	                            _idx =    ds_list_find_index(dl_remaining_keys,_item_id);
	                        if (_idx!=-1) ds_list_delete(    dl_remaining_keys,_idx);
                        
	                        if (_item_id==FallingKey_ITEM_ID) FallingKey_item_placed=true;
	                    }
	                }
	                else
	                {
	                    ds_list_add(dl_keys_placed, _item_id); // This is temporary and only being done to check for progression
	                }
	            }
	        }
	    }
	}







}
