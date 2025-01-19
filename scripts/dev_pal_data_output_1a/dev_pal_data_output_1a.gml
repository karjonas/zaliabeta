/// @description  dev_pal_data_output_1a()
function dev_pal_data_output_1a() {
	// output palette data for each room

	var i, j, k, _idx;
	var _str0, _str1, _str2, _str3, _str_show1, _str_show2, _str_show3, _str_pal, _data;

	var _area, _rm_num, _rm_name;
	var _rm_num_max     = $3F;
	var _count;
	var _case = 0;

	for (i = 0; i <= ds_list_size(g.dl_AREA_NAME) - 1; i++) // each area
	{
	    show_debug_message("");
	    show_debug_message("");
    
	    _area = g.dl_AREA_NAME[| i];
	    if (_area == Area_TownA) _rm_num_max = $7F;
    
	    for (j = 0; j <= _rm_num_max; j++) // each possible rm num of the area
	    {
	        if !(j & $F) show_debug_message("");
        
	        _rm_name = _area + hex_str(j);
        
	        if(!is_undefined(g.dm_rm[? _rm_name + STR_Rm+STR_Num+STR_Game]))
	        {
	            _str_show1 = " "+_rm_name+":   ";
	            _str_show2 = " "+_rm_name+":   ";
	            _str_show3 = " "+_rm_name+":   ";
            
	            _data = p.dm_pal_data[? _rm_name];
	            if(!is_undefined(_data))
	            {
	                _str1 = "";
	                _str2 = "";
	                _str3 = "";
	                _count = string_length(_data) div (COL_PER_PAL_ << 1);
	                for (k = 0; k < _count; k++)
	                {
	                                               _str0  = "";
	                         if (k == _count >> 1) _str0 += " - ";
	                    else if (k)                _str0 += " ";
	                    _str1 += _str0;
	                    _str2 += _str0;
	                    _str3 += _str0;
                    
	                    _str_pal = string_copy(_data,(k*_count)+1,_count);
	                    _str1 += _str_pal;
	                    _str2 += strR(_str_pal,3);
                    
	                    if (k&3) _str3 += strR(_str_pal,3);
	                }
                
	                if (string_length(_data) > string_length(_str1)) _str1 += " - " + strR(_data,string_length(_str1)+1);
                
	                _str_show1 += _str1;
	                _str_show2 += _str2;
	                _str_show3 += _str3;
	            }
            
            
            
            
            
	            _case = 1;
	            switch (_case)
	            {
                
	                case 0: // show data for every room
	                {
	                    show_debug_message(_str_show1);
	                    break;
	                }
                
	                case 1: // show data for every room, minus the 1st byte of each palette
	                {
	                    show_debug_message(_str_show2);
	                    break;
	                }
                
	                case 2: // data for every room, minus 1st byte of each palette, leave out base & PC palettes
	                {
	                    show_debug_message(_str_show3);
	                    break;
	                }
                
	                case 3: // show only rooms w/ missing palette data
	                {
	                    if (is_undefined(_data)) show_debug_message(_str_show1);
	                    break;
	                }
	            }
	        }
	    }
	}




}
