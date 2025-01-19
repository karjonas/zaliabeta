/// @description  dev_AutomateGameObjectData1()
function dev_AutomateGameObjectData1() {



	var _i,_j, _a,_b,_c, _val, _count;
	var _len,_len1,_len2, _line_len;
	var _str,_str1,_str2, _char;
	var _pos,_pos1,_pos2;
	var _data, _file_data;
	var _datakey,_datakey1,_datakey2;

	var _line_old, _line_new;
	line_curr=undefined;
	line_prev=undefined;
	line_num=0;

	var _STR_1A="data_go_prop1(";

	var _FILE_NAME = "other/automate_code01.txt";
	var _FILE=file_text_open_read(_FILE_NAME);
	while(!file_text_eof(_FILE))
	{
	    if(!is_undefined(line_curr))
	    {   line_prev =  line_curr;  }
    
	    // ----------------------------------------------
	    // Using this adds extra space to all lines, even blanks, and no way to get rid of extra space.
	    //line_curr=file_text_readln(_FILE);
    
	    // This method does not have that extra non-removable space
	    line_curr=file_text_read_string(_FILE);
	    file_text_readln(_FILE);
    
	    line_num++;
	    _line_len=string_length(line_curr);
    
	    _line_new="";
    
    
	    // ----------------------------------------------
	    if(!_line_len 
	    ||  _line_len==string_count(" ",line_curr) )
	    {
	        _line_new="";
	    }
	    else
	    {
	        _pos=string_pos(_STR_1A,line_curr);
	        if (_pos)
	        {
	            _line_new = string_copy(line_curr,1,_pos+string_length(_STR_1A)-1);
	            _count=0;
	            for(_i=_pos+string_length(_STR_1A); _i<=_line_len; _i++)
	            {
	                    _char=string_char_at(line_curr,_i);
	                if (_char==",")
	                {
	                    _count++;
	                }
                
	                if (_count!=1) _line_new += _char;
	            }
	        }
	        else
	        {
	            _line_new=line_curr;
	        }
	    }
    
	    // ----------------------------------------------
	    sdm(_line_new);
	}//while(!file_text_eof(_FILE))


	file_text_close(_FILE);







}
