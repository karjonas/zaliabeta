/// @description  dev_automateRoomData1_2(text file line, rm name)
function dev_automateRoomData1_2() {


	var _i,_j, _a,_b,_c, _val, _count;
	var _len1,_len2;
	var _pos,_pos1,_pos2;
	var _str,_str1,_str2, _char;

	var                      _arg=0;
	var _LINE_OLD = argument[_arg++];
	var _RM_NAME  = argument[_arg++];

	var _line_new=undefined;

	var _LEN=string_length(_LINE_OLD);

	var _STR_A1="data_exit(";
	//g.dm_rm[?_RM_NAME+STR_View+STR_Data]


	var _VIEW_DATA= val(g.dm_rm[?_RM_NAME+STR_View+STR_Data]);
	var _RM_W     = val(g.dm_rm[?_RM_NAME+STR_Width +STR_Quest+"01"], $1<<8);
	var _RM_H     = val(g.dm_rm[?_RM_NAME+STR_Height+STR_Quest+"01"], $1<<8);

	var _is_ydata=false;



	    _a=string_pos(_STR_A1,_LINE_OLD);
	if (_a)
	{
	    _count=0;
	    _str="";
    
	    _len1=string_length(_STR_A1);
	    _pos1=string_pos(   _STR_A1,_LINE_OLD);
	    _pos1+=_len1;
    
	    _line_new=string_copy(_LINE_OLD,1,_pos1-1);
    
	    // data_exit(EXL0,etA0,1,  x0L,ROW0,  W0,rows1,  X02,row3,  '1A'+EXR0_); // LFT 0, 
	    for(_i=_pos1; _i<=_LEN; _i++)
	    {
	            _char=string_char_at(_LINE_OLD,_i);
	        if (_char==" ") continue;
        
	        if (_char=="," 
	        || (_char==")" && string_char_at(_LINE_OLD,_i+1)==";") )
	        {
	            _is_ydata=false;
            
	            if (_count==0)
	            {// data_exit($20,etA0,1,....
	                if (string_pos("$",_str) 
	                && !string_pos("EX",_str) )
	                {
	                    _str=string_lettersdigits(_str);
	                    _val=str_hex(_str);
	                    _str1="EX";
	                    switch((_val>>4)&$F){
	                    case $0:{_str1+="M"; break;}
	                    case $1:{_str1+="R"; break;}
	                    case $2:{_str1+="L"; break;}
	                    case $4:{_str1+="D"; break;}
	                    case $8:{_str1+="U"; break;}
	                    }
	                    _str1+=string_char_at(_str,2);
	                    _str=_str1;
	                }
	            }
	            else if (_count>=3)
	            {
	                _str1=_str;
	                _str="";
                
	                switch(_str1){
	                default:{_str=_str1; break;}
	                //                                  //
	                case "x0L":{_str+="CLM2"; break;}
	                //case "x1L":{_str+="CLM2"; break;}
	                //case "x2L":{_str+="CLM2"; break;}
	                //case "x3L":{_str+="CLM2"; break;}
	                //                                  //
	                case "x0R":{_str+="clm2"; break;}
	                case "x1R":{_str+="clm2"; break;}
	                case "x2R":{_str+="clm2"; break;}
	                case "x3R":{_str+="clm2"; break;}
	                //                                  //
	                //                                  //
	                case "X00":{_str+="$0F"; break;}
	                case "x10":{_str+="$2F"; break;}
	                case "x20":{_str+="$4F"; break;}
	                case "x30":{_str+="$6F"; break;}
	                //                                  //
	                case "X01":{_str+="clmA"; break;}
	                case "x11":{_str+="clmA"; break;}
	                case "x21":{_str+="clmA"; break;}
	                case "x31":{_str+="clmA"; break;}
	                //                                  //
	                case "X02":{_str+="CLM3"; break;}
	                case "x12":{_str+="CLM3"; break;}
	                case "x22":{_str+="CLM3"; break;}
	                case "x32":{_str+="CLM3"; break;}
	                //                                  //
	                case "X03":{_str+="CLM4"; break;}
	                case "x13":{_str+="CLM5"; break;}
	                //case "x23":{_str+="CLM6"; break;}
	                //case "x33":{_str+="CLM7"; break;}
	                //                                  //
	                //                                  //
	                //case "x08":{_str+="$0C"; break;}
	                //case "x18":{_str+="$2C"; break;}
	                //case "x28":{_str+="$4C"; break;}
	                //case "x38":{_str+="$6C"; break;}
	                //                                  //
	                //case "x0E":{_str+="$10"; break;}
	                //case "x1E":{_str+="$30"; break;}
	                //case "x2E":{_str+="$50"; break;}
	                //case "x3E":{_str+="$70"; break;}
	                //                                  //
	                //                                  //
	                //                                  //
	                case "W0":{_str+="CLMS2"; break;} // $10. side/middle
	                case "W1":{_str+="CLMS3"; break;} // $20. down/up pipe
	                case "W2":{_str+="CLMS4"; break;} // $40. Elevator exit width
	                case "W3":{_str+="CLMS5"; break;} // $100 1 room section length
	                //                                  //
	                case "H0":{_str+="ROWS2"; break;}
	                case "H3":{_str+="ROWS5"; break;}
	                case "H4":{_str+="ROWS6"; break;}
	                //case "H5":{_str+="ROWS7"; break;}
	                //                                  //
	                //                                  //
	                //                                  //
	                //                                  //
	                //                                  //
	                //                                  //
	                //                                  //
	                case "Y00":{_str+="$1B";  _is_ydata=true; break;} // row_e3
	                case "Y05":{_str+="$16";  _is_ydata=true; break;} // 
	                case "y09":{_str+="$12";  _is_ydata=true; break;} // 
	                case "y0D":{_str+="$0E";  _is_ydata=true; break;} // 
	                case "y0F":{_str+="$0C";  _is_ydata=true; break;} // 
	                case "y11":{_str+="$0A";  _is_ydata=true; break;} // 
	                case "y20":{_str+="ROW0"; _is_ydata=true; break;} // ROW0
	                case "y24":{_str+="$1F";  _is_ydata=true; break;} // row_e2
	                case "y25":{_str+="-$0F"; _is_ydata=true; break;} // row_e0
	                case "y28":{_str+="$15";  _is_ydata=true; break;} // 
	                case "row2":{_str+="$18";  _is_ydata=true; break;} // 
	                /*
	                case "Y00":{_str+="$1B";  _is_ydata=true; break;}
	                case "Y05":{_str+="$16";  _is_ydata=true; break;}
	                case "y09":{_str+="$12";  _is_ydata=true; break;}
	                case "y0D":{_str+="$0E";  _is_ydata=true; break;}
	                case "y0F":{_str+="$0C";  _is_ydata=true; break;}
	                case "y11":{_str+="$0A";  _is_ydata=true; break;}
	                case "y20":{_str+="-$16"; _is_ydata=true; break;}
	                case "y24":{_str+="$1F";  _is_ydata=true; break;}
	                case "y25":{_str+="-$0F"; _is_ydata=true; break;}
	                case "y28":{_str+="$15";  _is_ydata=true; break;}
	                */
	                //                                  //
	                //                                  //
	                }
                
                
	                if (_is_ydata 
	                &&  isVal(_count,4,8) ) // exit yt, pc spawn yt
	                {
	                    if (_VIEW_DATA&$1 
	                    ||  (_RM_H>>8)<=1 )
	                    {
	                        switch(_str1){
	                        default:{   _str="row0+"+_str; break;}
	                        case "y20":{_str="ROW0"; break;}
	                        case "Y00":{_str="row_e3"; break;}
	                        case "y24":{_str="row_e2"; break;}
	                        case "y25":{_str="row_e0"; break;}
	                        }
	                        //_pos=string_pos("row0",_str);
	                        //if (_pos) _str=strR(_str,_pos+4);
	                        //_str = "row0+"+_str;
	                    }
	                }
	            }
            
            
	            _line_new += _str+_char;
            
            
	            _str="";
	            _count++;
            
	            if (_char=="," 
	            &&  _count>=3 
	            &&  _count&$1 )
	            {
	                _line_new+="  ";
	            }
            
	            if (_char==")")
	            {
	                _line_new += string_copy(_LINE_OLD, _i+1, _LEN-_i);
	                break;//_i
	            }
	        }
	        else
	        {
	            _str+=_char;
	        }
	    }
	}



	// ---------------------------------------------------------------
	if (is_undefined(_line_new)) _line_new =_LINE_OLD;
	//else                         _line_new+=");";


	if(!is_undefined(_line_new)) sdm(_line_new);







}
