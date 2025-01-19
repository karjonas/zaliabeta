/// @description  dev_automateRoomData1_4(text file line, rm name)
function dev_automateRoomData1_4() {


	var _i,_j, _a,_b,_c, _val, _count;
	var _len1,_len2;
	var _pos,_pos1,_pos2;
	var _str,_str1,_str2,_str3, _char,_char1;
	var _obj,_obj_name, _ver;
	var _double_space_tokens=0;
	var _palette_str=undefined;

	var                      _arg=0;
	var _LINE_OLD = argument[_arg++];
	var _RM_NAME  = argument[_arg++];

	var _line_new=undefined;

	var _LEN=string_length(_LINE_OLD);

	var _STR_A1="data_spawn_Item(";
	var _STR_B1="data_spawn(";


	var _is_last_data=false;



	    _a=string_pos(_STR_A1,_LINE_OLD);
	if (_a)
	{
	    _count=0;
	    _str="";
	    _str1="";
	    _str2="";
	    _str3=undefined;
	    _obj_name="";
	    _ver=1;
	    _is_last_data=false;
    
	    _c=_a;
    
	    _len1=string_length(_STR_A1);
    
	    _line_new = "";
	    if (_c>1) _line_new += string_copy(_LINE_OLD, 1, _c-1);
	    _line_new+=_STR_B1;
    
    
	    for(_i=_c+_len1; _i<=_LEN; _i++)
	    {
	        _char=string_char_at(_LINE_OLD,_i);
	        _str1+=_char;
        
	        _is_last_data = _char==")" && string_char_at(_LINE_OLD,_i+1)==";";
        
	        if (_is_last_data 
	        ||  _char=="," )
	        {// data_spawn_Item(rm,ItmK9,1,  x5,y3,  -1,  STR_Treasure+STR_Map+"01");
	            _count++;
            
            
	            switch(_count)
	            {
	                case 1:{ // rm name + spawn type
	                _line_new += "rm+STR_PRIO"+",";
	                break;}
                
	                case 2:{ // object
	                _obj_name  = _str;
	                _line_new += _str+",";
	                break;}
                
	                case 3:{ // version
	                if(!string_pos("$",_str) 
	                &&  string_length(string_letters(_str)) )
	                {
	                    _line_new += _str+",";
	                }
	                else
	                {
	                    _ver=string_lettersdigits(_str);
	                    _ver=str_hex(_ver);
	                    _ver=max(1,_ver);
	                    _str2=hex_str(_ver);
	                    if (string_char_at(_str2,1)=="0") _str2=string_char_at(_str2,2)
	                    _str="$"+_str2;
	                    _line_new += _str+",";
	                }
                
	                    _double_space_tokens++;
	                if (_double_space_tokens)
	                {
	                    _double_space_tokens--;
	                    _line_new += "  ";
	                }
	                break;}
                
	                case 4:{ // XL
	                _line_new += _str+",";
	                break;}
                
	                case 5:{ // YT
	                _line_new += _str;
	                _double_space_tokens++;
	                break;}
	            }
            
            
            
	            // data_spawn_Item(rm,ItmK9,1,  x5,y3,  -1,  STR_Treasure+STR_Map+"01");
	            _str3=undefined;
            
	            if ((string_pos("STR_Qualified",_str) && string_pos("STR_Quest",_str)) 
	            ||  (string_pos("STR_Treasure",_str)  && string_pos("STR_Map",_str)) ) // STR_Treasure+STR_Map+"01"
	            {
	                _str3 = _str;
	            }
	            else if (_count==$6)
	            {
	                if(!string_pos("-1",_str))
	                {
	                    _str3 = "STR_Palette+hex_str("+_str+")";
	                }
	            }
            
            
	            if(!is_undefined(_str3))
	            {
	                _line_new += ",";
	                if (_double_space_tokens)
	                {
	                    _double_space_tokens--;
	                    _line_new += "  ";
	                }
                
	                _line_new += _str3;
	            }
            
            
            
	            if (_is_last_data)
	            {
	                _line_new += strR(_LINE_OLD,_i);
	                break;//_i
	            }
            
            
	            _str="";
	            _str1="";
	        }
	        else
	        {
	            if (_char!=" ") _str+=_char;
	        }
	    }
	}




	// ---------------------------------------------------------------
	if (is_undefined(_line_new)) _line_new =_LINE_OLD;


	if(!is_undefined(_line_new)) sdm(_line_new);



	return _line_new;







}
