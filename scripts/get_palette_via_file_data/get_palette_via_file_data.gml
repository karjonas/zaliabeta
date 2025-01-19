/// @description  get_palette_via_file_data(encoded file data, *scene name, *quest num)
function get_palette_via_file_data() {


	var _i, _val;
	var _palette = undefined;

	                       _i=-1;
	var _data = argument[++_i]; // pass 0 to have this open the file for the data

	if(!is_string(_data))
	{
	    if (argument_count>_i+1 && is_string(argument[++_i])) _val = argument[_i];
	    else                                                  _val = g.rm_name;
	    var _SCENE_NAME = _val;
    
    
	    if (argument_count>_i+1) _val = argument[++_i];
	    else                     _val = g.file_data_quest_num;
	    var _QUEST_NUM = _val;
    
	    _data = rm_get_file_data(_SCENE_NAME, _QUEST_NUM);
	    if (is_undefined(_data))
	    {
	        return _palette;
	    }
	}

	var _dm_FILE = json_decode(_data);




	var _dl_layer = _dm_FILE[?"layers"];
	if(!is_undefined(_dl_layer))
	{
	    var _i,_j,_k, _idx, _count;
	    var _clms;
	    var _tsrc = 0;
	    var _layer_name;
	    var _data_system_ver = 3;
	    var _LAYER_COUNT = ds_list_size(_dl_layer);
	    var _dm_layer;
    
    
    
    
	    for(_i=0; _i<_LAYER_COUNT; _i++) // each layer
	    {
	        _dm_layer = _dl_layer[|_i];
	        _layer_name = val(_dm_layer[?"name"], "");
        
	        if (string_pos("tile_data_system", _layer_name))
	        {
	            _data_system_ver = str_hex(string_copy(_layer_name, string_pos("v.", _layer_name)+2, 2));
	            break;//_i
	        }
	    }
    
    
    
    
	    for(_i=0; _i<_LAYER_COUNT; _i++) // each layer
	    {
	        _dm_layer = _dl_layer[|_i];
	        _layer_name = _dm_layer[?"name"];
	        if(!is_undefined(        _layer_name) 
	        &&  string_pos("palette",_layer_name) )
	        {
	            var _dl_tile = _dm_layer[?"data"];
	            _clms = _dm_FILE[?"width"];
            
	            if(!is_undefined(_dl_tile) 
	            && !is_undefined(_clms) )
	            {
	                _idx  = 0;
	                _tsrc = 0;
                
	                _palette = "";
                
	                if (_data_system_ver==3) _count = $0B;
	                else                     _count = p.BGR_PAL_COUNT + p.MOB_PAL_COUNT;
                
	                for(_j=0; _j<_count; _j++) // each palette (clm)
	                {
	                    if (_data_system_ver==3)
	                    {
	                        if (_j==0   // base colors
	                        ||  _j==1   // menu colors
	                        ||  _j==6 ) // pc colors
	                        {
	                            continue;//_j
	                        }
	                    }
                    
	                    for(_k=0; _k<COL_PER_PAL; _k++) // each color (row)
	                    {
	                            _idx  = (_k*_clms) + _j;
	                            _tsrc = _dl_tile[|_idx];
	                        if (_tsrc!=0) // 0 means no tile here
	                        {
	                            _tsrc--;
	                            _tsrc  = abs(_tsrc&$3FFFFFFF); // just incase x or y flipped
	                            _tsrc &= $FF;
	                            _palette += hex_str(_tsrc);
	                        }
	                        else
	                        {
	                            _palette += p.CI_ERR0_;
	                        }
	                    }
	                }
	            }
	        }
        
        
	        if(!is_undefined(_palette))
	        {
	            break;//_i
	        }
	    }
	}


	ds_map_destroy(_dm_FILE); _dm_FILE=undefined;



	return _palette;







}
