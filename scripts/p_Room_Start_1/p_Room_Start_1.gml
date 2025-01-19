function p_Room_Start_1() {
	/*
	/// p_Room_Start_1()


	if (g.FileCleaning01_STATE 
	&&  g.room_type=="A" 
	&&  g.rm_name==g.FileCleaning01_rm_name )
	{
	    var _dm_t_file_data = ds_map_create();
	    ds_map_copy(_dm_t_file_data, g.dm_tile_file);
	}
	else
	{
	    var              _FILE_DATA = rm_get_file_data(g.rm_name, g.file_data_quest_num);
	    if (is_undefined(_FILE_DATA)) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    
	    var _dm_t_file_data = json_decode(_FILE_DATA);
	}








	var _dm_layer_data;
	var _dl_layer_data = _dm_t_file_data[?"layers"];
	if(!is_undefined(_dl_layer_data))
	{
	    var _i,_j,_k, _idx, _count;
	    var _clms;
	    var _tsrc = 0;
	    var _layer_name;
	    var _data_system_ver = 3;
	    var _LAYER_COUNT = ds_list_size(_dl_layer_data);
    
    
    
    
	    for(_i=0; _i<_LAYER_COUNT; _i++) // each layer
	    {
	        _dm_layer_data =     _dl_layer_data[|_i];
	        _layer_name    = val(_dm_layer_data[?"name"], "");
        
	        if (string_pos("tile_data_system", _layer_name))
	        {
	            _data_system_ver = str_hex(string_copy(_layer_name, string_pos("v.", _layer_name)+2, 2));
	            break;//_i
	        }
	    }
    
    
    
    
	    for(_i=0; _i<_LAYER_COUNT; _i++) // each layer
	    {
	        _dm_layer_data  = _dl_layer_data[|_i];
	        _layer_name     = _dm_layer_data[?"name"];
	        if(!is_undefined(        _layer_name) 
	        &&  string_pos("palette",_layer_name) )
	        {
	            var _dl_t_data = _dm_layer_data[?"data"];
	                _clms      = _dm_t_file_data[?"width"];
            
	            if(!is_undefined(_dl_t_data) 
	            && !is_undefined(_clms) )
	            {
	                _idx  = 0;
	                _tsrc = 0;
                
	                pal_rm_file = "";
                
	                if (_data_system_ver==3) _count = $0B;
	                else                     _count = BGR_PAL_COUNT + MOB_PAL_COUNT;
                
	                for(_j=0; _j<_count; _j++) // each palette (clm)
	                {
	                    if (_data_system_ver==3)
	                    {
	                        if (_j==0 
	                        ||  _j==1 
	                        ||  _j==6 )
	                        {
	                            continue;//_j
	                        }
	                    }
                    
	                    for(_k=0; _k<COL_PER_PAL; _k++) // each color (row)
	                    {
	                            _idx  = (_k*_clms) + _j;
	                            _tsrc = _dl_t_data[|_idx];
	                        if (_tsrc!=0) // 0 means no tile here
	                        {
	                            _tsrc--;
	                            _tsrc  = abs(_tsrc&$3FFFFFFF); // just incase x or y flipped
	                            _tsrc &= $FF;
	                            pal_rm_file += hex_str(_tsrc);
	                        }
	                        else
	                        {
	                            pal_rm_file += CI_ERR0_;
	                        }
	                    }
	                }
                
	                ds_list_destroy(_dl_t_data); _dl_t_data = undefined;
	            }
	        }
        
        
	        if(!is_undefined(pal_rm_file)) break;//_i
	    }
	}


	ds_list_destroy(_dl_layer_data); _dl_layer_data  = undefined;
	ds_map_destroy(_dm_t_file_data); _dm_t_file_data = undefined;



	*/



}
