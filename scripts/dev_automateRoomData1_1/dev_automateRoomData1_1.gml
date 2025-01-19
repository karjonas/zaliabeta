/// @description  dev_automateRoomData1_1(text file line, rm name)
function dev_automateRoomData1_1() {


	var _i,_j, _a,_b,_c, _val, _count;
	var _len1,_len2;
	var _pos,_pos1,_pos2;
	var _str,_str1,_str2, _char;

	var                      _arg=0;
	var _LINE_OLD = argument[_arg++];
	var _RM_NAME  = argument[_arg++];

	var _AREA=string_copy(_RM_NAME,1,AreaID_LEN);
	var _IS_DNGN = _AREA==Area_PalcA || _AREA==Area_PalcB || _AREA==Area_PalcC || _AREA==Area_PalcD || _AREA==Area_PalcE || _AREA==Area_PalcF || _AREA==Area_PalcG || _AREA==Area_PalcH;
	//var _IS_DNGN=string_pos("Palc",_RM_NAME)!=0;
	var _IS_TOWN=string_pos("Town",_RM_NAME)!=0;

	var _line_new=undefined;

	var _LEN=string_length(_LINE_OLD);

	var _STR_A1="rm_data_init_1a(";
	var _STR_A2="data_rm_1a(";
	var _STR_B1="set_rm_data(area+hex_str(rm_num)";

	var _tile_file = undefined;
	var _music     = undefined;
	var _color     = undefined;
	var _axis      = undefined;
	var _show_pos  = undefined;
	var _owrc      = undefined;
	var _dark      = undefined;
	var _encounter = undefined;
	var _view      = undefined;
	var _town      = undefined;
	var _dungeon   = undefined;


	    _a=string_pos(_STR_A1,_LINE_OLD);
	    _b=string_pos(_STR_A2,_LINE_OLD);
	if (_a 
	||  _b )
	{
	    _count=0;
	    _str="";
    
	    if (_a) _c=_a;
	    else    _c=_b;
    
	    if (_a) _len1=string_length(_STR_A1);
	    else    _len1=string_length(_STR_A2);
    
    
	    for(_i=_c+_len1; _i<=_LEN; _i++)
	    {
	            _char=string_char_at(_LINE_OLD,_i);
	        if (_char==" ") continue;
        
	        if (_char=="," 
	        || (_char==")" && string_char_at(_LINE_OLD,_i+1)==";") )
	        {
	            if (_a)
	            {   //rm_data_init_1a(area,rm_num,area_WA+'084',  MUS_BATTLE_1A,COLOR3,  1,0,-1,  -1,0,  $1);
	                switch(_count){
	                case 02:{_tile_file=_str; break;}
	                case 03:{_music    =_str; break;}
	                case 04:{_color    =_str; break;}
	                case 05:{_show_pos =_str; break;}
	                case 06:{_axis     =_str; break;}
	                case 07:{_owrc     =_str; break;}
	                case 08:{_dark     =_str; break;}
	                case 09:{_encounter=_str; break;}
	                case 10:{_view     =_str; break;}
	                case 11:{_town     =_str; break;}
	                case 12:{_dungeon  =_str; break;}
	                }
	            }
	            else
	            {   //data_rm_1a(area_EA+'000', COLOR3, 1,0, MUS_BATTLE_1A, ti,pn);
	                switch(_count){
	                case 00:{_tile_file=_str; break;}
	                case 01:{_color    =_str; break;}
	                case 02:{_show_pos =_str; break;}
	                case 03:{_axis     =_str; break;}
	                case 04:{_music    =_str; break;}
	                case 05:{_town     =_str; break;}
	                case 06:{_dungeon  =_str; break;}
	                case 07:{_dark     =_str; break;}
	                case 08:{_encounter=_str; break;}
	                case 09:{_view     =_str; break;}
	                }
	            }
            
	            _str="";
	            _count++;
            
	            if (_char==")") break;//_i
	        }
	        else
	        {
	            _str+=_char;
	        }
	    }
    
    
    
    
    
    
	    _line_new="";
	    if (_c>1) _line_new+=string_copy(_LINE_OLD,1,_c-1);
	    _line_new+=_STR_B1;
    
    
    
    
    
	    // ---------------------------
	    if(!is_undefined(_music)) _line_new+=", "+ _music;
	    else                      _line_new+=", -1";
    
    
    
	    // ---------------------------
	    if(!is_undefined(_color) && !string_pos("-1",_color))     _line_new+=", STR_Color+hex_str("+_color+")";
    
	    // ---------------------------
	    if(!_IS_DNGN){if(!is_undefined(_dark) && !string_pos("-1",_dark))      _line_new+=", STR_Dark+hex_str("+_dark+")";}
    
	    // ---------------------------
	    if(!is_undefined(_tile_file)) _line_new+=", STR_Tile+"+_tile_file;
    
	    // ---------------------------
	    if(!is_undefined(_view) && !string_pos("-1",_view))      _line_new+=", STR_View+hex_str("+_view+")";
    
	    // ---------------------------
	    if(!is_undefined(_axis) && !string_pos("-1",_axis))      _line_new+=", STR_ow_axis+hex_str("+_axis+")";
    
	    // ---------------------------
	    if(!_IS_DNGN){if(!is_undefined(_show_pos) && !string_pos("-1",_show_pos))  _line_new+=", STR_show_ow_pos+hex_str("+_show_pos+")";}
    
	    // ---------------------------
	    if(!_IS_DNGN){if(!is_undefined(_owrc) && !string_pos("-1",_owrc))  _line_new+=", STR_OWRC+hex_str("+_owrc+")";}
    
	    // ---------------------------
	    if(!_IS_DNGN 
	    && !_IS_TOWN )
	    {
	        if(!is_undefined(_encounter) && !string_pos("-1",_encounter)) _line_new+=", STR_Encounter+hex_str("+_encounter+")";
	    }
    
	    // ---------------------------
	    if (_IS_TOWN){if(!is_undefined(_town) && !string_pos("-1",_town))      _line_new+=", STR_Town+hex_str("+_town+")";}
    
	    // ---------------------------
	    //if(!_IS_DNGN){if(!is_undefined(_dungeon)   && !string_pos("-1",_dungeon))   _line_new+=", STR_Dungeon+hex_str("+_dungeon+")";}
	}




	// ---------------------------------------------------------------
	if (is_undefined(_line_new)) _line_new =_LINE_OLD;
	else                         _line_new+=");";


	if(!is_undefined(_line_new)) sdm(_line_new);




	/*
	/// dev_automateRoomData1_1(text file line, rm name)


	var _i,_j, _a,_b,_c, _val, _count;
	var _len1,_len2;
	var _pos,_pos1,_pos2;
	var _str,_str1,_str2, _char;

	var                      _arg=0;
	var _LINE_OLD = argument[_arg++];
	var _RM_NAME  = argument[_arg++];

	var _line_new=undefined;

	var _LEN=string_length(_LINE_OLD);

	var _STR_A1="rm_data_init_1a(";
	var _STR_A2="data_rm_1a(";
	var _STR_B1="set_rm_data(area+hex_str(rm_num)";

	var _tile_file = undefined;
	var _music     = undefined;
	var _color     = undefined;
	var _axis      = undefined;
	var _show_pos  = undefined;
	var _owrc      = undefined;
	var _dark      = undefined;
	var _encounter = undefined;
	var _view      = undefined;
	var _town      = undefined;
	var _dungeon   = undefined;


	    _a=string_pos(_STR_A1,_LINE_OLD);
	    _b=string_pos(_STR_A2,_LINE_OLD);
	if (_a 
	||  _b )
	{
	    _count=0;
	    _str="";
    
	    if (_a) _c=_a;
	    else    _c=_b;
    
	    if (_a) _len1=string_length(_STR_A1);
	    else    _len1=string_length(_STR_A2);
    
    
	    for(_i=_c+_len1; _i<=_LEN; _i++)
	    {
	            _char=string_char_at(_LINE_OLD,_i);
	        if (_char==" ") continue;
        
	        if (_char=="," 
	        || (_char==")" && string_char_at(_LINE_OLD,_i+1)==";") )
	        {
	            if (_a)
	            {   //rm_data_init_1a(area,rm_num,area_WA+'084',  MUS_BATTLE_1A,COLOR3,  1,0,-1,  -1,0,  $1);
	                switch(_count){
	                case 02:{_tile_file=_str; break;}
	                case 03:{_music    =_str; break;}
	                case 04:{_color    =_str; break;}
	                case 05:{_show_pos =_str; break;}
	                case 06:{_axis     =_str; break;}
	                case 07:{_owrc     =_str; break;}
	                case 08:{_dark     =_str; break;}
	                case 09:{_encounter=_str; break;}
	                case 10:{_view     =_str; break;}
	                case 11:{_town     =_str; break;}
	                case 12:{_dungeon  =_str; break;}
	                }
	            }
	            else
	            {   //data_rm_1a(area_EA+'000', COLOR3, 1,0, MUS_BATTLE_1A, ti,pn);
	                switch(_count){
	                case 00:{_tile_file=_str; break;}
	                case 01:{_color    =_str; break;}
	                case 02:{_show_pos =_str; break;}
	                case 03:{_axis     =_str; break;}
	                case 04:{_music    =_str; break;}
	                case 05:{_town     =_str; break;}
	                case 06:{_dungeon  =_str; break;}
	                case 07:{_dark     =_str; break;}
	                case 08:{_encounter=_str; break;}
	                case 09:{_view     =_str; break;}
	                }
	            }
            
	            _str="";
	            _count++;
            
	            if (_char==")") break;//_i
	        }
	        else
	        {
	            _str+=_char;
	        }
	    }
    
    
    
    
    
    
	    _line_new="";
	    if (_c>1) _line_new+=string_copy(_LINE_OLD,1,_c-1);
	    _line_new+=_STR_B1;
    
    
    
    
    
	    // ---------------------------
	    if(!is_undefined(_music))
	    //if(!is_undefined(    _music) 
	    //&&  string_pos("MUS",_music) )
	    {
	        _line_new+=", "+ _music;
	    }
	    else
	    {
	        _line_new+=", -1";
	    }
    
    
	    // ---------------------------
	    if(!is_undefined(_color))
	    {
	        if (string_pos("COLOR",_color))
	        {
	            _line_new+=", STR_Color+"+_color+"_";
	        }
	        else
	        {
	                _pos=string_pos("$",_color);
	            if (_pos)
	            {
	                _color=string_copy(_color, _pos+1, string_length(_color)-_pos);
	                _color=string(str_hex(_color));
	                if (real(_color)>=0) _line_new+=", STR_Color+'"+hex_str(real(_color))+"'";
	            }
	            else
	            {
	                _line_new+=", STR_Color+hex_str("+_color+")";
	            }
	        }
	    }
    
    
	    // ---------------------------
	    if(!is_undefined(_dark))
	    {
	        if (string_pos("dark",_dark))
	        {
	            _line_new+=", STR_Dark+hex_str("+_dark+")";
	        }
	        else
	        {
	                _pos=string_pos("$",_dark);
	            if (_pos)
	            {
	                _dark=string_copy(_dark, _pos+1, string_length(_dark)-_pos);
	                _dark=string(str_hex(_dark));
	            }
            
	            if (real(_dark)>=0) _line_new+=", STR_Dark+'"+hex_str(real(_dark))+"'";
	        }
	    }
    
    
	    // ---------------------------
	    if(!is_undefined(_tile_file))
	    {
	        _line_new+=", STR_Tile+"+_tile_file;
	    }
    
    
	    // ---------------------------
	    if(!is_undefined(_view))
	    {
	            _pos=string_pos("$",_view);
	        if (_pos)
	        {
	            _view=string_copy(_view, _pos+1, string_length(_view)-_pos);
	            _view=string(str_hex(_view));
	        }
        
	        if (real(_view)>=1) _line_new+=", STR_View+'"+hex_str(real(_view))+"'";
	    }
    
    
	    // ---------------------------
	    if(!is_undefined(_axis))
	    {
	        if (string_pos("axis",_axis))
	        {
	            _line_new+=", STR_ow_axis+hex_str("+_axis+")";
	        }
	        else
	        {
	                _pos=string_pos("$",_axis);
	            if (_pos)
	            {
	                _axis=string_copy(_axis, _pos+1, string_length(_axis)-_pos);
	                _axis=string(str_hex(_axis));
	            }
            
	            if (real(_axis)>=0) _line_new+=", STR_ow_axis+'"+hex_str(real(_axis))+"'";
	        }
	    }
    
    
	    // ---------------------------
	    if(!is_undefined(_show_pos) 
	    &&  real(        _show_pos)>=0 )
	    {
	        _line_new+=", STR_show_ow_pos+'"+hex_str(real(_show_pos))+"'";
	    }
    
    
	    // ---------------------------
	    if(!is_undefined(_owrc))
	    {
	        if (string_pos("owrc",_owrc))
	        {
	            _line_new+=", STR_OWRC+hex_str("+_owrc+")";
	        }
	        else
	        {
	                _pos=string_pos("$",_owrc);
	            if (_pos)
	            {
	                _owrc=string_copy(_owrc, _pos+1, string_length(_owrc)-_pos);
	                _owrc=string(str_hex(_owrc));
	            }
            
	            if (real(_owrc)>=0) _line_new+=", STR_OWRC+'"+hex_str(real(_owrc))+"'";
	        }
	    }
    
    
	    // ---------------------------
	    if(!is_undefined(_encounter))
	    {
	        if (string_pos("ENC",_encounter))
	        {
	            _line_new+=", STR_Encounter+hex_str("+_encounter+")";
	        }
	        else
	        {
	                _pos=string_pos("$",_encounter);
	            if (_pos)
	            {
	                _encounter=string_copy(_encounter, _pos+1, string_length(_encounter)-_pos);
	                _encounter=string(str_hex(_encounter));
	            }
            
	            if (real(_encounter)>=1) _line_new+=", STR_Encounter+'"+hex_str(real(_encounter))+"'";
	        }
	    }
    
    
	    // ---------------------------
	    if(!is_undefined(_town))
	    {
	        if (string_pos("tn",_town))
	        {
	            _line_new+=", STR_Town+hex_str("+_town+")";
	        }
	        else
	        {
	                _pos=string_pos("$",_town);
	            if (_pos)
	            {
	                _town=string_copy(_town, _pos+1, string_length(_town)-_pos);
	                _town=string(str_hex(_town));
	            }
            
	            if (real(_town)>=1) _line_new+=", STR_Town+'"+hex_str(real(_town))+"'";
	        }
	    }
    
    
	    // ---------------------------
	    if(!is_undefined(_dungeon))
	    {
	        if (string_pos("dn",_dungeon))
	        {
	            _line_new+=", STR_Dungeon+hex_str("+_dungeon+")";
	        }
	        else
	        {
	                _pos=string_pos("$",_dungeon);
	            if (_pos)
	            {
	                _dungeon=string_copy(_dungeon, _pos+1, string_length(_dungeon)-_pos);
	                _dungeon=string(str_hex(_dungeon));
	            }
            
	            if (real(_dungeon)>=1) _line_new+=", STR_Dungeon+'"+hex_str(real(_dungeon))+"'";
	        }
	    }
	}




	// ---------------------------------------------------------------
	if (is_undefined(_line_new)) _line_new =_LINE_OLD;
	else                         _line_new+=");";


	if(!is_undefined(_line_new)) sdm(_line_new);




	*/



}
