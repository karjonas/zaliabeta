/// @description  p_Room_Start()
function p_Room_Start() {


	if (DEV) sdm(" p_Room_Start()");


	var _i,_j,_k, _idx, _count;
	var _val, _val1,_val2,_val3;
	var _str,_str1,_str2,_str3, _pos,_pos1, _pos_offset, _len1,_len2;
	var _dk;
	var _pal,_pal1, _pi;
	var _dungeon_num;


	/*  // This has moved to rm_enter_set_tiles() so it doesn't override 
	    // the data rm_enter_set_tiles() sets.
	for (_i = ds_list_size(g.dl_t_depth)-1; _i >= 0; _i--)
	{
	    // dg_depth_pi contains the pi's each depth will use for THE CURRENT RM.
	    // This loop sets the default pi's for each depth. PI specific to the 
	    // current rm is passed to it in rm_enter_set_tiles() from file data.
	    dg_depth_pi[| _i] = dm_depth_pi[?hex_str(abs(g.dl_t_depth[| _i]))];
	}
	*/


	fall_scene_counter   = 1;
	fall_scene_pal_state = 0;
	fall_scene_fall_spd  = FallScene_FALL_SPD_DEF;
	fall_scene_y         = fall_scene_get_y_base();


	Flash_Pal_timer        = 0; // 074B. 
	Flash_Bgr_timer        = 0;
	SpellFlash_PC_timer    = 0;
	SpellFlash_GOB_timer   = 0;
	SpellReady_flash_timer = 0;


	     if (g.room_type=="A")   background_color_index = val(g.dm_rm[?g.rm_name+STR_Background_color], CI_BLK1);
	else if (room==rmB_GameOver) background_color_index = ds_list_find_index(dl_COLOR,GameOverScreen_BGR_COLOR);
	else                         background_color_index = CI_BLK1; // $D: black


	if (g.room_type=="A" 
	&&  background_color_index!=CI_BLK1 )
	{
	    var _qualifies = global.Halloween1_enabled;
    
	    if(!_qualifies 
	    &&  g.view_y_page_min==g.view_y_page_max 
	    &&  g.RandoPalette_state  // 0: Off, 1: Dungeons & PC, 2: Dungeons, PC, and 2 BGR PI random palette when enter room
	    &&  val(f.dm_rando[?STR_Randomize+STR_Palette]) )
	    {
	        if (background_color_index==CI_VLT2   // Town sky
	        ||  background_color_index==CI_BLU2   // Encounter sky
	        ||  background_color_index==CI_BLU4   // Old Kasuto sky
	        ||  background_color_index==CI_PUR3 ) // Cemetery sky
	        {
	            _qualifies = !irandom($F);
	        }
	    }
    
	    //if (true) // testing
	    if (_qualifies)
	    {
	        var _INST = NIAO_create2(0,0, 3,StarSky_1_init);
	        if (_INST!=noone) background_color_index = CI_BLK1;
	        /*
	        for(_i=ds_list_size(g.dl_niao)-1; _i>=0; _i--)
	        {
	            if(!is_undefined(g.dl_niao[|_i]) 
	            &&  g.dl_niao[|_i]!=noone 
	            &&  g.dl_niao[|_i] 
	            &&  instance_exists(g.dl_niao[|_i]) 
	            &&  g.dl_niao[|_i].state==0 )
	            {
	                instance_destroy(g.dl_niao[|_i]);
	                g.dl_niao[|_i] = noone;
	                g.dl_niao[|_i] = NIAO_create(0,0, 3, StarSky_1_init);
	                background_color_index = CI_BLK1;
	                break;//_i
	            }
	        }
	        */
	    }
	}



	if (global.SceneRando_enabled)
	{
	    var _SceneRando_scene = val(f.dm_rando[?dk_SceneRando+STR_Scene+STR_Randomized+g.rm_name], g.rm_name);
	    if (_SceneRando_scene!=g.rm_name)
	    {
	        _idx = val(g.dm_rm[?_SceneRando_scene+STR_Background_color], background_color_index);
	        if (background_color_index==CI_BLK1 
	        ||  _idx==CI_BLK1 )
	        {
	            background_color_index = CI_BLK1;
	        }
	    }
	}


	set_background_color(dl_COLOR[|background_color_index]);








	// ------------------------------------------------------------------------------------------
	// ------------------------------------------------------------------------------------------
	// ------------------------------------------------------------------------------------------
	// ------------------------------------------------------------------------------------------
	pal_rm_def  = undefined; // the rm's default palette. pal_rm_def, pal_rm_new, pal_rm_curr  should all be equal by the end of this script.

	pal_rm_new  = "";        // Checked every frame. Triggers pal change if != pal_rm_curr
	pal_rm_curr = "";        // the rm's current palette

	pal_rm_file = undefined; // from .json Tiled file
	pal_rm_dark = pal_rm_dark_DEFAULT;
	//     pal_rm_dark     = undefined;
	//var _pal_rm_dark_DEF = dg_pal_rm_dark[#0,0];

	ds_grid_clear(dg_rm_pal,-1);



	// ------------------------------------------------------------------------------------------
	// ------------------------------------------------------------------------------------------
	var _FILE_CLEANING = g.FileCleaning01_STATE && g.room_type=="A" && g.rm_name==g.FileCleaning01_rm_name;
	var _dm_pal_data_datakey = g.rm_name;

	switch(g.room_type)
	{
	    // ------------------------
	    case "A":{
	    if (_FILE_CLEANING)
	    {
	        _val = json_encode(g.dm_tile_file);
	        pal_rm_file = get_palette_via_file_data(_val); // Get rm palette data from file
	    }
	    else
	    {
	        _dk = g.rm_name+STR_file_name+STR_Quest+hex_str(g.file_data_quest_num);
	        _dk = g.dm_rm[?_dk];
	        if(!is_undefined(_dk))
	        {
	            pal_rm_file = dm_scene_palette[?_dk];
	            _pal = f.dm_rando[?g.rm_name+STR_Palette];
	            if(!is_undefined(pal_rm_file) 
	            && !is_undefined(_pal) )
	            {
	                _len1 = string_length(pal_rm_file);
	                _len2 = string_length(_pal);
	                     if (_len1>_len2) _pal += string_copy(pal_rm_file, _len2+1, _len1-_len2);
	                else if (_len1<_len2) _pal  = string_copy(_pal, 1, _len1);
	                pal_rm_file = _pal;
	            }
            
	            //pal_rm_file = dm_scene_palette[?_dk];
	            //pal_rm_file = val(f.dm_rando[?g.rm_name+STR_Palette], pal_rm_file);
	            //pal_rm_file = val(f.dm_rando[?_dk+STR_Palette], pal_rm_file);
	        }
        
	        if (is_undefined(pal_rm_file))
	        {
	            pal_rm_file = get_palette_via_file_data(0, g.rm_name, g.file_data_quest_num); // Get rm palette data from file
	        }
	    }
	    /*
	    if (_FILE_CLEANING) _val = json_encode(g.dm_tile_file);
	    else                _val = 0;
	    pal_rm_file = get_palette_via_file_data(_val, g.rm_name, g.file_data_quest_num); // Get rm palette data from file
	    */
	    break;}
    
    
    
    
	    // ------------------------
	    case "B":{ // For rmB, TitleScreen is the only one w/ a Tiled file currently(2021/09/09).
	    if (room==rmB_Title)
	    {
	        if (_FILE_CLEANING) _val = json_encode(g.dm_tile_file);
	        else                _val = 0;
	        pal_rm_file = get_palette_via_file_data(_val, g.rm_name, g.file_data_quest_num); // Get rm palette data from file
	    }
	    else
	    {
	        _dm_pal_data_datakey = room_get_name(room);
	    }
	    break;}
    
    
    
    
	    // ------------------------
	    case "C":{ // Overworld
	    pal_rm_def = OW_PAL;
	    break;}
	}



	if (is_undefined(pal_rm_def))
	{
	    if(!is_undefined(pal_rm_file))
	    {
	        pal_rm_def  = PAL_SET2;
	        pal_rm_def += pal_rm_file;
	        pal_rm_def += pal_rm_dark;
	    }
	    else
	    {
	        pal_rm_def  = val(dm_pal_data[?_dm_pal_data_datakey], pal_rm_DEFAULT);
	        pal_rm_def += pal_rm_dark;
	    }
	}










	// Temporary fix to avoid updating all Tiled files:
	// Because ZALiA is widescreen, there are a lot more pixels on the screen compared to OG.
	// This makes the screen much brighter when a background is using brighter color. 
	// The following code changes the color a dungeon's background wall to 
	// the darkest tone of the color it's using.
	if (g.room_type=="A" 
	&&  g.dungeon_num 
	&&  g.dungeon_num<8 )
	{
	    var _layer_name, _depth, _ci_;
    
	    _count = ds_list_size(g.dl_TILE_DEPTH_NAMES);
	    for(_i=0; _i<_count; _i++)
	    {
	        _dk = g.dl_TILE_DEPTH_NAMES[|_i]; // "BG01, BG02, ..."
	        //if(!string_pos("BG",_dk)) break;//_i
	        _depth      = g.dm_TILE_DEPTH[?_dk];
	        _layer_name = g.dm_tile_file[? _dk+STR_Depth+STR_Layer+STR_Name];
	        if(!is_undefined(_depth) 
	        && !is_undefined(_layer_name) 
	        &&  string_pos("STRUCTURE_BGWALL01_01",_layer_name) ) // use "STRUCTURE_BGWALL01_02" in the layer name so this doesn't run
	        {
	            _idx = ds_list_find_index(g.dl_TILE_DEPTHS,_depth);
	            if (_idx!=-1)
	            {
	                _pi = PI_BGR_4;
	                dg_depth_pi[#_idx,0] = _pi; // pi default
	                dg_depth_pi[#_idx,1] = _pi; // pi current
	                dg_depth_pi[#_idx,2] = 0;   // permut default. 00-05
	                dg_depth_pi[#_idx,3] = 0;   // permut current. 00-05
                
                
	                _dungeon_num = val(f.dm_rando[?g.rm_name+STR_Dungeon+STR_Num], g.dungeon_num);
	                switch(_dungeon_num){
	                default:{_ci_=CI_GRY4_; break;}
	                case  1:{_ci_=CI_GRY4_; break;}
	                case  2:{_ci_=CI_TEL4_; break;}
	                case  3:{_ci_=CI_ORG4_; break;}
	                case  4:{_ci_=CI_PUR4_; break;}
	                case  5:{_ci_=CI_GRB4_; break;}
	                case  6:{_ci_=CI_ORG4_; break;}
	                case  7:{_ci_=CI_ORG4_; break;}
	                }//switch(g.dungeon_num)
	                pal_rm_def = strReplaceAt(pal_rm_def,get_pal_pos(_pi)+6, 2,_ci_);
	            }
	        }
	    }
	}








	if (room!=rmB_Title 
	&&  room!=rmB_FileSelect )
	{
	    if (g.RandoPalette_state  // 0: Off, 1: Dungeons & PC, 2: Dungeons, PC, and 2 BGR PI random palette when enter room
	    &&  val(f.dm_rando[?STR_Randomize+STR_Palette]) )
	    {
	        if (g.room_type=="A")
	        {
	            _pal = f.dm_rando[?STR_Palette+STR_Rando+g.rm_name];
	            //_pal = f.dm_rando[?g.rm_name+STR_Palette];
	            //_palette = dm_save_data[?STR_Palette+STR_Rando+_b_scene_name];
	            if (g.dungeon_num)
	            {
	                // Dungeon Palette ----------------------------------------------------------------------------
	                //_pal = f.dm_rando[?STR_Palette+STR_Dungeon+hex_str(g.dungeon_num)]; // This is the full palette for  PI_BGR_1, PI_BGR_2, PI_BGR_3, PI_BGR_4
	                //_pal = val(f.dm_rando[?g.rm_name+STR_Palette], _pal);
	                if(!is_undefined(_pal))
	                {
	                    var _layer_name, _depth, _pos;
	                    var _solid_wall_pi_pos = get_pal_pos(PI_BGR_1);
	                    var _dl_TILE_DEPTH_NAMES_COUNT = ds_list_size(g.dl_TILE_DEPTH_NAMES);
                    
                    
	                    pal_rm_def = strReplaceAt(pal_rm_def,get_pal_pos(PI_BGR_1), string_length(_pal),_pal);
                    
                    
	                    for(_i=0; _i<_dl_TILE_DEPTH_NAMES_COUNT; _i++)
	                    {
	                        _dk         = g.dl_TILE_DEPTH_NAMES[|_i]; // "BG01, BG02, ..."
	                        _depth      = g.dm_TILE_DEPTH[?_dk];
	                        _layer_name = g.dm_tile_file[? _dk+STR_Depth+STR_Layer+STR_Name];
	                        if(!is_undefined(_depth) 
	                        && !is_undefined(_layer_name) 
	                        &&  string_pos("STRUCTURE_FGWALL01_01",_layer_name) ) // use "STRUCTURE_BGWALL01_02" in the layer name so this doesn't run
	                        {
	                            _idx = ds_list_find_index(g.dl_TILE_DEPTHS,_depth);
	                            if (_idx!=-1)
	                            {
	                                _pi = dg_depth_pi[#_idx,1];
	                                _solid_wall_pi_pos = get_pal_pos(_pi);
	                                break;//_i
	                            }
	                        }
	                    }
                    
                    
	                    for(_i=0; _i<_dl_TILE_DEPTH_NAMES_COUNT; _i++)
	                    {
	                        _dk         = g.dl_TILE_DEPTH_NAMES[|_i]; // "BG01, BG02, ..."
	                        _depth      = g.dm_TILE_DEPTH[?_dk];
	                        _layer_name = g.dm_tile_file[? _dk+STR_Depth+STR_Layer+STR_Name];
	                        if(!is_undefined(_depth) 
	                        && !is_undefined(_layer_name) 
	                        &&  string_pos("STRUCTURE_BGWALL01_01",_layer_name) ) // use "STRUCTURE_BGWALL01_02" in the layer name if you dont want this to run
	                        {
	                            _idx = ds_list_find_index(g.dl_TILE_DEPTHS,_depth);
	                            if (_idx!=-1)
	                            {
	                                _pal1 = CI_BLK1_+CI_BLK1_+CI_BLK1_+CI_BLK1_;
	                                _pi   = dg_depth_pi[#_idx,1]; // pi for bgr wall
	                                _pos  = get_pal_pos(_pi);
                                
	                                var _ci_ = string_copy(pal_rm_def,_solid_wall_pi_pos+4,2); // 2nd to last color, mid-tone, base color
                                
	                                // If the mid-tone (_ci_) IS black, make the bgr wall full black to contrast the fgr wall
	                                if (_ci_!=CI_BLK1_)
	                                {
	                                    // The background wall layer will often use bgr palette 4 in case there's 
	                                    // a darker tone available for dungeon's color. So its color will 
	                                    // need to be adjusted to match the new dungeon color.
	                                        _ci_ = string_copy(pal_rm_def,_solid_wall_pi_pos+6,2);    // last color, and last 2 str chars of a palette
	                                    if (_ci_==CI_BLK1_)
	                                    {   _ci_ = string_copy(pal_rm_def,_solid_wall_pi_pos+4,2);  } // 2nd to last color
                                    
	                                    if (str_hex(string_char_at(_ci_,1))>=4) _ci_ = CI_BLK1_; // temp fix for new colors
                                    
	                                    _pos += 6;
	                                    _pal1 = _ci_;
                                    
	                                    if (_ci_!=CI_BLK1_)
	                                    {
	                                                       _val1=string_char_at(_ci_,2);
	                                             if (isVal(_val1,"0","D"))      _pal1 = CI_GRY4_; // CI_GRY4_: darkest grey. if white or grey
	                                        else if (isVal(_val1,"9","A","B"))  _pal1 = CI_GRB4_; // CI_GRB4_: darkest green tone
	                                        else if (isVal(_val1,"5","6","7"))  _pal1 = CI_ORG4_; // CI_ORG4_: darkest red tone
	                                        else if (isVal(_val1,"1","2"))      _pal1 = CI_VLT4_; // CI_VLT4_: darkest blue/purple tone
	                                        else                                _pal1 = "0"+_val1; // use darkest of this color
	                                    }
	                                }
                                
	                                pal_rm_def = strReplaceAt(pal_rm_def,_pos, string_length(_pal1),_pal1);
	                                //pal_rm_def = strReplaceAt(pal_rm_def,_pos+6, 2,_ci_);
	                                break;//_i
	                            }
	                        }
	                    }
	                }
	                /*switch(g.dungeon_num){ // DEFAULT PALETTES
	                case 1:{_pal = CI_BLK1_+CI_WHT2_+CI_GRY2_+CI_GRY4_  +  CI_BLK1_+CI_TEL1_+CI_TEL3_+CI_TEL4_; break;} // Parapa Palace
	                case 2:{_pal = CI_BLK1_+CI_TEL1_+CI_TEL3_+CI_TEL4_  +  CI_BLK1_+    "36"+    "16"+    "06"; break;} // Midoro Palace
	                case 3:{_pal = CI_BLK1_+    "26"+    "06"+CI_BLK1_  +  CI_BLK1_+    "34"+    "14"+    "04"; break;} // Island Palace
	                case 4:{_pal = CI_BLK1_+    "23"+    "03"+CI_BLK1_  +  CI_BLK1_+    "37"+    "27"+    "07"; break;} // Maze Isl Palace
	                case 5:{_pal = CI_BLK1_+    "2A"+    "0A"+CI_BLK1_  +  CI_BLK1_+    "32"+    "22"+    "02"; break;} // Palace on the Sea
	                case 6:{_pal = CI_BLK1_+    "25"+    "05"+CI_BLK1_  +  CI_BLK1_+    "30"+    "10"+    "00"; break;} // 3-Eye-Rock Palace
	                case 7:{_pal = CI_BLK1_+    "37"+    "27"+    "07"  +  CI_BLK1_+CI_TEL1_+CI_TEL3_+CI_TEL4_; break;} // Great Palace
	                case 8:{_pal = CI_BLK1_+    "26"+    "2D"+CI_BLK1_  +  CI_BLK1_+    "31"+    "0C"+CI_BLK1_; break;} // Dragmire Tower
	                }*/
	            }
	            else if (g.RandoPalette_state==2) // 0: Off, 1: Dungeons & PC, 2: Dungeons, PC, and 2 BGR PI random palette when enter room
	            {
	                var             _dl1=ds_list_create();
	                ds_list_add(    _dl1,PI_BGR_1,PI_BGR_2,PI_BGR_3,PI_BGR_4);
	                ds_list_shuffle(_dl1);
                
	                var             _dl2=ds_list_create();
	                ds_list_copy(   _dl2,dl_various_pals2);
	                ds_list_shuffle(_dl2);
                
	                _count  = 1;
	                _count += !irandom($F);
	                //_count += !irandom($F);
                
	                _count = min(_count, ds_list_size(_dl1), ds_list_size(_dl2));
	                for(_i=0; _i<_count; _i++)
	                {
	                    _val = _dl2[|_i];
	                    pal_rm_def = strReplaceAt(pal_rm_def,get_pal_pos(_dl1[|_i]), string_length(_val),_val);
	                }
                
	                ds_list_destroy(_dl1); _dl1=undefined;
	                ds_list_destroy(_dl2); _dl2=undefined;
	            }
	        }
        
        
	        // PC Palette ----------------------------------------------------------------------
	        _pal = f.dm_rando[?STR_Palette+"_PC"+"01"];
	        if(!is_undefined(_pal))
	        {
	            pal_rm_def = strReplaceAt(pal_rm_def,get_pal_pos(PI_PC_1), string_length(_pal),_pal);
	        }
        
	        // Cucco Palette ----------------------------------------------------------------------
	        _pal = f.dm_rando[?STR_Palette+STR_Cucco+"01"];
	        if(!is_undefined(_pal))
	        {
	            pal_rm_def = strReplaceAt(pal_rm_def,get_pal_pos(PI_CUC1), string_length(_pal),_pal);
	        }
	    }
    
    
	    _idx = val(g.pc.dm_skins[?STR_Current+STR_Idx]);
	    _pal = get_pc_skin_palette(_idx);
	    pal_rm_def = strReplaceAt(pal_rm_def,get_pal_pos(PI_PC_1), string_length(_pal),_pal);
    
    
	    //if (g.AltDungeonTiles_TEST1 && g.room_type=="A" && isVal(g.dungeon_num,1)) pal_rm_def = strReplaceAt(pal_rm_def,get_pal_pos(PI_BGR_1)+2, 6,CI_PUR2_+CI_PUR3_+CI_TEL4_); // Testing
	}



















	// ------------------------------------------------------------------------------------------
	// ------------------------------------------------------------------------------------------
	// pal_rm_dark_idx == -1: Means this rm is NOT a dark rm
	pal_rm_dark_idx = val(g.dm_rm[?g.rm_name+STR_Dark_Room], -1);
	pal_rm_dark_idx = clamp(pal_rm_dark_idx, -1, ds_grid_width(dg_pal_rm_dark)-1);




	if(!is_undefined(pal_rm_def) 
	//&&  is_undefined(pal_rm_file)  // ** Keep this here in case you use dark pal from file in the future.
	&&  pal_rm_dark_idx+1 
	&&  g.rm_brightness < g.RM_BRIGHTNESS_MAX )
	{
	    _idx = clamp(g.rm_brightness, 0, ds_grid_height(dg_pal_rm_dark)-1);
    
	    pal_rm_dark = dg_pal_rm_dark[#pal_rm_dark_idx, _idx];
    
	    pal_rm_def  = string_copy(pal_rm_def, 1, (PAL_PER_SET*COL_PER_PAL)<<1);
	    pal_rm_def += pal_rm_dark;
	}




	// ------------------------------------------------------------------------------------------
	// ------------------------------------------------------------------------------------------
	/*
	if(!is_undefined(pal_rm_def) 
	&&  g.canRandomizePalette ) // Randomize palette.  Toggle: alt + 'P'
	{
	    pal_rm_def = dev_randomize_palette_1a(pal_rm_def);
	}
	*/




	// ------------------------------------------------------------------------------------------
	// ------------------------------------------------------------------------------------------
	// Just in case
	if (is_undefined(pal_rm_def) 
	|| !is_string(   pal_rm_def) )
	{   pal_rm_def = pal_rm_DEFAULT;  }


	// ------------------------------------------------------------------------------------------
	// Make sure pal_rm_def has the correct number of chars.
	var _LEN1 = string_length(pal_rm_def);
	var _LEN2 = string_length(pal_rm_DEFAULT);

	     if (_LEN1>_LEN2) pal_rm_def  = string_copy(pal_rm_def,           1, _LEN2);
	else if (_LEN1<_LEN2) pal_rm_def += string_copy(pal_rm_DEFAULT, _LEN1+1, _LEN2-_LEN1);




	// ------------------------------------------------------------------------------------------
	// Set colors for pc sword palette
	_pal = get_pc_sword_palette(false);
	pal_rm_def = strReplaceAt(pal_rm_def, get_pal_pos(PI_PC_SWORD), string_length(_pal),_pal);



	// ------------------------------------------------------------------------------------------
	//if(!is_undefined(pal_rm_def)) pal_rm_def = update_Pallete_1b(); // Updates dark rm palette





	// ------------------------------------------------------------------------------------------
	if (global.Halloween1_enabled 
	&&  g.room_type=="A" )
	{
	    if (g.town_name==STR_Rauru 
	    ||  g.town_name==STR_Ruto 
	    ||  g.town_name==STR_Saria 
	    ||  g.town_name==STR_Mido 
	    ||  g.town_name==STR_Nabooru 
	    ||  g.town_name==STR_Darunia 
	    ||  g.town_name==STR_New_Kasuto 
	    ||  g.town_name==STR_Old_Kasuto )
	    {
	        _pal = 0;
	        var _mob_pal  = CI_BLK1_+CI_VLT1_+CI_VLT2_+CI_YLW4_; // MOB ORG
	            _mob_pal += CI_BLK1_+CI_VLT1_+CI_ORG3_+CI_BLK1_; // MOB RED
	            _mob_pal += CI_BLK1_+CI_RED3_+CI_ORG4_+CI_BLK1_; // MOB BLU
	            _mob_pal += CI_BLK1_+CI_VLT1_+CI_PNK3_+CI_BLK1_; // MOB PUR
	        //
	        if (val(g.dm_rm[?g.rm_name+STR_Town+STR_House]))
	        {
	            _pal  = CI_BLK1_+CI_BLU4_+CI_VLT4_+CI_BLK1_; // BG1
	            _pal += CI_BLK1_+CI_VLT3_+CI_BLK1_+CI_BLK1_; // BG2
	            _pal += CI_BLK1_+CI_BLU3_+CI_MGN4_+CI_YLW4_; // BG3
	            _pal += CI_BLK1_+CI_YLW1_+CI_YGR3_+CI_BLK1_; // BG4
	        }
	        else if (val(g.dm_rm[?g.rm_name+STR_Town+STR_Outside]))
	        {
	            switch(g.town_name)
	            {
	                default:{
	                _pal = 0;
	                _mob_pal = 0;
	                break;}
                
	                case STR_Rauru:{
	                _pal  = CI_BLK1_+CI_ORG1_+CI_YLW3_+CI_BLK1_; // BG1
	                _pal += CI_BLK1_+CI_PUR3_+CI_GRY4_+CI_BLK1_; // BG2
	                _pal += CI_BLK1_+CI_BLK1_+CI_ORG3_+CI_YLW4_; // BG3
	                //_pal += CI_BLK1_+CI_BLK1_+CI_BLK1_+CI_YLW4_; // BG3
	                _pal += CI_BLK1_+CI_BLU2_+CI_PUR3_+CI_BLK1_; // BG4
	                break;}
                
	                case STR_Ruto:{
	                _pal  = CI_BLK1_+CI_ORG4_+CI_BLK1_+CI_GRY4_; // BG1
	                _pal += CI_BLK1_+CI_GRY2_+CI_YLW3_+CI_BLK1_; // BG2
	                _pal += CI_BLK1_+CI_GRY2_+CI_GRY4_+CI_BLK1_; // BG3
	                //_pal += CI_BLK1_+CI_GRY1_+CI_TEL4_+CI_BLK1_; // BG3
	                _pal += CI_BLK1_+CI_VLT4_+CI_PUR3_+CI_BLK1_; // BG4
	                break;}
                
	                case STR_Saria:{
	                _pal  = CI_BLK1_+CI_GRY3_+CI_GRY4_+CI_BLK1_; // BG1
	                _pal += CI_BLK1_+CI_TEL3_+CI_VLT4_+CI_BLK1_; // BG2
	                _pal += CI_BLK1_+CI_GRY2_+CI_TEL4_+CI_BLK1_; // BG3
	                _pal += CI_BLK1_+CI_RED2_+CI_RED4_+CI_BLK1_; // BG4
	                break;}
                
	                case STR_Mido:{
	                _pal  = CI_BLK1_+CI_YLW3_+CI_YLW4_+CI_PUR2_; // BG1
	                _pal += CI_BLK1_+CI_GRN1_+CI_GRN3_+CI_BLK1_; // BG2
	                _pal += CI_BLK1_+CI_YLW4_+CI_GRN3_+CI_BLK1_; // BG3
	                _pal += CI_BLK1_+CI_VLT4_+CI_PUR3_+CI_BLK1_; // BG4
	                break;}
                
	                case STR_Nabooru:{
	                _pal  = CI_BLK1_+CI_ORG1_+CI_YLW3_+CI_BLK1_; // BG1
	                _pal += CI_BLK1_+CI_PUR3_+CI_GRY4_+CI_BLK1_; // BG2
	                _pal += CI_BLK1_+CI_GRN3_+CI_YGR4_+CI_BLK1_; // BG3
	                _pal += CI_BLK1_+CI_BLU2_+CI_PUR3_+CI_BLK1_; // BG4
	                break;}
                
	                case STR_Darunia:{
	                _pal  = CI_BLK1_+CI_YLW3_+CI_PUR4_+CI_BLK1_; // BG1
	                _pal += CI_BLK1_+CI_VLT2_+CI_TEL4_+CI_BLK1_; // BG2
	                _pal += CI_BLK1_+CI_ORG1_+CI_ORG3_+CI_BLK1_; // BG3
	                _pal += CI_BLK1_+CI_PNK3_+CI_YLW4_+CI_BLK1_; // BG4
	                break;}
                
	                case STR_New_Kasuto:{
	                _pal  = CI_BLK1_+CI_ORG3_+CI_ORG4_+CI_BLK1_; // BG1
	                _pal += CI_BLK1_+CI_YLW3_+CI_YLW4_+CI_BLK1_; // BG2
	                _pal += CI_BLK1_+CI_GRY3_+CI_GRY4_+CI_BLK1_; // BG3
	                _pal += CI_BLK1_+CI_BLU2_+CI_PUR3_+CI_BLK1_; // BG4
	                break;}
                
	                case STR_Old_Kasuto:{
	                _pal  = CI_BLK1_+CI_GRY3_+CI_GRY4_+CI_BLK1_; // BG1
	                _pal += CI_BLK1_+CI_TEL3_+CI_VLT4_+CI_BLK1_; // BG2
	                _pal += CI_BLK1_+CI_GRY2_+CI_TEL4_+CI_BLK1_; // BG3
	                _pal += CI_BLK1_+CI_RED2_+CI_RED4_+CI_BLK1_; // BG4
	                _mob_pal = 0;
	                break;}
	            }//switch(g.town_name)
	        }
	        else
	        {
	            _mob_pal = 0;
	        }
        
        
	        if (_pal!=0)     pal_rm_def = strReplaceAt(pal_rm_def, get_pal_pos(PI_BGR_1),   string_length(_pal),_pal);
	        if (_mob_pal!=0) pal_rm_def = strReplaceAt(pal_rm_def, get_pal_pos(PI_MOB_ORG), string_length(_mob_pal),_mob_pal);
	    }
	}








	if (room==rmB_GameOver)
	{
	    _pos = get_pal_pos(PI_MOB_RED);
	    _pal = CI_BLK1_+CI_WHT1_+CI_RED3_+CI_BLK1_;
	    pal_rm_def = strReplaceAt(pal_rm_def, _pos, string_length(_pal),_pal);
	}







	// ------------------------------------------------------------------------------------------
	pal_rm_def = change_pal(pal_rm_def);
	// ------------------------------------------------------------------------------------------






	//if (room==rmB_GameOver){sdm(""); sdm("pal_rm_def: "+pal_rm_def); sdm("");}






	// F3F1F2F40D3016120D3727060D3027170D3012020D3010000D2A36180D3027160D3016070D302C0C0D301303F3F1F2F4F33016120D27070D0D27070D0D0D160D0D0D0D0D302111010D270D0D0D160D0D0D210D0D0D140D0D
	// F3F1F2F40D3016120D3727060D3027170D3012020D3010000D2A36180D3027160D3016070D302C0C0D301303F3F1F2F4F33016120D27070D0D27070D0D0D160D0D0D0D0D302111010D270D0D0D160D0D0D210D0D0D140D0D
	// F3F1F2F4 0D301612, 0D372706 0D302717 0D301202 0D301000, 0D2A3618, 0D302716 0D301607 0D302C0C 0D301303
	// F3F1F2F4 F3301612, 0D27070D 0D27070D 0D0D160D 0D0D0D0D, 30211101, 0D270D0D 0D160D0D 0D210D0D 0D140D0D
	/*
	if (g.rm_name==(Area_PalcA+'03'))
	{
	    // sdm('pal_rm_dark_idx: '+string(pal_rm_dark_idx)+', g.rm_brightness: '+string(g.rm_brightness)+', g.RM_BRIGHTNESS_MAX: '+string(g.RM_BRIGHTNESS_MAX));
	    // Output: pal_rm_dark_idx: 1, g.rm_brightness: 0, g.RM_BRIGHTNESS_MAX: 2
	    sdm('pal_rm_def: '+string_copy(pal_rm_def,1,COL_PER_RM<<1)); sdm('');
	// Output: 
	// F3F1F2F4 0D301612, 0D301000 0D3C1C0C 0D301600 0D203D0D, 0D2A3618, 0D302716 0D301607 0D302102 0D301303
	// F3F1F2F4 0D301612, 0D0D0D0D 0D0D0D0D 0D12010D 0D0D0112, 0D112101, 0D0D0D0D 0D0D0D0D 0D0D0D0D 0D0D0D0D

	// F3F1F2F4 0D301612, 0D301000 0D3C1C0C 0D301600 0D203D0D, 0D2A3618, 0D302716 0D301607 0D302102 0D301303
	// F3F1F2F4 F3301612, 0D0C0D0D 0D0D160D 0D0D0D0D 0D0D0D0D, F3211101, 0D0D0D0D 0D0D0D0D 0D0D0D0D 0D0D0D0D
	}
	*/











}
