/// @description  dev_automate_palette_data()
function dev_automate_palette_data() {


	var _i,_j,_k, _a,_b,_c, _val, _count;
	var _len,_len1,_len2, _line_len;
	var _str,_str1,_str2, _char;
	var _pos,_pos1,_pos2;
	var _datakey,_datakey1,_datakey2;
	var _rm_w,_rm_h;
	var _palette1,_palette2, _palette_count;
	var _area, _rm_name;
	var _file, _file_name, _area_file_num_, _file_data, _data;
	var _dm_file=ds_map_create();

	var _STR1="***********************";
	var _STR2="----------------------------";

	sdm("");

	var _AREA_COUNT=ds_list_size(g.dl_AREA_NAME);
	for(_i=0; _i<_AREA_COUNT; _i++)
	{
	    _area=g.dl_AREA_NAME[|_i];
	    sdm("// "+_STR1+"  "+_area+"  "+_STR1);
	    sdm("// -------------------------------------------------------------");
	    sdm("");sdm("");
    
	    for(_j=0; _j<$100; _j++)
	    {
	        _area_file_num_  = string_repeat("0",3-string_length(string(_j)));
	        _area_file_num_ += string(_j);
	        sdm("//  "+_STR2+"  "+_area_file_num_+"  "+_STR2);
        
	        //_file_name example: "PalcA_003"
	        _file_name  = string_letters(_area); // get "PalcA" from "_PalcA_"
	        _file_name += "_";
	        _file_name += _area_file_num_;
        
	        //_file example: "rm_tile_data/PalcA/PalcA_003.json"
	        _file  = "rm_tile_data";
	        _file += "/";
	        _file += string_letters(_area); // get "PalcA" from "_PalcA_"
	        _file += "/";
	        _file += _file_name; // "PalcA_003"
	        _file += ".json";
        
	        if (file_exists(_file))
	        {
	                _file =       file_text_open_read(_file);
	                _file_data  = "";
	            while(           !file_text_eof(   _file)) 
	            {   _file_data += file_text_readln(_file);  }
	                              file_text_close( _file);
	            //
	            _palette1 = get_palette_via_file_data(_file_data);
	            if(!is_undefined(_palette1))
	            {
	                _str = "dm_scene_palette[?'"+_file_name+"'] = ";
	                _palette_count = string_length(_palette1)>>3;
	                for(_k=0; _k<_palette_count; _k++)
	                {
	                    _str1 = string_copy(_palette1, (_k<<3)+1, 8);
	                    _str += "'"+_str1+"'"
	                    if (_k+1<_palette_count) _str += "+";
	                }
	                _str += ";";
	                sdm(_str);
	                //sdm("p.dm_scene_palette[?'"+_file_name+"'] = '"+_palette1+"';");
	            }
	            //sdm("g.dm_rm[?STR_Tile+STR_File+'"+_file_name+"'+STR_Width ] = $"+hex_str(_rm_w>>8)+"<<8; // ");
	        }
        
	        sdm("");
	        //if (_j && !(_j&$F)){sdm("");sdm("");}
	    }
    
	    sdm("");sdm("");sdm("");sdm("");sdm("");sdm("");sdm("");sdm("");
	}


	ds_map_destroy(_dm_file); _dm_file=undefined;







}
