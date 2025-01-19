/// @description  debug_list_rms_using_permut_ts()
function debug_list_rms_using_permut_ts() {


	var _i,_j,_k,_m, _idx, _val,_num, _count, _w,_h;
	var _area, _rm_name;
	var _char, _str,_str1,_str2;
	var _file, _file_name, _file_data;
	var _dl_ts_data,_dm_ts_data;
	var _ts_name;
	var _file_has_ts = false;
	var _dm1 = ds_map_create();


	var          _COUNT1 = ds_list_size(g.dl_AREA_NAME);
	for(_i=0; _i<_COUNT1; _i++) // Each area
	{
	    _area = g.dl_AREA_NAME[|_i];
	    for(_j=0; _j<$100; _j++) // Each possible file of area
	    {   // file name example:  "rm_tile_data/PalcA/PalcA_003.json"
	        _file_has_ts = false;
        
	        _file_name  = "rm_tile_data";
	        _file_name += "/";
	        _file_name += string_lettersdigits(_area);
	        _file_name += "/";
	        _file_name += string_lettersdigits(_area);
	        _file_name += "_";
	        _file_name += string_repeat("0",_j<100);
	        _file_name += string_repeat("0",_j<10);
	        _file_name += string(_j);
	        _file_name += ".json";
	        if(!file_exists(_file_name)) continue;//_j. to next file
        
	        _file_data = "";
	        _file = file_text_open_read(_file_name);
	        while(!file_text_eof(_file)) _file_data += file_text_readln(_file);
	        file_text_close(_file);
        
	        _file_data  = json_decode(_file_data);
	        _dl_ts_data = _file_data[?"tilesets"];
        
	                     _count = ds_list_size(_dl_ts_data);
	        for(_k=0; _k<_count; _k++) // Each tileset
	        {
	            _dm_ts_data = _dl_ts_data[|_k];
	            _str        = _dm_ts_data[?"source"];
	            // _dm_ts_data[?"source"] Example: "source":"..\/..\/..\/..\/..\/..\/Tiled\/Tilesets\/Z2_Remake_1a\/ts_Natural_1a_WRB.tsx
            
	            if(!string_pos("Natural", _str) 
	            && !string_pos("Man_made",_str) )
	            {
	                continue;//_k. to next tileset
	            }
            
	            _ts_name = undefined;
	            for(_m=string_length(_str); _m>=1; _m--) // Each string char of "source"
	            {
	                _char = string_char_at(_str,_m);
	                if (_char=="/")
	                {
	                    _ts_name = strR(_str,_m+1);
	                    _ts_name = string_copy(_ts_name, 1, string_length(_ts_name)-4);
	                    break;//_m
	                }
	            }
            
	            if (is_undefined(_ts_name)) continue;//_k. to next tileset
	            if (string_pos("WRB",_ts_name)) continue;//_k. to next tileset
            
	            _file_has_ts = true;
	            sdm(_file_name+": "+_ts_name);
	        }
        
	        if (_file_has_ts) sdm(""); // between rms
	    }
    
	    sdm("");sdm("");sdm(""); // between areas
	}


	ds_list_destroy(_dl_ts_data); _dl_ts_data=undefined;
	ds_map_destroy(_dm_ts_data); _dm_ts_data=undefined;
	ds_map_destroy(_dm1); _dm1=undefined;




	/*
	/// debug_list_rms_using_permut_ts()


	var _i,_j,_k,_m, _idx, _val,_num, _count, _w,_h;
	var _area, _rm_name;
	var _char, _str,_str1,_str2;
	var _file_data;
	var _dl_ts_data,_dm_ts_data;
	var _ts_name;
	var _zzz;


	var          _COUNT1 = ds_list_size(g.dl_AREA_NAME);
	for(_i=0; _i<_COUNT1; _i++) // Each AREA
	{
	    _area = g.dl_AREA_NAME[|_i];
	    for(_j=0; _j<$100; _j++) //  Each rm
	    {
	        _rm_name = _area+hex_str(_j);
	        _file_data = rm_get_file_data(_rm_name);
        
	        if(is_undefined(_file_data)) continue;//_j.  to next rm
        
        
	        _file_data  = json_decode(_file_data);
	        _dl_ts_data = _file_data[?"tilesets"];
        
	        _zzz = false;
	                     _count = ds_list_size(_dl_ts_data);
	        for(_k=0; _k<_count; _k++) // Each tileset
	        {
	            _dm_ts_data = _dl_ts_data[|_k];
	            _str        = _dm_ts_data[?"source"];
	            // _dm_ts_data[?"source"] Example: "source":"..\/..\/..\/..\/..\/..\/Tiled\/Tilesets\/Z2_Remake_1a\/ts_Natural_1a_WRB.tsx
            
	            if(!string_pos("Natural", _str) 
	            && !string_pos("Man_made",_str) )
	            {
	                continue;//_k. to next tileset
	            }
            
            
            
	            _ts_name = "";
            
	            for(_m=string_length(_str); _m>=1; _m--) // Each string char of "source"
	            {
	                    _char = string_char_at(_str, _m);
	                if (_char==".")
	                {   // So far, it's only the file ext(.tsx), next _j starts the tileset name.
	                    _ts_name = "";
	                    continue;//_m
	                }
                
                
	                if (_char=="/")
	                {
	                    if(!string_pos("WRB",_ts_name))
	                    {
	                        _zzz   = true;
	                        _str1  = _rm_name;
	                        _str1 += ", file "+val(g.dm_rm[?_rm_name+STR_file_name], "NO FILE NAME");
	                        _str1 += ": "+_ts_name;
	                        sdm(_str1);
	                    }
                    
	                    break;//_m. to next tileset
	                }
                
	                _ts_name = _char + _ts_name;
	            }
	        }
        
	        if (_zzz) sdm(""); // between rms
	    }
    
	    sdm("");sdm("");sdm(""); // between areas
	}


	ds_list_destroy(_dl_ts_data); _dl_ts_data=undefined;
	ds_map_destroy(_dm_ts_data); _dm_ts_data=undefined;
	*/



}
