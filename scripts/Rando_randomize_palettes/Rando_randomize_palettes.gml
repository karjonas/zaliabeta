/// @description  Rando_randomize_palettes()
function Rando_randomize_palettes() {


	//if (DEBUG){sdm(" "); dm_debug_data[?STR_Data+'01'+hex_str(++debug_data_count)]=" ";}

	random_set_seed(Rando_SEED);

	// Dungeons ------------------------------------------------------------------
	var _i,_j, _count;
	var _val,_val1,_val2;
	var _scene_name;
	var _dk;
	var _palette;
	var _pos;
	var _color1,_color2,_color3;
	var _COLORS1  = p.CI_BLK1_+p.CI_GRY4_; // darkest colors
	    _COLORS1 += "0C"+"0B"+"09"+"08"+"02"+"01"; // darkest colors
	var _COLORS2  = p.CI_BLK1_+p.CI_GRY4_;
	    _COLORS2 += "01"+"02"+"03"+"04"+"05"+"06"+"07"+"08"+"09"+"0A"+"0B"+"0C";
	    _COLORS2 +=      "12"+"13"               +"17"+"18"+"19"     +"1B"+"1C";
	//
	var         _dl_DUNGEON_AREAS = ds_list_create();
	ds_list_add(_dl_DUNGEON_AREAS,Area_PalcA); // Parapa Palace
	ds_list_add(_dl_DUNGEON_AREAS,Area_PalcB); // Midoro Palace
	ds_list_add(_dl_DUNGEON_AREAS,Area_PalcC); // Island Palace
	ds_list_add(_dl_DUNGEON_AREAS,Area_PalcD); // Maze Isl Palace
	ds_list_add(_dl_DUNGEON_AREAS,Area_PalcE); // Palace on the Sea
	ds_list_add(_dl_DUNGEON_AREAS,Area_PalcF); // Hidden Palace
	ds_list_add(_dl_DUNGEON_AREAS,Area_PalcG); // Great Palace
	ds_list_add(_dl_DUNGEON_AREAS,Area_PalcH); // Dragmire Tower
	var _dl_DUNGEON_AREAS_COUNT = ds_list_size(_dl_DUNGEON_AREAS);

	var         _dl_DUNGEON_TILESETS = ds_list_create();
	ds_list_add(_dl_DUNGEON_TILESETS,ts_DungeonA01); // Parapa Palace
	ds_list_add(_dl_DUNGEON_TILESETS,ts_DungeonB01); // Midoro Palace
	ds_list_add(_dl_DUNGEON_TILESETS,ts_DungeonC01); // Island Palace
	ds_list_add(_dl_DUNGEON_TILESETS,ts_DungeonD01); // Maze Isl Palace
	ds_list_add(_dl_DUNGEON_TILESETS,ts_DungeonE01); // Palace on the Sea
	ds_list_add(_dl_DUNGEON_TILESETS,ts_DungeonF01); // Hidden Palace
	ds_list_add(_dl_DUNGEON_TILESETS,ts_DungeonG01); // Great Palace
	ds_list_add(_dl_DUNGEON_TILESETS,ts_DungeonH01); // Dragmire Tower


	if (p.USE_ADDITIONAL_COLORS)
	{
	    var _COLORS3="";
	    var _COLORS4="";
	    var _COLORS5="";
	    for(_i=$40; _i<$F0; _i++)
	    {
	        _val=p.dl_COLOR[|_i];
	        if (_val!=p.C_ERR0)
	        {
	            _val=colour_get_value(_val);
	            if (_val<$48) _COLORS5 += hex_str(_i);
	            if (_val<$80) _COLORS4 += hex_str(_i);
	            else          _COLORS3 += hex_str(_i);
	        }
	    }
	}


	//
	var          _dl_pals1=ds_list_create();
	ds_list_copy(_dl_pals1,p.dl_various_pals1);
	var          _dl_pals2=ds_list_create();
	ds_list_copy(_dl_pals2,p.dl_various_pals2);

	for(_i=1; _i<=_dl_DUNGEON_AREAS_COUNT; _i++) // each dungeon
	{
	    // Dungeon primary palette
	    ds_list_shuffle(_dl_pals2);
	    _val2 =         _dl_pals2[|0];
	    ds_list_delete( _dl_pals2, 0);
    
    
	    // Attempting to lower the brightness
	    _color1=string_copy(_val2,3,2); // highlight
	    _color2=string_copy(_val2,5,2); // midtone
	    _color3=string_copy(_val2,7,2); // shadow
    
	    if(!string_pos(_color2,_COLORS2)) // if not an acceptable midtone color
	    {   // Midtone
	        _count  = string_length(_COLORS2)>>1;
	        _pos    = (irandom(_count-1)<<1)+1;
	        _color2 = string_copy(  _COLORS2, _pos, 2);
	    }
    
    
	    // Use darker colors if the tileset for dungeon _i is brighter because it has more highlight color pixels in the graphics
	    _val = _dl_DUNGEON_TILESETS[|_i-1];
	    _val = val(dm_save_data[?STR_Rando+STR_Tileset+background_get_name(_val)], _val);
	    if (_val==ts_DungeonB01   // if dungeon _i will use dungeon 2 tileset
	    ||  _val==ts_DungeonD01 ) // if dungeon _i will use dungeon 4 tileset
	    //if (isVal(_i,2,4)) // if palace 2 or 4
	    {
	        if(!string_pos(_color1,_COLORS2))
	        {   // Highlight
	            _count  = string_length(_COLORS2)>>1;
	            _pos    = (irandom(_count-1)<<1)+1;
	            _color1 = string_copy(  _COLORS2, _pos, 2);
	        }
        
	        if(!string_pos(_color3,_COLORS1))
	        {   // Shadow
	            _count  = string_length(_COLORS1)>>1;
	            _pos    = (irandom(_count-1)<<1)+1;
	            _color3 = string_copy(  _COLORS1, _pos, 2);
	        }
        
	        if(!string_pos(_color1,_COLORS1) 
	        && !string_pos(_color3,_COLORS1) )
	        {   // Make sure at least one of these colors is one of the darkest colors
	            _count  = string_length(_COLORS1)>>1;
	            _pos    = (irandom(_count-1)<<1)+1;
	            if (irandom(1)) _color1 = string_copy(_COLORS1, _pos, 2);
	            else            _color3 = string_copy(_COLORS1, _pos, 2);
	        }
	    }
    
    
	    if(!string_pos(_color3,_COLORS2))
	    {   // Midtone
	        _count  = string_length(_COLORS2)>>1;
	        _pos    = (irandom(_count-1)<<1)+1;
	        _color3 = string_copy(  _COLORS2, _pos, 2);
	    }
    
    
	    if (p.USE_ADDITIONAL_COLORS)
	    {
	        _color1=string_copy(_COLORS3, (irandom((string_length(_COLORS3)>>1)-1)<<1)+1, 2);
	        _color2=string_copy(_COLORS4, (irandom((string_length(_COLORS4)>>1)-1)<<1)+1, 2);
	        _color3=string_copy(_COLORS5, (irandom((string_length(_COLORS4)>>1)-1)<<1)+1, 2);
	    }
    
    
	    _val2  = string_copy(_val2,1,2); // 
	    _val2 += _color1+_color2+_color3;
    
    
    
    
	    // Dungeon secondary palette
	    ds_list_shuffle(_dl_pals1);
	    _val1 =         _dl_pals1[|_val2==_dl_pals1[|0]];
	    ds_list_delete( _dl_pals1, _val2==_dl_pals1[|0]);
    
	    _palette = _val2+_val1;
    
	    //dm_save_data[?STR_Palette+STR_Dungeon+hex_str(_i)] = _palette;
    
	    for(_j=0; _j<$100; _j++) // Each dungeon scene
	    {
	        _scene_name = _dl_DUNGEON_AREAS[|_i-1]+hex_str(_j);
	        //if (_j<8) sdm("_scene_name "+_scene_name);
	        if(!is_undefined(g.dm_rm[?_scene_name+STR_Rm+STR_Num+STR_Game]))
	        {
	            dm_save_data[?STR_Palette+STR_Rando+_scene_name] = _palette;
	            //dm_save_data[?_scene_name+STR_Palette] = _palette;
	            //sdm("_scene_name "+_scene_name+", _palette "+_palette);
	        }
	    }
	    //sdm("");
	}

	ds_list_destroy(_dl_pals1); _dl_pals1=undefined;
	ds_list_destroy(_dl_pals2); _dl_pals2=undefined;



	// PC and Cucco ------------------------------------------------------------------
	var _CHANCE1=$27;
	var _CHANCE2=$01;
	//var _CHANCE3=$03;

	var             _dl_colors=ds_list_create();
	ds_list_copy(   _dl_colors,p.dl_COLORS_USED);
	ds_list_shuffle(_dl_colors);


	var         _dl_TUNIC_CI=ds_list_create(); // acceptable tunic colors
	ds_list_add(_dl_TUNIC_CI, p.CI_WHT2_,p.CI_GRY4_,p.CI_BLK1_)
	ds_list_add(_dl_TUNIC_CI, p.CI_BLU2_,p.CI_BLU3_,p.CI_BLU4_);
	ds_list_add(_dl_TUNIC_CI, p.CI_VLT2_,p.CI_VLT3_,p.CI_VLT4_);
	ds_list_add(_dl_TUNIC_CI, p.CI_PUR2_,p.CI_PUR3_,p.CI_PUR4_);
	ds_list_add(_dl_TUNIC_CI, p.CI_MGN2_,p.CI_MGN3_,p.CI_MGN4_);
	ds_list_add(_dl_TUNIC_CI, p.CI_PNK2_,p.CI_PNK3_,p.CI_PNK4_);
	ds_list_add(_dl_TUNIC_CI, p.CI_RED2_,p.CI_RED3_,p.CI_RED4_);
	ds_list_add(_dl_TUNIC_CI, p.CI_ORG2_,p.CI_ORG3_,p.CI_ORG4_);
	ds_list_add(_dl_TUNIC_CI, p.CI_YLW2_,p.CI_YLW3_,p.CI_YLW4_);
	ds_list_add(_dl_TUNIC_CI, choose(p.CI_YGR2_,p.CI_GRN2_,p.CI_GRB2_), choose(p.CI_YGR3_,p.CI_GRN3_,p.CI_GRB3_), choose(p.CI_YGR4_,p.CI_GRN4_,p.CI_GRB4_));
	ds_list_add(_dl_TUNIC_CI, p.CI_TEL2_,p.CI_TEL3_,p.CI_TEL4_);
	//ds_list_add(_dl_TUNIC_CI, choose(p.CI_BLU1_,p.CI_VLT1_,p.CI_TEL1_), choose(p.CI_BLU2_,p.CI_VLT2_,p.CI_TEL2_), choose(p.CI_BLU3_,p.CI_VLT3_,p.CI_TEL3_), choose(p.CI_BLU4_,p.CI_TEL4_));

	// Limiting the number of brights because their colors aren't very distinct
	var _dl_BRIGHT_CI=ds_list_create(); // bright acceptable tunic colors
	ds_list_add(_dl_BRIGHT_CI, p.CI_BLU1_,p.CI_VLT1_,p.CI_PUR1_,p.CI_MGN1_,p.CI_PNK1_,p.CI_RED1_,p.CI_ORG1_,p.CI_YLW1_,p.CI_YGR1_,p.CI_GRN1_,p.CI_GRB1_,p.CI_TEL1_);
	ds_list_shuffle(_dl_BRIGHT_CI);
	ds_list_add(_dl_TUNIC_CI, _dl_BRIGHT_CI[|0],_dl_BRIGHT_CI[|1],_dl_BRIGHT_CI[|2],_dl_BRIGHT_CI[|3]);

	ds_list_shuffle(_dl_TUNIC_CI);



	var _CI1 = string_copy(p.PAL_PC_1,3,2); // pc skin
	var _CI2 = string_copy(p.PAL_PC_1,7,2); // pc outline
	var _CI3 = string_copy(p.PAL_CUC1,3,2); // cucco legs/beak
	var _CI4 = string_copy(p.PAL_CUC1,7,2); // cucco body
	var _ci1 = _CI1;
	var _ci2 = _CI2;

	_i=0;

	_ci1 = _CI1;
	_ci2 = _CI2;
	if(!irandom(_CHANCE1)){
	    if(!irandom(_CHANCE2)) _ci1 = p.CI_BLK1_;
	    else                   _ci2 = p.CI_BLK1_;
	}
	_val  = p.CI_BLK1_ + _ci1 + _dl_TUNIC_CI[|_i++] + _ci2;

	_ci1 = _CI1;
	_ci2 = _CI2;
	if(!irandom(_CHANCE1)){
	    if(!irandom(_CHANCE2)) _ci1 = p.CI_BLK1_;
	    else                   _ci2 = p.CI_BLK1_;
	}
	_val += p.CI_BLK1_ + _ci1 + _dl_TUNIC_CI[|_i++] + _ci2;

	_ci1 = _CI1;
	_ci2 = _CI2;
	if(!irandom(_CHANCE1)){
	    if(!irandom(_CHANCE2)) _ci1 = p.CI_BLK1_;
	    else                   _ci2 = p.CI_BLK1_;
	}
	_val += p.CI_BLK1_ + _CI1 + _dl_TUNIC_CI[|_i++] + _ci2;
	//_val += p.CI_BLK1_ + _ci1 + _dl_TUNIC_CI[|_i++] + _ci2;

	dm_save_data[?STR_Palette+"_PC"+"01"] = _val;






	_ci1 = _CI3;
	_ci2 = _CI4;
	if(!irandom(_CHANCE1)){
	    if(!irandom(_CHANCE2)) _ci1 = p.CI_BLK1_;
	    else                   _ci2 = p.CI_BLK1_;
	}
	_val  = p.CI_BLK1_ + _ci1 + _dl_TUNIC_CI[|_i++] + _ci2;

	_ci1 = _CI3;
	_ci2 = _CI4;
	if(!irandom(_CHANCE1)){
	    if(!irandom(_CHANCE2)) _ci1 = p.CI_BLK1_;
	    else                   _ci2 = p.CI_BLK1_;
	}
	_val += p.CI_BLK1_ + _ci1 + _dl_TUNIC_CI[|_i++] + _ci2;

	_ci1 = _CI3;
	_ci2 = _CI4;
	if(!irandom(_CHANCE1)){
	    if(!irandom(_CHANCE2)) _ci1 = p.CI_BLK1_;
	    else                   _ci2 = p.CI_BLK1_;
	}
	_val += p.CI_BLK1_ + _ci1 + _dl_TUNIC_CI[|_i++] + _ci2;

	dm_save_data[?STR_Palette+STR_Cucco+"01"] = _val;


	ds_list_destroy(_dl_colors); _dl_colors=undefined;
	ds_list_destroy(_dl_TUNIC_CI); _dl_TUNIC_CI=undefined;
	ds_list_destroy(_dl_BRIGHT_CI); _dl_BRIGHT_CI=undefined;
	ds_list_destroy(_dl_DUNGEON_AREAS); _dl_DUNGEON_AREAS=undefined;
	ds_list_destroy(_dl_DUNGEON_TILESETS); _dl_DUNGEON_TILESETS=undefined;


	/*
	var             _dl_colors=ds_list_create();
	ds_list_copy(   _dl_colors,p.dl_COLORS_USED);
	ds_list_shuffle(_dl_colors);

	_i=0;
	_val  = p.CI_BLK1_ + hex_str(byte(ds_list_find_index(p.dl_COLOR,_dl_colors[|_i++]))) + hex_str(byte(ds_list_find_index(p.dl_COLOR,_dl_colors[|_i++]))) + hex_str(choose(p.CI_BLK1_,p.CI_GRY4_,p.CI_TEL4_,"0B","09","08","07","03","02","01"));
	_val += p.CI_BLK1_ + hex_str(byte(ds_list_find_index(p.dl_COLOR,_dl_colors[|_i++]))) + hex_str(byte(ds_list_find_index(p.dl_COLOR,_dl_colors[|_i++]))) + hex_str(choose(p.CI_BLK1_,p.CI_GRY4_,p.CI_TEL4_,"0B","09","08","07","03","02","01"));
	_val += p.CI_BLK1_ + hex_str(byte(ds_list_find_index(p.dl_COLOR,_dl_colors[|_i++]))) + hex_str(byte(ds_list_find_index(p.dl_COLOR,_dl_colors[|_i++]))) + hex_str(choose(p.CI_BLK1_,p.CI_GRY4_,p.CI_TEL4_,"0B","09","08","07","03","02","01"));
	dm_save_data[?STR_Palette+"_PC"+"01"] = _val;

	_val  = p.CI_BLK1_ + hex_str(byte(ds_list_find_index(p.dl_COLOR,_dl_colors[|_i++]))) + hex_str(byte(ds_list_find_index(p.dl_COLOR,_dl_colors[|_i++]))) + hex_str(byte(ds_list_find_index(p.dl_COLOR,_dl_colors[|_i++])));
	_val += p.CI_BLK1_ + hex_str(byte(ds_list_find_index(p.dl_COLOR,_dl_colors[|_i++]))) + hex_str(byte(ds_list_find_index(p.dl_COLOR,_dl_colors[|_i++]))) + hex_str(byte(ds_list_find_index(p.dl_COLOR,_dl_colors[|_i++])));
	_val += p.CI_BLK1_ + hex_str(byte(ds_list_find_index(p.dl_COLOR,_dl_colors[|_i++]))) + hex_str(byte(ds_list_find_index(p.dl_COLOR,_dl_colors[|_i++]))) + hex_str(byte(ds_list_find_index(p.dl_COLOR,_dl_colors[|_i++])));
	dm_save_data[?STR_Palette+STR_Cucco+"01"] = _val;

	ds_list_destroy(_dl_colors); _dl_colors=undefined;
	*/







}
