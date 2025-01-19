/// @description  dev_automateRoomData1_5(text file line, rm name)
function dev_automateRoomData1_5() {


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

	var _line_new=_LINE_OLD;
	var _line1=val(line_prev,"");
	//var _line2=

	var _LEN=string_length(_LINE_OLD);

	var _STR_A1="MapAreaName_DATAKEY";
	var _STR_B1="set_rm_data(";


	if (string_pos("g.dm_rm[?rm+MapAreaName_DATAKEY]",_LINE_OLD))
	{
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}



	var              _MAP_AREA_NAME=g.dm_rm[?_RM_NAME+MapAreaName_DATAKEY];
	if(!is_undefined(_MAP_AREA_NAME))
	{
	    _pos=string_pos(");",_LINE_OLD);
	    _line_new=string_copy(_LINE_OLD, 1,_pos-1);
	    var _STR_C1=", "+_STR_A1+"+";
    
	    switch(_MAP_AREA_NAME){
	    case "NORTH CASTLE":      {_line_new+=_STR_C1+"_MapAreaName_NORTH_CASTLE"; break;}
	    case "NORTH CASTLE LAKE": {_line_new+=_STR_C1+"_MapAreaName_NORTH_CASTLE_LAKE"; break;}
	    case "NORTH CASTLE FIELD":{_line_new+=_STR_C1+"_MapAreaName_NORTH_CASTLE_FIELD"; break;}
	    case "PARAPA DESERT":     {_line_new+=_STR_C1+"_MapAreaName_PARAPA_DESERT"; break;}
	    case "TANTARI DESERT":    {_line_new+=_STR_C1+"_MapAreaName_TANTARI_DESERT"; break;}
	    case "RUTO MOUNTAINS":    {_line_new+=_STR_C1+"_MapAreaName_RUTO_MOUNTAINS"; break;}
	    case "MORUGE SWAMP":      {_line_new+=_STR_C1+"_MapAreaName_MORUGE_SWAMP"; break;}
	    case "SARIA RIVER":       {_line_new+=_STR_C1+"_MapAreaName_SARIA_RIVER"; break;}
	    case "SARIA FIELD":       {_line_new+=_STR_C1+"_MapAreaName_SARIA_FIELD"; break;}
	    case "SARIA RIVER WOODS": {_line_new+=_STR_C1+"_MapAreaName_SARIA_RIVER_WOODS"; break;}
	    case "SARIA CEMETERY":    {_line_new+=_STR_C1+"_MapAreaName_SARIA_CEMETERY"; break;}
	    case "SARIA BAY":         {_line_new+=_STR_C1+"_MapAreaName_SARIA_BAY"; break;}
	    case "MIDORO SWAMP":      {_line_new+=_STR_C1+"_MapAreaName_MIDORO_SWAMP"; break;}
	    case "MIDORO FIELD":      {_line_new+=_STR_C1+"_MapAreaName_MIDORO_FIELD"; break;}
	    case "ROYAL CEMETERY":    {_line_new+=_STR_C1+"_MapAreaName_ROYAL_CEMETERY"; break;}
    
	    case "NABOORU FIELD":     {_line_new+=_STR_C1+"_MapAreaName_NABOORU_FIELD"; break;}
	    case "NABOORU BAY":       {_line_new+=_STR_C1+"_MapAreaName_NABOORU_BAY"; break;}
	    case "NABOORU FOREST":    {_line_new+=_STR_C1+"_MapAreaName_NABOORU_FOREST"; break;}
	    case "DARUNIA MOUNTAINS": {_line_new+=_STR_C1+"_MapAreaName_DARUNIA_MOUNTAINS"; break;}
	    case "DARUNIA FIELD":     {_line_new+=_STR_C1+"_MapAreaName_DARUNIA_FIELD"; break;}
	    case "DARUNIA FOREST":    {_line_new+=_STR_C1+"_MapAreaName_DARUNIA_FOREST"; break;}
	    case "KASUTO RIVER":      {_line_new+=_STR_C1+"_MapAreaName_KASUTO_RIVER"; break;}
	    case "SEASHORE":          {_line_new+=_STR_C1+"_MapAreaName_SEASHORE"; break;}
	    case "VALLEY OF DEATH":   {_line_new+=_STR_C1+"_MapAreaName_VALLEY_OF_DEATH"; break;}
	    case "WHALE ISLAND":      {_line_new+=_STR_C1+"_MapAreaName_WHALE_ISLAND"; break;}
	    case "DRAGMIRE":          {_line_new+=_STR_C1+"_MapAreaName_DRAGMIRE"; break;}
    
	    case "DEATH MOUNTAIN":    {_line_new+=_STR_C1+"_MapAreaName_DEATH_MOUNTAIN"; break;}
	    case "MAZE ISLAND":       {_line_new+=_STR_C1+"_MapAreaName_MAZE_ISLAND"; break;}
    
	    case "RAURU":             {_line_new+=_STR_C1+"_MapAreaName_RAURU"; break;}
	    case "RUTO":              {_line_new+=_STR_C1+"_MapAreaName_RUTO"; break;}
	    case "SARIA":             {_line_new+=_STR_C1+"_MapAreaName_SARIA"; break;}
	    case "MIDO":              {_line_new+=_STR_C1+"_MapAreaName_MIDO"; break;}
	    case "NABOORU":           {_line_new+=_STR_C1+"_MapAreaName_NABOORU"; break;}
	    case "DARUNIA":           {_line_new+=_STR_C1+"_MapAreaName_DARUNIA"; break;}
	    case "KASUTO":            {_line_new+=_STR_C1+"_MapAreaName_KASUTO"; break;}
	    case "NEW KASUTO":        {_line_new+=_STR_C1+"_MapAreaName_NEW_KASUTO"; break;}
	    case "BULBLIN":           {_line_new+=_STR_C1+"_MapAreaName_BULBLIN"; break;}
	    }
    
	    _line_new += strR(_LINE_OLD,_pos);
	}



	sdm(_line_new);







}
