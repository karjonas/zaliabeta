function dev_Rando_automate_script_01() {
	/*
	/// dev_Rando_automate_script_01()


	var _i;
	var _area, _rm_name, _rm_num, _loc_num, _item_num;
	var _area_str;
	var _str, _description;
	var _SPACES="    ";

	//sdm("switch(_rm_name)");
	//sdm("{");

	for(_i=1; _i<=Location_COUNT; _i++)
	//for(_i=Location_COUNT-1; _i>=0; _i--)
	{
	    _loc_num = hex_str(_i);
	    _rm_name = dm_LOCATIONS[?_loc_num+STR_Rm+STR_Name];
	    if(!is_undefined(_rm_name))
	    {
	        //sdm(_SPACES+"// ------------------------------------------------------------");
	        _rm_num = string_copy(_rm_name,string_length(_rm_name)-1,2);
	        _area   = string_copy(_rm_name,1,string_length(_rm_name)-2);
        
        
	        _description = string(val(dm_LOCATIONS[?_loc_num+STR_Description], "undefined"));
	        //_description = string(val(dm_LOCATIONS[?_rm_name+STR_Description], "undefined"));
        
        
	        //if(!string_pos("PBag: ",_description)) continue;
        
        
	        _str  = _SPACES;
	        _str += "case ";
        
	        switch(_area){
	        case Area_WestA:{_str+="Area_WestA"; break;}
	        case Area_EastA:{_str+="Area_EastA"; break;}
	        case Area_DthMt:{_str+="Area_DthMt"; break;}
	        case Area_MazIs:{_str+="Area_MazIs"; break;}
	        case Area_TownA:{_str+="Area_TownA"; break;}
	        case Area_TownB:{_str+="Area_TownB"; break;}
	        case Area_PalcA:{_str+="Area_PalcA"; break;}
	        case Area_PalcB:{_str+="Area_PalcB"; break;}
	        case Area_PalcC:{_str+="Area_PalcC"; break;}
	        case Area_PalcD:{_str+="Area_PalcD"; break;}
	        case Area_PalcE:{_str+="Area_PalcE"; break;}
	        case Area_PalcF:{_str+="Area_PalcF"; break;}
	        case Area_PalcG:{_str+="Area_PalcG"; break;}
	        case Area_PalcH:{_str+="Area_PalcH"; break;}
	        }
        
	        _item_num = val(dm_LOCATIONS[?_loc_num+STR_Rm+STR_Item+STR_Num]);
        
	        _str += "'";
	        _str += hex_str(_rm_num);
	        _str += "'";
        
	        _str += "+";
	        _str += "'";
	        _str += hex_str(_item_num);
	        _str += "'";
        
	        _str += ":{";
        
	        _str += " // ";
	        _str += _description;
	        //_str += " // "+string(val(dm_LOCATIONS[?_rm_name+STR_Description], "undefined"));
        
	        sdm(_SPACES+"// ------------------------------------------------------------");
	        sdm(_str);
	        sdm(_SPACES);
	        sdm(_SPACES+"break;}");
	        sdm(_SPACES); sdm(_SPACES); sdm(_SPACES); sdm(_SPACES);
	    }
	}


	//sdm("}");



	*/




}
