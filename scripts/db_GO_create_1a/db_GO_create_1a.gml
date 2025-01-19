/// @description  db_GO_create_1a(id)
function db_GO_create_1a(argument0) {


	with(argument0)
	{
	    sdm(""); //sdm("db_GOB_create_1a()-----------------------------------------");
	    var _str;
	    _str  = obj_name(object_index) + " ver $" + hex_str(ver);
	    _str += " created. ";
	    if(!is_undefined(dk_spawn)) _str += dk_spawn+", ";
	    _str += "xl $" + hex_str(xl) + " yt $" + hex_str(yt) + ", ";
	    _str += "update_idx $" + hex_str(update_idx) + ", " + "spawn_idx " + string(spawn_idx) + ", ";
    
	    if (is_ancestor(object_index,Item))
	    {
	        _str += "ITEM_BIT $"+hex_str(ITEM_BIT)+", ";
	    }
    
    
	    if (0 && spawn_idx != -1)
	    {
	        var _x = g.dm_spawn[?get_spawn_datakey(g.rm_name,STR_PRXM,spawn_idx) + "_x"];
	        _str += ".   _x $" + hex_str(_x);
	    }
    
    
	    sdm(_str);
    
    
	    if (1 && is_ancestor(object_index,GOB1))
	    {
	        var _i, _val, _gob;
	            _str = "g.go_mgr.dl_gob1:  ";
	        var          _COUNT = ds_list_size(g.go_mgr.dl_gob1);
	        for(_i=0; _i<_COUNT; _i++)
	        {
	            _gob = g.go_mgr.dl_gob1[|_i];
	            _val = !is_undefined(_gob) 
	                && (_gob+1)>0 
	                && instance_exists(_gob) 
	                && _gob.state;
	            //_val = defined(_gob) && _gob && _gob.state;
	            _str += "[" + string(_val) + "] ";
	        }
        
	        sdm(_str);
	    }
	}


	sdm("");





}
