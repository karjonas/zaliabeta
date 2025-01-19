/// @description  Overworld_init_data_1()
function Overworld_init_data_1() {

	if (DEV) sdm(" Overworld_init_data_1()");


	// Z: In case I want to go back to old method which doesn't automate/pre-bake the data
	var Z = OVERWORLD_INIT_METHOD>1;

	var _owrc_printed = false;
	var _tsrc_started=false;
	var _solid_started=false;

	var _dg_AreaNames_started=false;
	var _dg_hidden_exits_help_started=false;
	var _dg_ChangeTiles_Boots_started=false;
	var _sceneowrc_started=false;
	var _encounterareas_started=false;
	var _exits_started=false;

	var _dg_boulders_started=false;
	var _RiverDevil_started=false;
	var _flute_started=false;
	var _raft_started=false;

	var _values_were_set = false;

	var _dl1 = ds_list_create();
	var _dl2 = ds_list_create();

	var _dg_tsrcub = ds_grid_create(0,2);


	var _db_str = "";


	if(Z)repeat($4) sdm("");

	var _i,_j,_k,_m, _val,_val1,_val2, _idx, _count,_count1,_count2, _type, _num;
	if(Z)sdm("var _i,_j, _idx, _val1,_val2, _count1,_count2;");
	var _x,_y;
	var _owrc,_owrc_, _ow_row,_ow_row_, _ow_clm,_ow_clm_, _clms,_rows, _roff,_coff;
	if(Z)sdm("var _owrc,_owrc_"+", _ow_clm,_ow_row"+", _ow_clm_,_ow_row_;");

	var _tile_data, _ts, _tsrc,_tsrc_raw, _ts_r,_ts_c;
	var _tsrc0 = 0;
	if(Z)sdm("var _tsrc;");

	var _str,_str1,_str2, _name, _pos, _len,_len1,_len2;
	var _area;
	var _datakey, _dk;
	if(Z)sdm("var _dk, _str1,_str2;");

	var _data, _rm_name;

	var _dl_RANDO_TSRC_A = ds_list_create();
	var _dl_RANDO_TSRC_B = ds_list_create();
	ds_list_add(_dl_RANDO_TSRC_A,TSRC_GRAS01); // grass
	ds_list_add(_dl_RANDO_TSRC_A,TSRC_SAND01); // desert
	ds_list_add(_dl_RANDO_TSRC_A,TSRC_VOLC01); // volcano
	ds_list_add(_dl_RANDO_TSRC_A,TSRC_GRAV01); // grave
	ds_list_add(_dl_RANDO_TSRC_A,TSRC_TREE01); // trees
	ds_list_add(_dl_RANDO_TSRC_A,TSRC_SWAM01); // swamp
	ds_list_add(_dl_RANDO_TSRC_A,TSRC_SNOW01); // beach
	ds_list_copy(_dl_RANDO_TSRC_B,_dl_RANDO_TSRC_A);
	ds_list_shuffle(_dl_RANDO_TSRC_B);




	// --------------------------------------------------------------
	var _file_name = "OvrwA_00.json";
	var _file = file_text_open_read("ow_tile_data/"+_file_name);

	    _str  = "";
	while (    !file_text_eof(   _file))
	{   _str += file_text_readln(_file);  }
	            file_text_close( _file);
	//
	var _dm_file_data = json_decode(_str);




	// --------------------------------------------------------------
	if(Z)sdm("var _dl1 = ds_list_create();");
	//sdm("var _dl2 = ds_list_create();");
	if(Z)
	{   repeat($1) sdm("");
	    sdm("var         _dl_AreaNames = ds_list_create();");
	    sdm("ds_list_add(_dl_AreaNames,'NORTH CASTLE FIELD');");
	    sdm("ds_list_add(_dl_AreaNames,'NORTH CASTLE WOODS'); // 18 character limit");
	    sdm("ds_list_add(_dl_AreaNames,'NORTH CASTLE LAKE');");
	    sdm("ds_list_add(_dl_AreaNames,'RAURU WOODS');");
	    sdm("//                                                      //");
	    sdm("ds_list_add(_dl_AreaNames,'TANTARI DESERT');");
	    sdm("ds_list_add(_dl_AreaNames,'PARAPA DESERT');");
	    sdm("ds_list_add(_dl_AreaNames,'RUTO MOUNTAINS');");
	    sdm("ds_list_add(_dl_AreaNames,'SARIA FIELD');");
	    sdm("//                                                      //");
	    sdm("ds_list_add(_dl_AreaNames,'SARIA WOODS');");
	    sdm("ds_list_add(_dl_AreaNames,'SARIA BAY');");
	    sdm("ds_list_add(_dl_AreaNames,'SARIA CEMETERY');");
	    sdm("ds_list_add(_dl_AreaNames,'MORUGE SWAMP');");
	    sdm("//                                                      //");
	    sdm("ds_list_add(_dl_AreaNames,'MIDORO FIELD');");
	    sdm("ds_list_add(_dl_AreaNames,'MIDORO SWAMP');");
	    sdm("ds_list_add(_dl_AreaNames,'ROYAL CEMETERY');");
	    sdm("ds_list_add(_dl_AreaNames,'DEATH MOUNTAIN');");
	    sdm("//                                                      //");
	    sdm("//                                                      //");
	    sdm("ds_list_add(_dl_AreaNames,'NABOORU FIELD');");
	    sdm("ds_list_add(_dl_AreaNames,'NABOORU BAY');");
	    sdm("ds_list_add(_dl_AreaNames,'DARUNIA FIELD');");
	    sdm("ds_list_add(_dl_AreaNames,'DARUNIA FOREST');");
	    sdm("//                                                      //");
	    sdm("ds_list_add(_dl_AreaNames,'DARUNIA MOUNTAINS');");
	    sdm("ds_list_add(_dl_AreaNames,'KASUTO CEMETERY');");
	    sdm("ds_list_add(_dl_AreaNames,'KASUTO FOREST');");
	    sdm("ds_list_add(_dl_AreaNames,'KASUTO SWAMP');");
	    sdm("//                                                      //");
	    sdm("ds_list_add(_dl_AreaNames,'SEASHORE');");
	    sdm("ds_list_add(_dl_AreaNames,'VALLEY OF DEATH');");
	    sdm("ds_list_add(_dl_AreaNames,'MAZE ISLAND');");
	    sdm("ds_list_add(_dl_AreaNames,'WHALE ISLAND');");
	    sdm("//                                                      //");
	    sdm("ds_list_add(_dl_AreaNames,'SARIA RIVER');");
	    sdm("ds_list_add(_dl_AreaNames,'NABOORU WOODS');");
	    sdm("ds_list_add(_dl_AreaNames,'MAKARRHA');");
	    sdm("ds_list_add(_dl_AreaNames,'DRAGMIRE'); // DRAGMIRE A");
	    sdm("//                                                      //");
	    sdm("ds_list_add(_dl_AreaNames,'DRAGMIRE'); // DRAGMIRE B (Island behind Dragmire)");
	    //sdm("ds_list_add(_dl_AreaNames,MapAreaName_DEF);");
	    repeat($1) sdm("");
	}

	if(Z)repeat($2) sdm("");

	          OW_CLMS = _dm_file_data[?"width"];
	if(Z)sdm("OW_CLMS = $"+hex_str(OW_CLMS)+";");
	          OW_ROWS = _dm_file_data[?"height"];
	if(Z)sdm("OW_ROWS = $"+hex_str(OW_ROWS)+";");

	          OW_W = OW_CLMS<<SHIFT;
	if(Z)sdm("OW_W = OW_CLMS<<SHIFT;");
	          OW_H = OW_ROWS<<SHIFT;
	if(Z)sdm("OW_H = OW_ROWS<<SHIFT;");






	// --------------------------------------------------------------
	// Get tileset info
	var _STR_IDX    = "_idx";
	var _STR_NAME   = "_name";
	var _dm_ts_info = ds_map_create();
	var _dl_ts_data = _dm_file_data[?"tilesets"];
	var _dm_ts_data;
	_str="";
	             _count = ds_list_size(_dl_ts_data);
	for(_i=0; _i<_count; _i++)
	{
	    _dm_ts_data = _dl_ts_data[|_i];
	    _str = _dm_ts_data[?"source"];
    
	    for(_j=string_length(_str); _j>=1; _j--) // start from end, go backwards
	    {   // "source" Example: "..\/..\/..\/Tilesets\/Z2_Remake_1a\/ts_Overworld_1a.tsx"
	        if (string_char_at(_str, _j) != "/") continue;
        
        
	            _name = string_copy(_str, _j+1, (string_length(_str)-_j) - 4); // (- 4): truncates the file ext
	            _ts   = val(g.dm_tileset[?_name]);
	        if(!_ts)
	        {
	            _ts   = TILESET1;
	            _name = background_get_name(_ts);
	        }
	        _dm_ts_info[?hex_str(_i)+_STR_NAME] = _name; // ts name
	        _dm_ts_info[?hex_str(_i)+_STR_IDX]  = _ts;   // ts index
	        break;//_j
	    }
    
	    ds_map_clear(_dm_ts_data);
	}







	// --------------------------------------------------------------
	if(Z)repeat($2) sdm("");

	ds_grid_resize(dg_tsrc_def,  OW_CLMS, OW_ROWS);
	ds_grid_clear (dg_tsrc_def,  0);
	ds_grid_copy(dg_tsrc,dg_tsrc_def);
	if(Z)repeat($1) sdm("");
	if(Z)sdm("ds_grid_resize(dg_tsrc_def, OW_CLMS, OW_ROWS);");
	if(Z)sdm("ds_grid_clear( dg_tsrc_def, 0);");
	if(Z)sdm("ds_grid_copy(dg_tsrc,dg_tsrc_def);");


	ds_grid_resize(dg_solid_def, OW_CLMS, OW_ROWS);
	ds_grid_clear (dg_solid_def, 0);
	ds_grid_copy(dg_solid,dg_solid_def);
	if(Z)repeat($1) sdm("");
	if(Z)sdm("ds_grid_resize(dg_solid_def, OW_CLMS, OW_ROWS);");
	if(Z)sdm("ds_grid_clear( dg_solid_def, 0);");
	if(Z)sdm("ds_grid_copy(dg_solid,dg_solid_def);");


	ds_grid_resize(dg_area,      OW_CLMS, OW_ROWS);
	ds_grid_clear( dg_area,     -1);
	if(Z)repeat($1) sdm("");
	if(Z)sdm("ds_grid_resize(dg_area, OW_CLMS, OW_ROWS);");
	if(Z)sdm("ds_grid_clear( dg_area, -1);");


	ds_grid_resize(dg_AreaNames, OW_CLMS,OW_ROWS);
	ds_grid_clear (dg_AreaNames, MapAreaName_DEF);
	if(Z)repeat($1) sdm("");
	if(Z)sdm("ds_grid_resize(dg_AreaNames, OW_CLMS, OW_ROWS);");
	if(Z)sdm("ds_grid_clear( dg_AreaNames, MapAreaName_DEF);");


	ds_grid_resize(dg_hidden_exits_help, 0,ds_grid_height(dg_hidden_exits_help));
	ds_grid_clear (dg_hidden_exits_help, 0);
	if(Z)repeat($1) sdm("");
	if(Z)sdm("ds_grid_resize(dg_hidden_exits_help, 0,ds_grid_height(dg_hidden_exits_help));");
	if(Z)sdm("ds_grid_clear (dg_hidden_exits_help, 0);");








	// NOTE: 19 characters(including spaces) fits, but is tight.
	// Therefore, 18 characters will be the limit.
	var         _dl_AreaNames = ds_list_create();
	ds_list_add(_dl_AreaNames,"NORTH CASTLE FIELD");
	//ds_list_add(_dl_AreaNames,"NORTH CASTLE FOREST"); // 19 characters
	ds_list_add(_dl_AreaNames,"NORTH CASTLE WOODS"); // 18 characters
	ds_list_add(_dl_AreaNames,"NORTH CASTLE LAKE");
	ds_list_add(_dl_AreaNames,"RAURU WOODS");
	//                                                      //
	ds_list_add(_dl_AreaNames,"TANTARI DESERT");
	ds_list_add(_dl_AreaNames,"PARAPA DESERT");
	ds_list_add(_dl_AreaNames,"RUTO MOUNTAINS");
	ds_list_add(_dl_AreaNames,"SARIA FIELD");
	//                                                      //
	ds_list_add(_dl_AreaNames,"SARIA WOODS");
	ds_list_add(_dl_AreaNames,"SARIA BAY");
	ds_list_add(_dl_AreaNames,"SARIA CEMETERY");
	ds_list_add(_dl_AreaNames,"MORUGE SWAMP");
	//                                                      //
	ds_list_add(_dl_AreaNames,"MIDORO FIELD");
	ds_list_add(_dl_AreaNames,"MIDORO SWAMP");
	ds_list_add(_dl_AreaNames,"ROYAL CEMETERY");
	ds_list_add(_dl_AreaNames,"DEATH MOUNTAIN");
	//                                                      //
	//                                                      //
	ds_list_add(_dl_AreaNames,"NABOORU FIELD");
	ds_list_add(_dl_AreaNames,"NABOORU BAY");
	ds_list_add(_dl_AreaNames,"DARUNIA FIELD");
	ds_list_add(_dl_AreaNames,"DARUNIA FOREST");
	//                                                      //
	ds_list_add(_dl_AreaNames,"DARUNIA MOUNTAINS");
	ds_list_add(_dl_AreaNames,"KASUTO CEMETERY");
	ds_list_add(_dl_AreaNames,"KASUTO FOREST");
	ds_list_add(_dl_AreaNames,"KASUTO SWAMP");
	//                                                      //
	ds_list_add(_dl_AreaNames,"SEASHORE");
	ds_list_add(_dl_AreaNames,"VALLEY OF DEATH");
	ds_list_add(_dl_AreaNames,"MAZE ISLAND");
	ds_list_add(_dl_AreaNames,"WHALE ISLAND");
	//                                                      //
	ds_list_add(_dl_AreaNames,"SARIA RIVER");
	ds_list_add(_dl_AreaNames,"NABOORU WOODS");
	ds_list_add(_dl_AreaNames,"MAKARRHA");
	ds_list_add(_dl_AreaNames,"DRAGMIRE"); // DRAGMIRE A
	ds_list_add(_dl_AreaNames,"DRAGMIRE"); // DRAGMIRE B (Island behind Dragmire)
	//                                                      //
	//                                                      //
	ds_list_add(_dl_AreaNames,MapAreaName_DEF);
	//                                                      //




	var _Anim, _Speed, _Enc, _Boots, _Change, _Solid;
	var _Open, _RmName, _AccessRm, _AccessOw, _CutScene, _Town;
	var _AccessOw_len = 0;
	var _prop_name, _prop_value;


	var _dm_prop_value = ds_map_create();

	var _scale_x, _scale_y;

	var _layer_name, _layer_type;
	var _dm_layer_data, _dl_data;
	var _dl_layer_data = _dm_file_data[?"layers"];

	var _dl_prop_data, _dm_prop_data;
	var _dm_obj_data;

	var _exit_num, _exit_name, _info;

	var _count_j = 0;
	var _str_j = "";

	var _STR_ENC  = "ENC";
	var _STR_AREA = "AREA";









	var          _layer_count = ds_list_size(_dl_layer_data);
	for(_i=0; _i<_layer_count; _i++) // each layer
	{
	    _values_were_set = false;
	    _owrc_printed = false;
    
	    _dm_layer_data = _dl_layer_data[|_i];
	    _layer_name    = _dm_layer_data[?"name"];
	    _layer_type    = _dm_layer_data[?"type"];
    
	         if (_layer_type=="tilelayer")   _dl_data = _dm_layer_data[?"data"];
	    else if (_layer_type=="objectgroup") _dl_data = _dm_layer_data[?"objects"];
    
	    //sdm("");sdm("LAYER NAME: "+string(_layer_name));sdm("");
    
    
    
    
    
    
    
    
	    // ---------------------------------------------------------------------------
	                 _count_j = ds_list_size(_dl_data);
	    for(_j=0; _j<_count_j; _j++) // each tile or obj of this layer
	    {
	        _owrc_printed = false;
        
	        _str_j = hex_str(_j);
        
	        if (_layer_type=="objectgroup")
	        {
	            _dm_obj_data = _dl_data[|_j];
	        }
        
        
        
	        if (_layer_type=="tilelayer")
	        {
	            _ow_clm = _j mod OW_CLMS;
	            _ow_row = _j div OW_CLMS;
	        }
	        else if (_layer_type=="objectgroup")
	        {
	            _ow_clm = _dm_obj_data[?"x"] >>SHIFT;
	            _ow_row = _dm_obj_data[?"y"] >>SHIFT;
            
	            // Tiled issue. Objs with "gid" are +1 y offset. 
	            // Tiled obj y origin point is btm-left of obj instead of top-left.
	            if(!is_undefined(_dm_obj_data[?"gid"])) _ow_row--;
	        }
	        else
	        {
	            _ow_clm = 0;
	            _ow_row = 0;
	        }
        
        
        
	        _ow_clm_ = hex_str(_ow_clm);
	        _ow_row_ = hex_str(_ow_row);
        
	        _owrc  = (_ow_row<<8) | _ow_clm;
	        _owrc_ = hex_str(_owrc);
        
        
        
        
        
        
        
        
	        // _layer_name for AREA example: AREA_WestA_01
	        // Each layer contains 1 or more rectangle objects (var _j) 
	        // that outline the areas for an area.
	        if (string_pos(_STR_AREA,   _layer_name) 
	        && !string_pos("AREA_NAMES",_layer_name) )
	        {
	                _area = string_copy(_layer_name, string_length(_STR_AREA)+1, AreaID_LEN);
	                _idx  = ds_list_find_index(g.dl_AREA_NAME, _area);
	            if (_idx+1)
	            {
	                if(Z)
	                {
	                    if(!_encounterareas_started) repeat($4) sdm("");
	                    repeat($4) sdm("");
                    
	                    sdm("_ow_clm = $"+_ow_clm_+";");
	                    sdm("_ow_row = $"+_ow_row_+";");
	                    //sdm("_ow_clm_ = hex_str(_ow_clm);");
	                    //sdm("_ow_row_ = hex_str(_ow_row);");
	                    repeat($1) sdm("");
	                }
                
	                _clms = _dm_obj_data[?"width"]  >>SHIFT;
	                _rows = _dm_obj_data[?"height"] >>SHIFT;
                
	                // Encounter areas. ---------------------------
	                _str = string_copy(_layer_name, string_length(_layer_name)-1, 2);
	                for(_k=ds_list_size(dl_biome_enc)-1; _k>=0; _k--) // Each biome
	                {   // _dk example:                 '_FIELD'  + '_WestA_' + '02' + '03'
	                                      _dk = dl_biome_enc[|_k] +   _area   + _str + _str_j;
	                             dm_data[?_dk+STR_Clm]  = _ow_clm;
	                             dm_data[?_dk+STR_Row]  = _ow_row;
	                             dm_data[?_dk+STR_Clms] = _clms;
	                             dm_data[?_dk+STR_Rows] = _rows;
	                    if(Z)
	                    {
	                        //sdm("// _dk example:                '_FIELD'  + '_WestA_' +   '02'   +   '03'");
	                        sdm("         _dk = "+"'"+dl_biome_enc[|_k]+"'+'"+_area+"'+'"+_str+"'+'"+_str_j+"';");
	                        sdm("dm_data[?_dk+STR_Clm]  = _ow_clm;");
	                        sdm("dm_data[?_dk+STR_Row]  = _ow_row;");
	                        sdm("dm_data[?_dk+STR_Clms] = $"+hex_str(_clms)+";");
	                        sdm("dm_data[?_dk+STR_Rows] = $"+hex_str(_rows)+";");
	                        repeat($1) sdm("");
	                    }
	                }
	                //if(Z)repeat($2) sdm("");
                
                
	                // Area areas. -------------------------------------------
	                if(0&&Z 
	                && !_encounterareas_started )
	                {        // _val is 2 bytes
	                    sdm("// _val is 2 bytes");
	                         // $(FF)FF: the sub area (Example: West 1: West-North, West 2: West-South)
	                    sdm("// $(FF)FF: the sub area (Example: West 1: West-North, West 2: West-South)");
	                         // $FF(FF): the index of g.dl_area_name
	                    sdm("// $FF(FF): the index of g.dl_area_name");
	                }
                
	                _val = (str_hex(_str)<<8) | _idx;
	                ds_grid_set_region(dg_area, _ow_clm,_ow_row, (_ow_clm+_clms)-1,(_ow_row+_rows)-1, _val);
	                if(Z)
	                {
	                    _str1  = "ds_grid_set_region(dg_area";
	                    _str1 += ", _ow_clm,_ow_row";
	                    _str1 +=", (_ow_clm+$"+hex_str(_clms)+")-1";
	                    _str1 += ",(_ow_row+$"+hex_str(_rows)+")-1";
	                    //_str1 += ", $"+hex_str((_ow_clm+_clms)-1)+",$"+hex_str((_ow_row+_rows)-1);
	                    _str1 += ", $"+hex_str(_val);
	                    _str1 += ");";
	                    _str1 += " // value is 2 bytes. $(FF)FF: the sub area (Example: West 1: West-North, West 2: West-South). $FF(FF): the index of g.dl_area_name";
	                    sdm(_str1);
	                }
                
	                _encounterareas_started = true;
	            }
            
	            continue;//_j
	        }
        
        
        
        
        
        
        
        
        
        
        
        
	             if (_layer_type=="tilelayer")   _dl_prop_data = _dm_layer_data[?"properties"];
	        else if (_layer_type=="objectgroup") _dl_prop_data = _dm_obj_data[?  "properties"];
        
	        if(!is_undefined(_dl_prop_data))
	        {
	            for(_k=ds_list_size(_dl_prop_data)-1; _k>=0; _k--) // each property of the tile layer or obj
	            {
	                _dm_prop_data = _dl_prop_data[|_k];
	                _prop_name    = _dm_prop_data[?"name"];
	                _prop_value   = _dm_prop_data[?"value"];
                
	                _dm_prop_value[?_prop_name] = _prop_value;
                
	                ds_map_clear(_dm_prop_data);
	            }
	        }
        
        
        
        
        
	        if (string_pos(STR_Scene+STR_OWRC,_layer_name))
	        {
	            _data = _dm_prop_value[?STR_RmName];
	            if(!is_undefined(_data))
	            {
	                if(Z 
	                && !_sceneowrc_started )
	                {
	                    repeat($8) sdm("");
	                    sdm("// STR_Scene+STR_OWRC");
	                         // This is an exit obj that's soley here to 
	                    sdm("// This is an exit obj that's soley here to ");
	                         // indicate the owrc of a scene so pause menu 
	                    sdm("// indicate the owrc of a scene so pause menu ");
	                         // map will acurately show the ow position of PC.
	                    sdm("// map will acurately show the ow position of PC.");
                    
	                         // _data Example: "_WestA_FF"
	                    sdm("// _data Example: '_WestA_FF'");
	                         // _data Example: "_WestA_FA,_WestA_F4,_WestA_F3"  (all share same owrc)
	                    sdm("// _data Example: '_WestA_FA,_WestA_F4,_WestA_F3'  (all share same owrc)");
	                }
                
	                if(Z)
	                {
	                    repeat($1) sdm("");
	                    sdm("_owrc = ($"+_ow_row_+"<<8) | $"+_ow_clm_+";");
	                }
                
	                _len1 = RmName_LEN; // g.rm_name length
	                _len2 =_len1+1; // +1 for the comma separation
	                _count = string_count(",",_data) + 1;
	                for(_k=0; _k<_count; _k++)
	                {
	                    _rm_name = string_copy(_data, 1+(_len2*_k), _len1);
	                              g.dm_rm[?   _rm_name   +STR_OWRC] = _owrc;
	                    if(Z)sdm("g.dm_rm[?'"+_rm_name+"'+STR_OWRC] = _owrc;");
	                }
                
	                _sceneowrc_started = true;
	            }
            
	            continue;//_j
	        }
        
        
        
        
        
        
        
	        _info = val(_dm_prop_value[?STR_Info], "");
        
        
        
        
	        if(Z)
	        {
	            if (_layer_name==STR_Raft 
	            && !_raft_started )
	            {
	                repeat($8) sdm("");
	                     // Raft data examples: '0101', '0102'
	                sdm("// Raft data examples: '0101', '0102'");
	                     // Raft tiles are in pairs: (01)01 Set num, 01(01) Member num 1 or 2
	                sdm("// Raft tiles are in pairs: (01)01 Set num, 01(01) Member num 1 or 2");
	                     // Member 1 is always N or W of member 2
	                sdm("// Member 1 is always N or W of member 2");
	                repeat($1) sdm("");
	            }
            
	            if (string_pos(STR_Exit,_layer_name) 
	            && !string_pos("_Hidden_Exits_Help",_layer_name) 
	            && !_exits_started )
	            {
	                repeat($8) sdm("");
	            }
	        }
        
        
        
        
        
	        //if(!_i) sdm("_layer_name: "+_layer_name+", _layer_type: "+_layer_type);
        
	             if (_layer_type=="tilelayer")   _tsrc_raw = _dl_data[|_j];
	        else if (_layer_type=="objectgroup") _tsrc_raw = _dm_obj_data[?"gid"];
        
	            _tsrc = _tsrc_raw;
	        if (_tsrc!=0)
	        {
	            //if (_tile_data&$80000000) _scale_x = -1;
	            //else                      _scale_x =  1;
	            //if (_tile_data&$40000000) _scale_y = -1;
	            //else                      _scale_y =  1;
	            _tsrc--; // Tiled app adds 1 so it can't be 0
	            _tsrc &= $3FFFFFFF; // in case x/y scale is negative
	            _tsrc  = abs(_tsrc);
            
	            _val  = hex_str(_tsrc>>8);
	            _ts   = _dm_ts_info[?_val+_STR_IDX];
	            _name = _dm_ts_info[?_val+_STR_NAME];
            
            
	            //if (_layer_type=="objectgroup") sdm(" ts name: "+_name+", _tsrc_raw "+hex_str(_tsrc_raw)+", info "+_info);
            
	            _tsrc &= $FF;
            
	            if (string_pos("CHANGE",_layer_name))
	            {
	                if (string_pos("BOOTS01",_layer_name))
	                {
	                    _idx=ds_grid_width( dg_ChangeTiles_Boots);
	                    ds_grid_resize(dg_ChangeTiles_Boots, _idx+1, ds_grid_height(dg_ChangeTiles_Boots));
                    
	                        _val = $00;
	                        _str = "SOLID_";
	                        _pos = string_pos(_str,_layer_name);
	                    if (_pos)
	                    {   _val = str_hex(string_copy(_layer_name, _pos+string_length(_str), 2));  }
                    
	                    dg_ChangeTiles_Boots[#_idx,0] = _owrc;
	                    dg_ChangeTiles_Boots[#_idx,1] = _val;   // solid bits
	                    dg_ChangeTiles_Boots[#_idx,2] = _tsrc;
	                    dg_ChangeTiles_Boots[#_idx,3] = _ts;
	                    continue;//_j
	                }
	            }
	            else
	            {
	                if (string_pos("tile_marker",_name) 
	                && !string_pos("AREA_NAMES",_layer_name) 
	                && !string_pos("_Hidden_Exits_Help",_layer_name) 
	                &&  _tsrc&$80 )
	                {
	                    _tsrc = -1;
	                }
	            }
            
            
            
	            if (_tsrc==$FF) // $FF is a marker image
	            {
	                _tsrc = -1;
	            }
            
            
	            _tsrc++;
	        }
        
        
        
        
        
        
        
        
	        if (_tsrc!=0)
	        {
	            _tsrc--;
            
            
	            if (Z 
	            &&  _layer_name==STR_Monster 
	            && !_RiverDevil_started )
	            {
	                repeat($8) sdm("");
	            }
            
            
	            if (string_pos("_Hidden_Exits_Help",_layer_name))
	            {
	                _idx = ds_grid_width(dg_hidden_exits_help);
	                ds_grid_resize(dg_hidden_exits_help, _idx+1, ds_grid_height(dg_hidden_exits_help));
	                dg_hidden_exits_help[#_idx,0] = _ow_clm;
	                dg_hidden_exits_help[#_idx,1] = _ow_row;
	                _dg_hidden_exits_help_started = true;
	                continue;//_j
	            }
            
            
	            if (string_pos("AREA_NAMES",_layer_name))
	            {
	                _tsrc &= $FF;
	                _idx   = _tsrc-$A0;
	                _name  = _dl_AreaNames[|_idx];
	                dg_AreaNames[#_ow_clm,_ow_row] = _name;
	                _dg_AreaNames_started = true;
	                continue;//_j
	            }
            
            
            
	            if (_layer_name==STR_Solid)
	            {
	                dg_solid_def[#_ow_clm,_ow_row] = _tsrc&$FF;
	                _solid_started = true;
	                continue;//_j
	            }
            
            
            
	            if (string_pos(STR_BG,_layer_name)) // Should be the 1st, and only, obj of 1st layer
	            {
	                _tsrc0 = _tsrc;
	                          ds_grid_clear(dg_tsrc_def,           _tsrc0);
	                if(Z)repeat($2) sdm("");
	                if(Z)sdm("ds_grid_clear(dg_tsrc_def,$"+hex_str(_tsrc0)+");");
	                break;//_j
	            }
            
            
            
	            switch(_layer_name)
	            {
	                case STR_Boulder:{
	                dm_data[?_owrc_+STR_TSRC+STR_Under+STR_Boulder]     = dg_tsrc_def[#_ow_clm,_ow_row];
                
	                _idx = ds_grid_width(_dg_tsrcub);
	                ds_grid_resize(_dg_tsrcub, _idx+1, ds_grid_height(_dg_tsrcub));
	                _dg_tsrcub[#_idx,0] = _owrc;
	                _dg_tsrcub[#_idx,1] = dg_tsrc_def[#_ow_clm,_ow_row];
	                break;}
                
	                case STR_Monster:{
	                dm_data[?_owrc_+STR_TSRC+STR_Under+STR_River_Devil] = dg_tsrc_def[#_ow_clm,_ow_row];
	                _RiverDevil_started = true;
	                break;}
	            }//switch(_layer_name)
            
            
	            if (_layer_name==STR_Boulder)
	            {
	                _idx = ds_grid_width(dg_boulders);
	                ds_grid_resize(dg_boulders, _idx+1, ds_grid_height(dg_boulders));
	                dg_boulders[#_idx,0] = _owrc;
	                dg_boulders[#_idx,1] = 1; // boulder state
	                dg_boulders[#_idx,2] = dg_tsrc_def[#_ow_clm,_ow_row]; // tsrc under boulder
	            }
            
            
	            dg_tsrc_def[#_ow_clm,_ow_row] = _tsrc;
	        }
        
        
        
        
        
        
        
        
        
        
	        if (_layer_type=="objectgroup")
	        {   // Allows an object to set what solid value it needs.
	            // An example is a cave exit which sits on top of a 
	            // solid mountain tile, needs to set the solid value to 0.
	            _Solid = _dm_prop_value[?STR_Solid];
	            if(!is_undefined(_Solid))
	            {   // property value should be 0 or one of the OST_XXXXXX values
	                dg_solid_def[#_ow_clm,_ow_row] = _Solid;
	            }
	        }
	        // -------------------------------------------------------------------
        
        
        
	        if (_layer_name==STR_Boulder)
	        {
	            if (g.Rando_RauruRiverDevil 
	            &&  string_pos(STR_Rauru+STR_Boulder,_info) )
	            {
	                dm_data[?STR_Rando+STR_River_Devil+STR_OWRC] = _owrc;
	                dm_data[?STR_Rando+STR_River_Devil+STR_TSRC] = $D8;
	                //dm_data[?_owrc_+STR_River_Devil+STR_State]   = 1;
	                dm_data[?_owrc_+STR_TSRC+STR_Under+STR_River_Devil] = TSRC_PATH02;
	            }
	        }
	        else if (_layer_name==STR_Monster)
	        {
	            if (string_pos(STR_River_Devil,_info))
	            {   // _info example: '0001_River_Devil'
	                _str = string_copy(_info,3,2); // + "01"
	                dm_data[?_owrc_+STR_River_Devil+STR_State] = 1;
	                dm_data[?STR_OWRC+STR_River_Devil+_str] = _owrc;
	                dm_data[?_owrc_+STR_River_Devil] = str_hex(_str);
	            }
	        }
	        else if (string_pos(STR_Raft,_layer_name))
	        {
	            if(Z 
	            && !_owrc_printed )
	            {
	                _owrc_printed = true;
	                sdm("_owrc  = ($"+_ow_row_+"<<8) | $"+_ow_clm_+";");
	                sdm("_owrc_ = hex_str(_owrc);");
	                //repeat($1) sdm("");
	            }
            
	            _prop_value = str_hex(_dm_prop_value[?STR_Raft]);
            
	                      dm_data[?_owrc_+STR_Raft] =            _prop_value;
	            if(Z)sdm("dm_data[?_owrc_+STR_Raft] = $"+hex_str(_prop_value)+";");
            
	                      dm_data[?STR_Raft   +hex_str(_prop_value)   +STR_OWRC] = _owrc;
	            if(Z)sdm("dm_data[?STR_Raft+'"+hex_str(_prop_value)+"'+STR_OWRC] = _owrc;");
	            if(Z)repeat($1) sdm("");
            
	            _raft_started = true;
	        }
	        else if (string_pos(STR_Exit,_layer_name) && !string_pos("_Hidden_Exits_Help",_layer_name))
	        {
	            _Open     = _dm_prop_value[?STR_Open];
	            _CutScene = _dm_prop_value[?STR_CutScene];
	            _RmName   = _dm_prop_value[?STR_RmName];
	            _AccessRm = _dm_prop_value[?STR_AccessRm];
	            _AccessOw = _dm_prop_value[?STR_AccessOw];
	            //sdm("");sdm("LAYER NAME: "+_layer_name+",  _RmName: "+val(_RmName,STR_undefined)+",  _AccessRm: "+val(_AccessRm,STR_undefined)+",  _AccessOw: "+val(_AccessOw,STR_undefined));sdm("");
	            if (is_undefined(_Open))     _Open     = 0;
	            if (is_undefined(_CutScene)) _CutScene = 0;
            
	            if(!is_undefined(_RmName) 
	            && !is_undefined(_AccessRm) 
	            && !is_undefined(_AccessOw) )
	            {   // _AccessRm raw data example: "20 10 20 10"
	                _AccessRm = string_lettersdigits(_AccessRm);
	                _AccessOw_len = string_length(_AccessOw);
                
	                // _AccessRm is either "0" or 4 byte string data.
	                // "0" means there's a rm exit that needs to know where 
	                // to put the PC in the overworld, but there's no 
	                // overworld exit that goes to that rm exit
	                if (_AccessRm!="0")
	                {
	                    if(Z 
	                    && !_owrc_printed )
	                    {
	                        _owrc_printed = true;
	                        repeat($2) sdm("");
	                        sdm("_owrc  = ($"+_ow_row_+"<<8) | $"+_ow_clm_+";");
	                        sdm("_owrc_ = hex_str(_owrc);");
	                    }
                    
	                              dm_data[?_owrc_+STR_Open]             =            _Open;
	                    if(Z)sdm("dm_data[?_owrc_+STR_Open]             = $"+hex_str(_Open)+";");
	                              dm_data[?_owrc_+STR_Open+STR_Default] =            _Open;
	                    if(Z)sdm("dm_data[?_owrc_+STR_Open+STR_Default] = $"+hex_str(_Open)+";");
                    
	                    // _CutScene example: '_Fall_04'
	                              dm_data[?_owrc_+STR_CutScene]            = _CutScene;
	                    if(Z)sdm("dm_data[?_owrc_+STR_CutScene] = '"+hex_str(_CutScene)+"';");
	                    //          dm_data[?_owrc_+STR_CutScene+STR_Default] = _CutScene;
	                    //if(Z)sdm("dm_data[?_owrc_+STR_CutScene+STR_Default] = '"+hex_str(_CutScene)+"';");
                    
	                              dm_data[?_owrc_+STR_RmName]   =    _RmName;
	                    if(Z)sdm("dm_data[?_owrc_+STR_RmName]   = '"+_RmName+"';");
	                    //          dm_data[?_owrc_+STR_RmName+STR_Default] =    _RmName;
	                    //if(Z)sdm("dm_data[?_owrc_+STR_RmName+STR_Default] = '"+_RmName+"';");
                    
	                              dm_data[?_owrc_+STR_AccessRm] =    _AccessRm;
	                    if(Z)sdm("dm_data[?_owrc_+STR_AccessRm] = '"+_AccessRm+"';");
	                    //          dm_data[?_owrc_+STR_AccessRm+STR_Default] =    _AccessRm;
	                    //if(Z)sdm("dm_data[?_owrc_+STR_AccessRm+STR_Default] = '"+_AccessRm+"';");
                    
                    
	                    if (string_pos(STR_Special+STR_Encounter,_info))
	                    {
	                                  dm_data[?_owrc_+STR_Special+STR_Encounter] =    _RmName;
	                        if(Z)sdm("dm_data[?_owrc_+STR_Special+STR_Encounter] = '"+_RmName+"';");
	                    }
                    
                    
	                    if (string_pos(dk_NO_ENCOUNTER,_info))
	                    {
	                                  dm_data[?_owrc_+dk_NO_ENCOUNTER] = 1;
	                        if(Z)sdm("dm_data[?_owrc_+dk_NO_ENCOUNTER] = 1; // dk_NO_ENCOUNTER:  Can't use encounter skip exploit for this exit");
	                    }
                    
                    
	                    if(Z 
	                    && !_exits_started )
	                    {
	                        sdm("");
	                             //          _move_dir   1      2      4      8
	                        sdm("//          _move_dir   1      2      4      8");
	                             // _AccessRm Example: "20" + "10" + "20" + "10"
	                        sdm("// _AccessRm Example: '20' + '10' + '20' + '10'");
	                    }
                    
	                    for(_k=(string_length(_AccessRm)>>1)-1; _k>=0; _k--)
	                    {
	                            _exit_num = string_copy(_AccessRm, (_k<<1)+1, 2);
	                        if (_exit_num!="FF")
	                        {
	                            _exit_name = _RmName+_exit_num; // rm exit name
	                            _datakey = hex_str($1<<_k); // pc overworld movement direction
	                                      dm_data[?_owrc_   +_datakey   +STR_Exit] =    _exit_name;    // goto rm exit
	                            if(Z)sdm("dm_data[?_owrc_+'"+_datakey+"'+STR_Exit] = '"+_exit_name+"'; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'");
	                            /*
	                            _num = val(g.dm_rm[?_exit_name+STR_Overworld+STR_Exit+STR_Datakey+STR_Count]) + 1;
	                            g.dm_rm[?_exit_name+STR_Overworld+STR_Exit+STR_Datakey+STR_Count] = _num;
	                            g.dm_rm[?_exit_name+STR_Overworld+STR_Exit+STR_Datakey+hex_str(_num)] = _dk;
	                            //g.dm_rm[?_exit_name+STR_Overworld+STR_Exit+STR_Datakey+STR_Count] = _dk;
	                            //g.dm_rm[?_exit_name+STR_OWRC] = owrc;
	                            */
	                        }
	                    }
	                    //if(Z)repeat($1) sdm("");
	                }
                
                
	                var _DEBUG1 = 0 && DEV && _RmName=="_WestA_01";
	                if (_DEBUG1){
	                    _db_str  = "owrc $"+_owrc_+", row $"+_ow_row_+" clm $"+_ow_clm_+".  ";
	                    _db_str += "_AccessOw \""+_AccessOw+"\"";
	                    sdm(_RmName+":  "+_db_str);
	                }
                
                
	                // _AccessOw Example: "20-01+00_8, " + "10+01+00_4, " (Do not input " char in Tiled prop field)
	                if (_AccessOw_len)
	                {
	                    //if(Z)repeat($1) sdm("");
	                    if(Z 
	                    && !_owrc_printed )
	                    {
	                        _owrc_printed = true;
	                        repeat($2) sdm("");
	                        sdm("_owrc  = ($"+_ow_row_+"<<8) | $"+_ow_clm_+";");
	                        sdm("_owrc_ = hex_str(_owrc);");
	                    }
                    
	                    _pos   = string_pos(",",_AccessOw);
	                    _len   = _pos+1; // bc of space after comma
	                    _count = _AccessOw_len div _len;
	                    for(_k=_count-1; _k>=0; _k--) // each set of data representing an exit
	                    {
	                        _str = string_copy(_AccessOw, (_k*_len)+1, _len); // one set. "20-01+00_8, "
                        
	                        _exit_num  = string_copy(_str,1,2); // "(20)-01+00_8, "
	                        _exit_name = _RmName+_exit_num; // rm exit name
                        
                        
	                        // _roff & _coff: Row off, Clm off
	                        _roff = str_hex(string_copy(_str,4,2)) * sign_(string_char_at(_str,3)=="+"); // "20(-01)+00_8, "
	                        _coff = str_hex(string_copy(_str,7,2)) * sign_(string_char_at(_str,6)=="+"); // "20-01(+00)_8, "
	                        _val  = ((_ow_row+_roff)<<8) | (_ow_clm+_coff);
                        
	                        if (is_undefined(g.dm_rm[?_RmName+STR_OWRC]))
	                        {
	                                      g.dm_rm[?   _RmName   +STR_OWRC]        = _owrc; // scene owrc
	                            if(Z)sdm("g.dm_rm[?'"+_RmName+"'+STR_OWRC]        = _owrc; // scene owrc");
	                        }
                        
	                                  g.dm_rm[?   _exit_name   +STR_OWRC]      =            _val   ; // goto owrc
	                        if(Z)sdm("g.dm_rm[?'"+_exit_name+"'+STR_OWRC]      = $"+hex_str(_val)+"; // goto owrc");
                        
	                                  g.dm_rm[?   _exit_name   +STR_ow_dir]    =            str_hex(string_char_at(_str,_pos-1))   ; // goto ow facing dir
	                        if(Z)sdm("g.dm_rm[?'"+_exit_name+"'+STR_ow_dir]    = $"+hex_str(str_hex(string_char_at(_str,_pos-1)))+"; // goto ow facing dir");
                        
	                                  g.dm_rm[?   _exit_name   +STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	                        if(Z)sdm("g.dm_rm[?'"+_exit_name+"'+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit");
                        
                        
	                        if (_DEBUG1){ _db_str  = _str+": "+" goto owrc $"+hex_str(_val)+", ";
	                            _db_str += "roff "+string(_roff)+" coff "+string(_coff)+", ";
	                            _db_str += "goto row:$"+hex_str((_ow_row+_roff)<<8)+" goto clm:$"+hex_str(_ow_clm+_coff)+" ";
	                            sdm(_db_str);
	                        }
	                    }
	                    //if(Z)repeat($1) sdm("");
	                }
                
                
                
                
	                if (string_length(       _info) 
	                &&  string_pos(STR_Rando,_info) )
	                {
	                    dm_data[?STR_Rando+STR_Exit+STR_Count] = val(dm_data[?STR_Rando+STR_Exit+STR_Count])+1;
	                    _num                                   = val(dm_data[?STR_Rando+STR_Exit+STR_Count]);
	                    dm_data[?STR_Rando+STR_Exit+hex_str(_num)+STR_OWRC] = _owrc;
	                    dm_data[?_owrc_+STR_Rando+STR_Exit+STR_Num] = _num;
	                }
	            }
            
            
	            _exits_started = true;
	        }
        
        
        
        
	        // -------------------------------------------------------------------
	        // _info Example: "0001_Palace_Three_Eye_Rock", "0001_Town_New_Kasuto", "0001_Fast_Travel_03", "0001_Palace_North_Palace"
	        if (string_length(_info))
	        {
	            //if(Z)repeat($2) sdm("");
            
	            _str = STR_Fast+STR_Travel;
	            if (string_pos(_str,_info))
	            {
	                if(Z 
	                && !_owrc_printed )
	                {
	                    _owrc_printed = true;
	                    //repeat($1) sdm("");
	                    sdm("_owrc  = ($"+_ow_row_+"<<8) | $"+_ow_clm_+";");
	                    sdm("_owrc_ = hex_str(_owrc);");
	                }
                
	                _pos = string_pos(_str,_info) + string_length(_str);
	                _datakey = strR(_info,_pos);
                
	                // _datakey example: "_OWRC_Fast_Travel_03"
	                          dm_data[?STR_OWRC   +_datakey]    = _owrc;
	                if(Z)sdm("dm_data[?STR_OWRC+'"+_datakey+"'] = _owrc; // datakey example: '_OWRC_Fast_Travel_03'");
	            }
	            else
	            {
	                _str1 = STR_Boulder+STR_Circle;
	                _str2 = STR_Forest+STR_Hammer;
	                     if (string_pos(STR_Town,  _info)) _str = STR_Town;
	                else if (string_pos(STR_Palace,_info)) _str = STR_Palace;
	                else if (string_pos(_str2,     _info)) _str = _str2;
	                else if (string_pos(_str1,     _info)) _str = _str1;
	                else                                   _str = 0;
                
	                if (is_string(_str))
	                {
	                    if (_str==_str1) // STR_Boulder+STR_Circle
	                    {   // example: _Boulder_Circle_02_NORTH_EAST
	                        _datakey = string_copy(_info, 1, string_length(_str1)+3); // "_Boulder_Circle_02"
	                        _datakey = STR_OWRC+_datakey; // "_OWRC_Boulder_Circle_02"
	                        _pos     = str_hex(string_copy(_info, string_length(_str1)+2, 2));
	                        dl_BoulderCircle_OWRC[|_pos-1] = _owrc;
	                        if (_pos==1) BoulderCircle_center_OWRC = _owrc+$0300;
	                    }
	                    else if (_str==_str2) // STR_Forest+STR_Hammer
	                    {
	                        if(Z 
	                        && !_owrc_printed )
	                        {
	                            _owrc_printed = true;
	                            //repeat($1) sdm("");
	                            sdm("_owrc  = ($"+_ow_row_+"<<8) | $"+_ow_clm_+";");
	                            sdm("_owrc_ = hex_str(_owrc);");
	                        }
                        
	                        // _info example: '_Forest_Hammer_0101'
	                                  dm_data[?   _str2   +_owrc_] =    _info;
	                        if(Z)sdm("dm_data[?'"+_str2+"'+_owrc_] = '"+_info+"'; // info example: '_Forest_Hammer_0101'");
	                        _datakey = STR_OWRC+_info;
	                    }
	                    else // STR_Town, STR_Palace
	                    {   // Note: The datakeys have been macro'd. Example: MK_OWRC_TWN_RAUR1, MK_OWRC_PAL_PRPA1
	                        _datakey  = STR_OWRC;
	                        _pos      = string_pos(_str,_info)+string_length(_str);
	                        _datakey += strR(_info,_pos);
	                        _datakey += string_copy(_info,3,2);
	                    }
                    
	                    //sdm("owrc datakey: "+_datakey);
	                    // _datakey example: '_OWRC_Parapa_Palace01', STR_OWRC + STR_New_Kasuto + '01'
	                    dm_data[?_datakey] = _owrc;
                    
	                    if (Z 
	                    &&  _str!=_str1 ) // if not Boulder Circle. Because Boulder Circle is taken care of below
	                    {
	                        if(!_owrc_printed)
	                        {
	                            _owrc_printed = true;
	                            //repeat($1) sdm("");
	                            sdm("_owrc  = ($"+_ow_row_+"<<8) | $"+_ow_clm_+";");
	                            sdm("_owrc_ = hex_str(_owrc);");
	                        }
                        
	                        sdm("dm_data[?'"+_datakey+"'] = _owrc; // datakey example: '_OWRC_Parapa_Palace01'");
	                    }
	                }
	            }
	            //if(Z)repeat($2) sdm("");
	        }//if (string_length(_info))
	        // -------------------------------------------------------------------
        
        
	        ds_map_clear(_dm_prop_value);
        
	    }//for(_j=0; _j<_count_j; _j++) // each tile or obj of this layer
	}//for(_i=0; _i<_layer_count; _i++) // each layer

	/*
	_owrc  = ($5B<<8) | $3F;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $00;
	dm_data[?_owrc_+STR_Open+STR_Default] = $00;
	dm_data[?_owrc_+STR_CutScene] = '0';
	dm_data[?_owrc_+STR_RmName]   = '_WestA_00';
	dm_data[?_owrc_+STR_AccessRm] = '00000000';
	dm_data[?_owrc_+'08'+STR_Exit] = '_WestA_0000'; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+'04'+STR_Exit] = '_WestA_0000'; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+'02'+STR_Exit] = '_WestA_0000'; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+'01'+STR_Exit] = '_WestA_0000'; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?'_WestA_00'+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?'_WestA_0000'+STR_OWRC]      = $5B3F; // goto owrc
	g.dm_rm[?'_WestA_0000'+STR_ow_dir]    = $0F; // goto ow facing dir
	g.dm_rm[?'_WestA_0000'+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	dm_data[?'_OWRC_North_Palace01'] = _owrc;
	*/










	//chr(34)
	if(Z)
	{
	    repeat($C) sdm("");
	    _count1 = ds_grid_width( dg_tsrc_def);
	    _count2 = ds_grid_height(dg_tsrc_def);
	    sdm("_count1 = $"+hex_str(_count1)+";");
	    sdm("_count2 = $"+hex_str(_count2)+";");
	    sdm("ds_grid_resize(dg_tsrc_def, _count1,_count2);");
	    sdm("ds_grid_clear( dg_tsrc_def, $"+hex_str(_tsrc0)+");");
	    sdm("ds_grid_copy(dg_tsrc,dg_tsrc_def);");
	    repeat($1) sdm("");
	    sdm("ds_list_clear(_dl1);");
	    for(_j=0; _j<_count2; _j++) // Each row of tiles
	    {
	        if!(_j&$F) sdm("// ROWS $"+hex_str(_j)+"-$"+hex_str(_j+$F));
	        _str1 = "'";
	        for(_i=0; _i<_count1; _i++) // Each clm of tiles
	        {
	            _tsrc = dg_tsrc_def[#_i,_j];
	            if (_i)
	            {
	                if!(_i&$7) _str1 += "'";
	                if!(_i&$F) _str1 += " ";
	                if!(_i&$7) _str1 += "+";
	                if!(_i&$F) _str1 += " ";
	                if!(_i&$7) _str1 += "'";
	            }
	            _str1 += hex_str(_tsrc);
	        }
	        _str1 += "'";
	        sdm("ds_list_add(_dl1,"+_str1+");");
	    }
	    repeat($1) sdm("");
    
	    repeat($1) sdm("");
	    sdm("for(_j=0; _j<_count2; _j++) // Each row of tiles");
	    sdm("{");
	    sdm("    _str1 = _dl1[|_j];");
	    sdm("    for(_i=0; _i<_count1; _i++) // Each clm of tiles");
	    sdm("    {");
	    sdm("        _str2 = string_copy(_str1,(_i<<1)+1,2);");
	    sdm("        dg_tsrc_def[#_i,_j] = str_hex(_str2);");
	    sdm("    }");//_i. clms
	    sdm("}");//_j. rows
	    repeat($4) sdm("");
    
    
    
    
	    repeat($8) sdm("");
	    _count1 = ds_grid_width( dg_solid_def);
	    _count2 = ds_grid_height(dg_solid_def);
	    sdm("_count1 = $"+hex_str(_count1)+";");
	    sdm("_count2 = $"+hex_str(_count2)+";");
	    sdm("ds_grid_resize(dg_solid_def, _count1,_count2);");
	    sdm("ds_grid_clear( dg_solid_def,0);");
	    sdm("ds_grid_copy(dg_solid,dg_solid_def);");
	    repeat($1) sdm("");
	    sdm("ds_list_clear(_dl1);");
	    for(_j=0; _j<_count2; _j++) // Each row of tiles
	    {
	        if!(_j&$F) sdm("// ROWS $"+hex_str(_j)+"-$"+hex_str(_j+$F));
	        _str1 = "'";
	        for(_i=0; _i<_count1; _i++) // Each clm of tiles
	        {
	            _val = dg_solid_def[#_i,_j];
	            if (_i)
	            {
	                if!(_i&$7) _str1 += "'";
	                if!(_i&$F) _str1 += " ";
	                if!(_i&$7) _str1 += "+";
	                if!(_i&$F) _str1 += " ";
	                if!(_i&$7) _str1 += "'";
	            }
	            _str1 += hex_str(_val);
	        }
	        _str1 += "'";
	        sdm("ds_list_add(_dl1,"+_str1+");");
	    }
	    repeat($1) sdm("");
    
	    repeat($1) sdm("");
	    sdm("for(_j=0; _j<_count2; _j++) // Each row of tiles");
	    sdm("{");
	    sdm("    _str1 = _dl1[|_j];");
	    sdm("    for(_i=0; _i<_count1; _i++) // Each clm of tiles");
	    sdm("    {");
	    sdm("        _str2 = string_copy(_str1,(_i<<1)+1,2);");
	    sdm("        dg_solid_def[#_i,_j] = str_hex(_str2);");
	    sdm("    }");//_i. clms
	    sdm("}");//_j. rows
	    repeat($4) sdm("");
    
    
    
    
	    repeat($8) sdm("");
	    _count1 = ds_grid_width( dg_AreaNames);
	    _count2 = ds_grid_height(dg_AreaNames);
	    sdm("_count1 = $"+hex_str(_count1)+";");
	    sdm("_count2 = $"+hex_str(_count2)+";");
	    sdm("ds_grid_resize(dg_AreaNames, _count1,_count2);");
	    sdm("ds_grid_clear( dg_AreaNames,MapAreaName_DEF);");
	    repeat($1) sdm("");
	    sdm("ds_list_clear(_dl1);");
	    for(_j=0; _j<_count2; _j++) // Each row of tiles
	    {
	        if!(_j&$F) sdm("// ROWS $"+hex_str(_j)+"-$"+hex_str(_j+$F));
	        _str1 = "'";
	        for(_i=0; _i<_count1; _i++) // Each clm of tiles
	        {
	            _val = dg_AreaNames[#_i,_j];
	            if (_val==MapAreaName_DEF) _idx = $FF;
	            else                       _idx = ds_list_find_index(_dl_AreaNames,_val);
	            if (_idx==-1)              _idx = $FF;
            
	            if (_i)
	            {
	                if!(_i&$7) _str1 += "'";
	                if!(_i&$F) _str1 += " ";
	                if!(_i&$7) _str1 += "+";
	                if!(_i&$F) _str1 += " ";
	                if!(_i&$7) _str1 += "'";
	            }
	            _str1 += hex_str(_idx);
	        }
	        _str1 += "'";
	        sdm("ds_list_add(_dl1,"+_str1+");");
	    }
	    repeat($1) sdm("");
    
	    repeat($1) sdm("");
	    sdm("for(_j=0; _j<_count2; _j++) // Each row of tiles");
	    sdm("{");
	    sdm("    _str1 = _dl1[|_j];");
	    sdm("    for(_i=0; _i<_count1; _i++) // Each clm of tiles");
	    sdm("    {");
	    sdm("        _str2 = string_copy(_str1,(_i<<1)+1,2);");
	    sdm("        _idx = str_hex(_str2);");
	    sdm("        if (_idx==$FF) continue;//_i. $FF represents MapAreaName_DEF");
	    sdm("        dg_AreaNames[#_i,_j] = _dl_AreaNames[|_idx];");
	    sdm("    }");//_i. clms
	    sdm("}");//_j. rows
	    repeat($4) sdm("");
    
    
    
    
    
    
	    _count1 = ds_grid_width( dg_hidden_exits_help);
	    _count2 = ds_grid_height(dg_hidden_exits_help);
	    repeat($8) sdm("");
	    sdm("ds_grid_resize(dg_hidden_exits_help, $"+hex_str(_count1)+",$"+hex_str(_count2)+");");
	    sdm("ds_grid_clear (dg_hidden_exits_help, 0);");
	    repeat($1) sdm("");
	    for(_i=0; _i<_count1; _i++)
	    {
	        _values_were_set = false;
        
	        for(_j=0; _j<_count2; _j++)
	        {
	            if (_i && !(_i&$F) && !_j) repeat($3) sdm("");
	            _val = dg_hidden_exits_help[#_i,_j];
	            sdm("dg_hidden_exits_help[#$"+hex_str(_i)+",$"+hex_str(_j)+"] = $"+hex_str(_val)+";");
	            _values_were_set = true;
	        }
	        if (_values_were_set) repeat($1) sdm("");
	    }
    
    
    
    
    
    
	    _count1 = ds_grid_width( dg_boulders);
	    _count2 = ds_grid_height(dg_boulders);
	    repeat($8) sdm("");
	    sdm("ds_grid_resize(dg_boulders, $"+hex_str(_count1)+",$"+hex_str(_count2)+");");
	    repeat($1) sdm("");
	    for(_i=0; _i<_count1; _i++)
	    {
	        _values_were_set = false;
        
	        for(_j=0; _j<3; _j++)
	        {
	            if (_i && !(_i&$F) && !_j) repeat($3) sdm("");
	            _val = dg_boulders[#_i,_j];
	            sdm("dg_boulders[#$"+hex_str(_i)+",$"+hex_str(_j)+"] = $"+hex_str(_val)+";");
	            //dg_boulders[#_i,0] = _owrc;
	            //dg_boulders[#_i,1] = 1; // boulder state
	            //dg_boulders[#_i,2] = dg_tsrc_def[#_ow_clm,_ow_row]; // tsrc under boulder
	            _values_were_set = true;
	        }
	        if (_values_were_set) repeat($1) sdm("");
	    }
    
    
	    repeat($8) sdm("");
	    sdm("BoulderCircle_center_OWRC = $"+hex_str(BoulderCircle_center_OWRC)+";");
	    repeat($1) sdm("");
	    _count1 = ds_list_size(dl_BoulderCircle_OWRC);
	    for(_i=0; _i<_count1; _i++)
	    {
	        _values_were_set = false;
        
	        if (_i && !(_i&$F)) repeat($1) sdm("");
	        _owrc = dl_BoulderCircle_OWRC[|_i];
	        sdm("dl_BoulderCircle_OWRC[|$"+hex_str(_i)+"]         = $"+hex_str(_owrc)+";");
        
	        _datakey = STR_OWRC+STR_Boulder+STR_Circle+"_"+hex_str(_i+1);
	        _owrc = dm_data[?_datakey];
	        if(!is_undefined(_owrc)) sdm("dm_data[?'"+_datakey+"'] = $"+hex_str(_owrc)+"; // datakey example: _OWRC_Boulder_Circle_03");
	        repeat($1) sdm("");
	    }
    
    
	    // tsrcub: tsrc under boulder
	    repeat($8) sdm("");
	    _count1 = ds_grid_width( _dg_tsrcub);
	    _count2 = ds_grid_height(_dg_tsrcub);
	    for(_i=0; _i<_count1; _i++)
	    {
	        _values_were_set = false;
        
	        if (_i && !(_i&$F)) repeat($1) sdm("");
	        _owrc = _dg_tsrcub[#_i,0];
	        _tsrc = _dg_tsrcub[#_i,1];
	        sdm("dm_data[?'"+hex_str(_owrc)+"'+STR_TSRC+STR_Under+STR_Boulder] = $"+hex_str(_tsrc)+";");
	        _values_were_set = true;
	    }
	    ds_grid_destroy(_dg_tsrcub); _dg_tsrcub=undefined;
    
    
    
    
    
    
	    repeat($C) sdm("");
	    _count1 = ds_grid_width( dg_ChangeTiles_Boots);
	    _count2 = ds_grid_height(dg_ChangeTiles_Boots);
	    sdm("_count1 = $"+hex_str(_count1)+";");
	    sdm("_count2 = $"+hex_str(_count2)+";");
	    sdm("ds_grid_resize(dg_ChangeTiles_Boots, _count1,_count2);");
	    repeat($1) sdm("");
	    // Solid val, tsrc, and ts are mostly, if not all, the same.
	    sdm("for(_i=0; _i<_count1; _i++)");
	    sdm("{");
	    sdm("    dg_ChangeTiles_Boots[#_i,1] = $00;"); // solid bits
	    sdm("    dg_ChangeTiles_Boots[#_i,2] = $00;"); // tsrc
	    sdm("    dg_ChangeTiles_Boots[#_i,3] = $26;"); // ts
	    sdm("}");
	    repeat($1) sdm("");
	    for(_i=0; _i<_count1; _i++)
	    {
	        for(_j=0; _j<4; _j++)
	        {
	            if (_i && !(_i&$F) && !_j) repeat($1) sdm("");
	            _val = dg_ChangeTiles_Boots[#_i,_j];
	            if ((_j==1 && _val==$00)   // 1: solid bits
	            ||  (_j==2 && _val==$00)   // 2: tsrc
	            ||  (_j==3 && _val==$26) ) // 3: ts
	            {
	                continue;//_j;
	            }
	            sdm("dg_ChangeTiles_Boots[#$"+hex_str(_i)+",$"+hex_str(_j)+"] = $"+hex_str(_val)+";");
	            //dg_ChangeTiles_Boots[#_i,0] = _owrc;
	            //dg_ChangeTiles_Boots[#_i,1] = _val;   // solid bits
	            //dg_ChangeTiles_Boots[#_i,2] = _tsrc;
	            //dg_ChangeTiles_Boots[#_i,3] = _ts;
	        }
	    }
    
    
    
    
    
    
	    repeat($8) sdm("");
	    for(_i=1; _i<$100; _i++)
	    {
	        _values_were_set = false;
        
	        _owrc = dm_data[?STR_OWRC+STR_River_Devil+hex_str(_i)];
	        if(!is_undefined(_owrc))
	        {
	            sdm("dm_data[?'"+hex_str(_owrc)+"'"+"+STR_River_Devil+STR_State] = 1;");
	            sdm("dm_data[?STR_OWRC+STR_River_Devil+'"+hex_str(_i)+"'] = $"+hex_str(_owrc)+";");
	            sdm("dm_data[?'"+hex_str(_owrc)+"'"+"+STR_River_Devil] = $"+hex_str(_i)+";");
	            sdm("dm_data[?'"+hex_str(_owrc)+"'"+"+STR_TSRC+STR_Under+STR_River_Devil] = $"+hex_str(val(dm_data[?hex_str(_owrc)+STR_TSRC+STR_Under+STR_River_Devil]))+";");
	            _values_were_set = true;
	            if (_values_were_set) repeat($1) sdm("");
	        }
	        else
	        {
	            break;//_i
	        }
	    }
    
    
	    if(!is_undefined(dm_data[?STR_Rando+STR_River_Devil+STR_OWRC]))
	    {
	        _values_were_set = false;
        
	        //repeat($1) sdm("");
	        _owrc = dm_data[?STR_Rando+STR_River_Devil+STR_OWRC];
	        sdm("dm_data[?STR_Rando+STR_River_Devil+STR_OWRC] = $"+hex_str(_owrc)+";");
	        sdm("dm_data[?STR_Rando+STR_River_Devil+STR_TSRC] = $"+hex_str(val(dm_data[?STR_Rando+STR_River_Devil+STR_TSRC]))+";");
	        sdm("dm_data[?'"+hex_str(_owrc)+"'"+"+STR_TSRC+STR_Under+STR_River_Devil] = TSRC_PATH02;");
	        _values_were_set = true;
	    }
    
    
    
    
    
    
	    _count1 = val(dm_data[?STR_Rando+STR_Exit+STR_Count]);
	    if (_count1)
	    {
	        _values_were_set = false;
        
	        repeat($8) sdm("");
	        sdm("dm_data[?STR_Rando+STR_Exit+STR_Count] = $"+hex_str(_count1)+";");
	        for(_i=1; _i<=_count1; _i++)
	        {
	            _values_were_set = false;
            
	            _owrc = dm_data[?STR_Rando+STR_Exit+hex_str(_i)+STR_OWRC];
	            if(!is_undefined(_owrc))
	            {
	                repeat($1) sdm("");
	                sdm("dm_data[?STR_Rando+STR_Exit+'"+hex_str(_i)+"'+STR_OWRC] = $"+hex_str(_owrc)+";");
	                sdm("dm_data[?'"+hex_str(_owrc)+"'+STR_Rando+STR_Exit+STR_Num] = $"+hex_str(_i)+";");
	                _values_were_set = true;
	            }
	        }
	    }
    
    
    
    
    
    
	    repeat($8) sdm("");
	    //sdm("ds_grid_copy(dg_AreaNames_DEF,dg_AreaNames);");
	    sdm("ds_grid_copy(dg_solid,dg_solid_def);");
	    sdm("ds_grid_copy(dg_tsrc,dg_tsrc_def);");
	}











	// -------------------------------------------------------------------
	// -------------------------------------------------------------------
	if (g.anarkhyaOverworld_MAIN)
	{
	    var _ts_idx=0;
    
	    ds_map_clear(_dm_file_data);
    
	    _file_name = "anarkhya_OvrwA_00.json";
	    _file = file_text_open_read("ow_tile_data/"+_file_name);
    
	        _str  = "";
	    while (    !file_text_eof(   _file))
	    {   _str += file_text_readln(_file);  }
	                file_text_close( _file);
	    //
	    _dm_file_data = json_decode(_str);
    
    
    
	    // -------------------------------------------------------------------
	    ds_grid_resize(dg_anarkhya_tsrc_def,    OW_CLMS, OW_ROWS);
	    ds_grid_clear (dg_anarkhya_tsrc_def,    0);
    
	    ds_grid_resize(dg_anarkhya_tsrc,        OW_CLMS, OW_ROWS);
	    ds_grid_clear (dg_anarkhya_tsrc,        0);
    
	    ds_grid_resize(dg_anarkhya_tsrc_detail_def, OW_CLMS, OW_ROWS);
	    ds_grid_clear (dg_anarkhya_tsrc_detail_def, 0);
    
	    ds_grid_resize(dg_anarkhya_tsrc_detail,     OW_CLMS, OW_ROWS);
	    ds_grid_clear (dg_anarkhya_tsrc_detail,     0);
    
    
	    _dl_layer_data = _dm_file_data[?"layers"];
    
    
    
	    var _dl_tsidx = ds_list_create();
    
    
	                 _layer_count = ds_list_size(_dl_layer_data);
	    for(_i=0; _i<_layer_count; _i++) // each layer
	    {
	        _dm_layer_data = _dl_layer_data[|_i];
	        _layer_name    = _dm_layer_data[?"name"];
        
	        _dl_data = _dm_layer_data[?"data"];
        
        
        
	        // ---------------------------------------------------------------------------
	                     _count_j = ds_list_size(_dl_data);
	        for(_j=0; _j<_count_j; _j++) // each tile or obj of this layer
	        {
	            _str_j = hex_str(_j);
	            _ow_clm = _j mod OW_CLMS;
	            _ow_row = _j div OW_CLMS;
	            _owrc = (_ow_row<<8) | _ow_clm;
            
            
            
	                _tile_data = _dl_data[|_j];
	            if (_tile_data!=0)
	            {
	                if (string_pos("BOOTS",_layer_name))
	                {
	                    _idx = ds_grid_width(dg_anarkhya_tsrc_boots);
	                    ds_grid_resize(dg_anarkhya_tsrc_boots, _idx+1, ds_grid_height(dg_anarkhya_tsrc_boots));
	                    dg_anarkhya_tsrc_boots[#_idx,0] = _owrc;
	                    dg_anarkhya_tsrc_boots[#_idx,1] = _tile_data;
	                }
	                else if (string_pos("DETAIL",_layer_name))
	                {
	                    dg_anarkhya_tsrc_detail_def[#_ow_clm,_ow_row] = _tile_data;
	                }
	                else
	                {
	                    dg_anarkhya_tsrc_def[#_ow_clm,_ow_row] = _tile_data;
	                }
	            }
	        }
	    }
    
	    for(_i=ds_grid_width(dg_boulders)-1; _i>=0; _i--)
	    {
	        _owrc = dg_boulders[#_i,0];
	        _clm = (_owrc>>0)&$FF;
	        _row = (_owrc>>8)&$FF;
	        dg_anarkhya_tsrc_detail_def[#_clm,_row] = anarkhya_TSRC_BOULDER;
	    }
    
	    ds_grid_copy(dg_anarkhya_tsrc,        dg_anarkhya_tsrc_def);
	    ds_grid_copy(dg_anarkhya_tsrc_detail, dg_anarkhya_tsrc_detail_def);
    
	    ds_list_destroy(_dl_tsidx); _dl_tsidx=undefined;
	}










	// -------------------------------------------------------------------
	// -------------------------------------------------------------------
	if(!is_undefined(_dm_ts_data))    {ds_map_destroy(_dm_ts_data);     _dm_ts_data=undefined;}
	if(!is_undefined(_dl_ts_data))    {ds_list_destroy(_dl_ts_data);    _dl_ts_data=undefined;}

	if(!is_undefined(_dm_file_data))  {ds_map_destroy(_dm_file_data);   _dm_file_data=undefined;}

	if(!is_undefined(_dl_data))       {ds_list_destroy(_dl_data);       _dl_data=undefined;}
	if(!is_undefined(_dl_layer_data)) {ds_list_destroy(_dl_layer_data); _dl_layer_data=undefined;}

	if(!is_undefined(_dm_layer_data)) {ds_map_destroy(_dm_layer_data);  _dm_layer_data=undefined;}

	if(!is_undefined(_dl_prop_data))  {ds_list_destroy(_dl_prop_data);  _dl_prop_data=undefined;}
	if(!is_undefined(_dm_prop_data))  {ds_map_destroy(_dm_prop_data);   _dm_prop_data=undefined;}

	if(!is_undefined(_dm_obj_data))   {ds_map_destroy(_dm_obj_data);    _dm_obj_data=undefined;}

	if(!is_undefined(_dm_prop_value)) {ds_map_destroy(_dm_prop_value);  _dm_prop_value=undefined;}
	if(!is_undefined(_dm_ts_info))    {ds_map_destroy(_dm_ts_info);     _dm_ts_info=undefined;}

	if(!is_undefined(_dl_AreaNames))  {ds_list_destroy(_dl_AreaNames);  _dl_AreaNames=undefined;}

	ds_list_destroy(_dl_RANDO_TSRC_A); _dl_RANDO_TSRC_A=undefined;
	ds_list_destroy(_dl_RANDO_TSRC_B); _dl_RANDO_TSRC_B=undefined;

	if(Z)sdm("ds_list_destroy(_dl1); _dl1=undefined;");
	//sdm("ds_list_destroy(_dl2); _dl2=undefined;");
	ds_list_destroy(_dl1); _dl1=undefined;
	ds_list_destroy(_dl2); _dl2=undefined;

	if(Z)sdm("ds_list_destroy(_dl_AreaNames); _dl_AreaNames=undefined;");


	if(Z)sdm(""); sdm(""); sdm(""); sdm("");







}
