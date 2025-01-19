/// @description  dev_automateRoomData1()
function dev_automateRoomData1() {


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

	var _STR_1A="rm_data_init_1a(";
	var _STR_1B="data_rm_1a(";
	//var _STR_1C="set_rm_data(area+hex_str(rm_num)";
	var _STR_2A="data_exit(";
	var _STR_3A="data_spawn(";
	var _STR_3B="data_spawn_1a(";
	var _STR_4A="data_spawn_Item(";
	//var _STR_5A="";

	var _STR_8A="rm_num  = $";

	var _rm_num = -1;
	var _rm_name=undefined;

	var _area="area_PH";

	var _tile_file, _music, _color, _axis, _show_pos, _owrc, _dark, _encounter, _view;

	strong_encounter_spawns=false;


	var _FILE_NAME = "other/automate_code01.txt";

	if(!file_exists(_FILE_NAME)) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!




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
    
    
    
	    // ----------------------------------------------
	    if (string_pos("area_",line_curr) 
	    &&  string_pos("=",    line_curr) )
	    {          _str=string_copy(line_curr,string_pos("area_",line_curr),7);
	        switch(_str){
	        case "area_WA":{_area=Area_WestA; break;}
	        case "area_EA":{_area=Area_EastA; break;}
	        case "area_DM":{_area=Area_DthMt; break;}
	        case "area_MI":{_area=Area_MazIs; break;}
	        case "area_PA":{_area=Area_PalcA; break;}
	        case "area_PB":{_area=Area_PalcB; break;}
	        case "area_PC":{_area=Area_PalcC; break;}
	        case "area_PD":{_area=Area_PalcD; break;}
	        case "area_PE":{_area=Area_PalcE; break;}
	        case "area_PF":{_area=Area_PalcF; break;}
	        case "area_PG":{_area=Area_PalcG; break;}
	        case "area_PH":{_area=Area_PalcH; break;}
	        case "area_TA":{_area=Area_TownA; break;}
	        case "area_TB":{_area=Area_TownB; break;}
	        }
	    }
    
    
	    _line_len=string_length(line_curr);
    
	    if (_line_len)
	    {
	        if (_line_len==string_count(" ",line_curr))
	        {
	            line_curr="";
	        }
	        else
	        {
	                _pos=string_pos(_STR_8A,line_curr); // "rm_num  = $"
	            if (_pos 
	            &&  _pos==1 )
	            {
	                if(!string_pos("//",line_curr) 
	                ||  string_pos("//",line_curr)>_pos )
	                {
	                    _str=string_copy(line_curr,_pos+string_length(_STR_8A),2);
	                    _rm_num=str_hex(_str);
	                    _rm_name=_area+hex_str(_rm_num);
	                    //line_curr=_STR_8A+
	                    strong_encounter_spawns=false;
	                }
	            }
	            else if (string_pos("STR_Enc_Strong",line_curr))
	            {// rm += STR_Enc_Strong;
	                strong_encounter_spawns=true;
	                line_curr="";
	            }
	            else
	            {
	                // ----------------------------------------------
	                if (string_pos(_STR_1A,line_curr) 
	                ||  string_pos(_STR_1B,line_curr) )
	                {
	                    //dev_automateRoomData1_1(line_curr,_rm_name); // translate rm_data_init_1a() to new format
	                    //continue;//while(!file_text_eof(_FILE))
	                }
                
	                // ----------------------------------------------
	                if (string_pos(_STR_2A,line_curr))
	                {
	                    //dev_automateRoomData1_2(line_curr,_rm_name); // clean up old variables in data_exit() lines
	                    //continue;//while(!file_text_eof(_FILE))
	                }
                
	                // ----------------------------------------------
	                if (string_pos(_STR_3A,line_curr) 
	                ||  string_pos(_STR_3B,line_curr) )
	                {
	                    //dev_automateRoomData1_3(line_curr,_rm_name); // clean up data_spawn
	                    //continue;//while(!file_text_eof(_FILE))
	                }
                
	                // ----------------------------------------------
	                if (string_pos(_STR_4A,line_curr))
	                {
	                    //dev_automateRoomData1_4(line_curr,_rm_name); // clean up data_spawn_Item
	                    //continue;//while(!file_text_eof(_FILE))
	                }
                
	                // ----------------------------------------------
	                if (string_pos("set_rm_data(",line_curr) 
	                ||  string_pos("g.dm_rm[?rm+MapAreaName_DATAKEY]",line_curr) )
	                {
	                    dev_automateRoomData1_5(line_curr,_rm_name); // 
	                    continue;//while(!file_text_eof(_FILE))
	                }
	            }
	        }
	    }
    
	    // ----------------------------------------------
	    sdm(line_curr);
	}//while(!file_text_eof(_FILE))


	file_text_close(_FILE);











}
