/// @description  Rando_set_loc_num_options(item id, *location decision method)
function Rando_set_loc_num_options() {


	var _ITEM_ID = argument[0];

	var _METHOD = 2;
	//var _METHOD = ItemLocations_RANDO_METHOD;
	if (argument_count>1) _METHOD = argument[1];
	_METHOD=clamp(_METHOD,1,2);

	var _i, _val, _count;
	var _loc_num, _loc_id, _loc_cat;
	var _GIVE_NEW_LOC_HIGHER_CHANCE = ds_list_find_index(dl_ItemPool_A,_ITEM_ID)!=-1;


	ds_list_clear(dl_qualified_locations); // Qualified locations for THIS ITEM ONLY
	ds_list_clear(dl_loc_cats); // Location Categories
	ds_list_clear(dl_loc_num_options);



	for(_i=ds_list_size(dl_locations_remaining)-1; _i>=0; _i--)
	{
	    _loc_num =      dl_locations_remaining[|_i];
	    _loc_id  =  val(dm_LOCATIONS[?hex_str(_loc_num)+STR_Location+STR_ID]);
    
	    if (Rando_is_qual_location(string(_loc_id), _ITEM_ID)) // Need _ITEM_ID here
	    {
	        ds_list_add(dl_qualified_locations,_loc_num);
        
        
	        switch(_METHOD)
	        {
	            case 1:{
	            ds_list_add(dl_loc_num_options,_loc_num);
	            break;}
            
            
            
	            case 2:{
	            _loc_cat = dm_LOCATIONS[?hex_str(_loc_num)+STR_Category];
	            _val = val(dm_LOCATIONS[?hex_str(_loc_num)+STR_Obscure], -1);
            
	            if(!isVal(_val,2,3))
	            {
	                if(!is_undefined(                  _loc_cat) 
	                &&  ds_list_find_index(dl_loc_cats,_loc_cat)==-1 )
	                {
	                    ds_list_add(       dl_loc_cats,_loc_cat);
	                    ds_list_add(dl_loc_num_options,_loc_num);
	                }
	            }
	            break;}
	        }
	    }
	}


	if (_METHOD==2)
	{
	    for(_i=ds_list_size(dl_qualified_locations)-1; _i>=0; _i--)
	    {
	        _loc_num =      dl_qualified_locations[|_i];
	        _loc_cat = dm_LOCATIONS[?hex_str(_loc_num)+STR_Category];
	        _val = val(dm_LOCATIONS[?hex_str(_loc_num)+STR_Obscure], -1);
	        if (isVal(_val,2,3))
	        {
	            _val = STR_Obscure+hex_str(_val);
	            if(!is_undefined(                  _loc_cat) 
	            &&  ds_list_find_index(dl_loc_cats,_loc_cat)==-1 
	            &&  ds_list_find_index(dl_loc_cats,_val)==-1 
	            &&  ds_list_find_index(dl_loc_num_options,_loc_num)==-1 )
	            {
	                ds_list_add(       dl_loc_cats,_val);
	                ds_list_add(dl_loc_num_options,_loc_num);
	            }
	        }
	    }
	}



	ds_list_clear(dl_qualified_locations_new);
	if (ds_list_size(dl_qualified_locations)>ds_list_size(dl_qualified_locations_old))
	{
	    for(_i=ds_list_size(dl_qualified_locations)-1; _i>=0; _i--)
	    {
	        _loc_num =      dl_qualified_locations[|_i];
	        if (ds_list_find_index(dl_qualified_locations_old,_loc_num)==-1)
	        {
	            ds_list_add(dl_qualified_locations_new,_loc_num);
	        }
	    }
	}




	if (ds_list_size( dl_loc_num_options))
	{
	    var          _dl_OPTIONS=ds_list_create();
	    ds_list_copy(_dl_OPTIONS,dl_loc_num_options);
	    ds_list_clear(dl_loc_num_options);
	    for(_i=ds_list_size(_dl_OPTIONS)-1; _i>=0; _i--)
	    {
	        _loc_num =      _dl_OPTIONS[|_i];
	        _val = val(dm_LOCATIONS[?hex_str(_loc_num)+STR_Obscure], -1);
        
	        _count=01;
	        if (ItemLocations_LIMIT_OBSCURE)
	        {
	            switch(_val){
	            default:{_count=10 + (_GIVE_NEW_LOC_HIGHER_CHANCE && ds_list_find_index(dl_qualified_locations_new,_loc_num)!=-1); break;}
	            case  2:{_count=03; break;}
	            case  3:{_count=01; break;}
	            }        
	        }
	        else if (_GIVE_NEW_LOC_HIGHER_CHANCE) _count=10 + (ds_list_find_index(dl_qualified_locations_new,_loc_num)!=-1);
	        /*
	        switch(ItemLocations_RANDO_METHOD)
	        {   // -------------------------------------
	            case 1:{
	            switch(_val){
	            default:{_count=10 + (_GIVE_NEW_LOC_HIGHER_CHANCE && ds_list_find_index(dl_qualified_locations_new,_loc_num)!=-1); break;}
	            case 2:{_count=03; break;}
	            case 3:{_count=01; break;}
	            }
	            break;}
            
	            // -------------------------------------
	            case 2:{
	            if (_GIVE_NEW_LOC_HIGHER_CHANCE) _count=10 + (ds_list_find_index(dl_qualified_locations_new,_loc_num)!=-1);
	            else _count=01;
	            break;}
	        }
	        */
        
	        repeat(_count) ds_list_add(dl_loc_num_options,_loc_num);
	    }
    
	    ds_list_destroy(_dl_OPTIONS); _dl_OPTIONS=undefined;
	}









	/*
	/// Rando_set_loc_num_options(item id, *location decision method)


	var _ITEM_ID = argument[0];

	var _METHOD = ItemLocations_RANDO_METHOD;
	if (argument_count>1) _METHOD = argument[1];

	var _i, _val, _count;
	var _loc_num, _loc_id, _loc_cat;


	ds_list_clear(dl_qualified_locations); // Qualified locations for THIS ITEM ONLY
	ds_list_clear(dl_loc_cats); // Location Categories
	ds_list_clear(dl_loc_num_options);

	for(_i=ds_list_size(dl_locations_remaining)-1; _i>=0; _i--)
	{
	    _loc_num =      dl_locations_remaining[|_i];
	    _loc_id  =  val(dm_LOCATIONS[?hex_str(_loc_num)+STR_Location+STR_ID], "undefined");
    
	    if (Rando_is_qual_location(_loc_id, _ITEM_ID)) // Need _ITEM_ID here
	    {
	        ds_list_add(dl_qualified_locations,_loc_num);
        
	        // The higher the obscurity rating of the location, 
	        // the smaller chance of placing the item there.
	        _val = val(dm_LOCATIONS[?hex_str(_loc_num)+STR_Obscure], -1);
	        switch(_val){
	        default:{_count=10; break;}
	        case  1:{_count=08; break;}
	        case  2:{_count=03; break;}
	        case  3:{_count=01; break;}
	        }
        
	        repeat(_count) ds_list_add(dl_loc_num_options,_loc_num);
	    }
	}



	if (ds_list_size(dl_loc_num_options)>1)
	{
	    var _dl_OPTIONS=ds_list_create();
	    ds_list_shuffle(dl_loc_num_options);
	    for(_i=ds_list_size(dl_loc_num_options)-1; _i>=0; _i--)
	    {
	        _loc_num =      dl_loc_num_options[|_i];
	        _loc_cat = dm_LOCATIONS[?hex_str(_loc_num)+STR_Category];
        
	        if(!is_undefined(                  _loc_cat) 
	        &&  ds_list_find_index(dl_loc_cats,_loc_cat)==-1 )
	        {
	            ds_list_add(       dl_loc_cats,_loc_cat);
	            ds_list_add(_dl_OPTIONS,_loc_num);
	        }
	    }
    
	    ds_list_copy(dl_loc_num_options,_dl_OPTIONS);
	    ds_list_destroy(_dl_OPTIONS); _dl_OPTIONS=undefined;
	}
	*/



	/*
	/// Rando_set_loc_num_options(item id, *location decision method)


	var _ITEM_ID = argument[0];

	var _METHOD = ItemLocations_RANDO_METHOD;
	if (argument_count>1) _METHOD = argument[1];

	var _i, _val, _count;
	var _loc_num, _loc_id, _loc_cat;


	ds_list_clear(dl_qualified_locations); // Qualified locations for THIS ITEM ONLY
	ds_list_clear(dl_loc_cats); // Location Categories
	ds_list_clear(dl_loc_num_options);

	for(_i=ds_list_size(dl_locations_remaining)-1; _i>=0; _i--)
	{
	    _loc_num =      dl_locations_remaining[|_i];
	    _loc_id  =  val(dm_LOCATIONS[?hex_str(_loc_num)+STR_Location+STR_ID], "undefined");
    
	    if (Rando_is_qual_location(_loc_id, _ITEM_ID)) // Need _ITEM_ID here
	    {
	        ds_list_add(dl_qualified_locations,_loc_num);
        
	        switch(_METHOD)
	        {
	            // The higher the obscurity rating of the location, 
	            // the smaller chance of placing the item there.
	            case 1:{
	            _val = val(dm_LOCATIONS[?hex_str(_loc_num)+STR_Obscure], -1);
	            switch(_val){
	            default:{_count=10; break;}
	            case  1:{_count=10; break;}
	            //case  1:{_count=08; break;}
	            case  2:{_count=03; break;}
	            case  3:{_count=01; break;}
	            }
            
	            repeat(_count) ds_list_add(dl_loc_num_options,_loc_num);
	            break;}
            
            
	            // Picking from categories gives every category an even chance no matter how many rooms other categories have.
	            // This is done to help more evenly spread items throughout the world.
	            case 2:{
	            _loc_cat = dm_LOCATIONS[?hex_str(_loc_num)+STR_Category];
            
	            if(!is_undefined(                  _loc_cat) 
	            &&  ds_list_find_index(dl_loc_cats,_loc_cat)==-1 )
	            {
	                ds_list_add(       dl_loc_cats,_loc_cat);
	                ds_list_add(dl_loc_num_options,_loc_num);
	            }
	            break;}
	        }
	    }
	}
	*/



}
