/// @description  Rando_sweep_keys(will add to save data)
function Rando_sweep_keys() {

	// This script is only for when NOT randomizing key locations


	var _i, _idx;
	var _item_id, _loc_num, _loc_id;

	var                                   _arg=0;
	var _WILL_ADD_TO_SAVE_DATA = argument[_arg++];

	var          _COUNT = ds_list_size(dl_KEYS);
	for(_i=0; _i<_COUNT; _i++)
	{
	    if (ds_list_size(dl_keys_placed)>=_COUNT)
	    {
	        break;//_i
	    }
    
    
	    _item_id = dl_KEYS[|_i];
	    if (ds_list_find_index(dl_keys_placed,_item_id)==-1)
	    {
	        _loc_num = val(dm_LOCATIONS[?_item_id+STR_Location+STR_Num]);
	        _loc_id  = val(dm_LOCATIONS[?hex_str(_loc_num)+STR_Location+STR_ID], "undefined");
	        if (Rando_is_qual_location(_loc_id, _item_id))
	        {
	            if (_WILL_ADD_TO_SAVE_DATA)
	            {
	                var _WAS_PLACED = Rando_set_data_1a(_loc_num, _item_id);
	                if (_WAS_PLACED)
	                {
	                    //    _idx =    ds_list_find_index(dl_locations_remaining,_loc_num);
	                    //if (_idx!=-1) ds_list_delete(    dl_locations_remaining,_idx);
	                }
	            }
	            else
	            {   // This is temporary and only being done to check for progression
	                ds_list_add(dl_keys_placed, _item_id);
	            }
	        }
	    }
	}







}
