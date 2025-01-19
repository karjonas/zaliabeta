/// @description  DungeonMapVisible_refresh(dungeon num)
function DungeonMapVisible_refresh() {


	var _i, _val, _datakey;


	with(g.PAUSE_MENU)
	{
	    _val = argument[0];
	    var _DUNGEON_NUM  = _val;
	    //var _DUNGEON_NUM  = val(f.dm_rando[?g.rm_name+STR_Dungeon+STR_Num]);
	    //var _DUNGEON_NUM  = val(f.dm_rando[?STR_Dungeon+hex_str(_val)+STR_Dungeon+STR_Num], _val);
	    //var _DUNGEON_NAME = val(g.dm_dungeon[?STR_Dungeon+hex_str(_DUNGEON_NUM)+STR_Name]);
	    //map_clm_off = 0;
	    //map_row_off = 0;
    
	    //ds_grid_resize(dg_dngn_map, 0, ds_grid_height(dg_dngn_map));
	    //ds_grid_clear( dg_dngn_map, 0);
    
	    //f.dm_rando[?STR_Boss+STR_Scene+STR_Name+_b_dungeon_name]
	    //g.dm_dungeon[?STR_Dungeon+_DUNGEON_NUM_+STR_Name]
    
	    switch(_DUNGEON_NUM){
	    default:{exit; break;}
	    case 1:{ds_grid_copy(dg_dngn_map, dg_dngn_map_1); break;}
	    case 2:{ds_grid_copy(dg_dngn_map, dg_dngn_map_2); break;}
	    case 3:{ds_grid_copy(dg_dngn_map, dg_dngn_map_3); break;}
	    case 4:{ds_grid_copy(dg_dngn_map, dg_dngn_map_4); break;}
	    case 5:{ds_grid_copy(dg_dngn_map, dg_dngn_map_5); break;}
	    case 6:{ds_grid_copy(dg_dngn_map, dg_dngn_map_6); break;}
	    case 7:{ds_grid_copy(dg_dngn_map, dg_dngn_map_7); break;}
	    case 8:{ds_grid_copy(dg_dngn_map, dg_dngn_map_8); break;}
	    }
    
	    map_clm_off = 0;
	    map_row_off = 0;
    
    
	    var                _DIST = $04<<8;
	    dungeon_vis_rgt = -_DIST;
	    dungeon_vis_lft =  _DIST;
	    dungeon_vis_btm = -_DIST;
	    dungeon_vis_top =  _DIST;
    
    
	    // 5: rm_name, 6: rm page, 7: explored, 8: if tsrc is elevator shaft, this is a string of each exit name
	    for(_i=ds_grid_width(dg_dngn_map)-1; _i>=0; _i--)
	    {
	        _datakey  = dg_dngn_map[#_i,5];          // rm name
	        _datakey += STR_Explored+STR_Page;       // STR_Explored+STR_Page
	        _datakey += hex_str(dg_dngn_map[#_i,6]); // rm page
        
	        if (g.dev_DungeonMapShowAll)
	        {    dg_dngn_map[#_i,7] = 1;  }
	        else dg_dngn_map[#_i,7] = val(f.dm_explored[?_datakey]);
        
	        if ( dg_dngn_map[#_i,7]) // if has been explored/visited
	        {   
	            update_dngn_vis_rc(dg_dngn_map[#_i,0], dg_dngn_map[#_i,1]);
	        }
	    }
    
    
	    switch(_DUNGEON_NUM){
	    case 1:{ds_grid_copy(dg_dngn_map_1, dg_dngn_map); break;}
	    case 2:{ds_grid_copy(dg_dngn_map_2, dg_dngn_map); break;}
	    case 3:{ds_grid_copy(dg_dngn_map_3, dg_dngn_map); break;}
	    case 4:{ds_grid_copy(dg_dngn_map_4, dg_dngn_map); break;}
	    case 5:{ds_grid_copy(dg_dngn_map_5, dg_dngn_map); break;}
	    case 6:{ds_grid_copy(dg_dngn_map_6, dg_dngn_map); break;}
	    case 7:{ds_grid_copy(dg_dngn_map_7, dg_dngn_map); break;}
	    case 8:{ds_grid_copy(dg_dngn_map_8, dg_dngn_map); break;}
	    }
    
    
	    /*
	    if (0 && argument0==1)
	    {
	        with(g.PAUSE_MENU)
	        {
	            var _val1,_val2, _str1;
	            var _COUNT1 = ds_grid_width(dg_dngn_map);
	            for(_i=0; _i<_COUNT1; _i++)
	            {
	                if (_i && dg_dngn_map[#_i,5]!=dg_dngn_map[#_i-1,5]) sdm("");
                
	                _val1 = dg_dngn_map[#_i,0];
	                _val2 = dg_dngn_map[#_i,1];
                
	                _str1  = dg_dngn_map[#_i,5];
                
	                _str1 += ",  dg_dngn_map[#$"+hex_str(_i)+",$00] = ";
	                if (_val1<0) _str1 += "-$";
	                else         _str1 += " $";
	                _str1 += hex_str(abs(_val1));
                
	                _str1 += ",  dg_dngn_map[#$"+hex_str(_i)+",$01] = ";
	                if (_val2<0) _str1 += "-$";
	                else         _str1 += " $";
	                _str1 += hex_str(abs(_val2));
                
	                //_str1 += ;
	                sdm(_str1);
	            }
	            sdm("");sdm("");sdm("");
	        }
	    }
	    */
	}







}
