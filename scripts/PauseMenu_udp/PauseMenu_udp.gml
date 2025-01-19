/// @description  PauseMenu_udp()
function PauseMenu_udp() {


	var _i;
	var _xl,_yt;
	var _clm,_row;
	var _grid_clm,_grid_row;
	var _ts, _tsrc1,_tsrc2,_tsrc3,_tsrc4, _tsrcA,_tsrcB, _ts_x,_ts_y, _ts_xoff,_ts_yoff, _tile_w,_tile_h;
	var _is_treeA,_is_treeB;
	var _owrc;


	drawX = get_menu_x();
	drawY = viewYT() + Y_BASE;
	canDrawSections = g.menu_built_count;

	var _ST_CURR =  state    &$3;
	var _ST_PREV = (state>>4)&$3;
	canDrawSpells = _ST_CURR==ST_SPL || (_ST_PREV==ST_SPL && g.menu_state<5 && _ST_CURR!=ST_ITM);
	canDrawItems  = _ST_CURR==ST_ITM || (_ST_PREV==ST_ITM && g.menu_state<5 && _ST_CURR!=ST_SPL);


	map_is_opening = false;

	paper_drawn_clms = 0;
	paper_drawn_rows = 0;

	terrain_draw_area_w = 0;
	terrain_draw_area_h = 0;

	terrain_tile_xl_base = 0;
	terrain_tile_yt_base = 0;
	terrain_draw_area_xl = 0;
	terrain_draw_area_xr = 0;
	terrain_draw_area_yt = 0;
	terrain_draw_area_yb = 0;

	tsrc_grid_clm_base = 0;
	tsrc_grid_row_base = 0;

	Window_extra_draw_clms = 0;

	                                                          Window_draw_data_state =  state&$3;
	     if (_ST_CURR==ST_MAP             && g.menu_state>=5) Window_draw_data_state =  ST_MAP;
	else if (_ST_CURR==ST_MAP && _ST_PREV && g.menu_state==4) Window_draw_data_state = _ST_PREV;
	else                                                      Window_draw_data_state = _ST_CURR;
	if(!Window_draw_data_state){                              Window_draw_data_state =  ST_SPL;}



	if (canDrawSections>ANIM_FRAMES_DEF) // Map
	{
	    drawX -= (canDrawSections-ANIM_FRAMES_DEF)<<4;
    
	    var _IDX_LAST   = array_length_1d(ar_map_anim_data)-1;
	    Window_extra_draw_clms = (canDrawSections-ANIM_FRAMES_DEF)<<1; // column width 8
    
	    if (g.menu_state==5) map_anim_idx = _IDX_LAST;
	    else                 map_anim_idx = clamp((Window_extra_draw_clms>>1)-1, 0,_IDX_LAST); // 0 is the 1st frame of anim, 4 is 5th frame
    
    
    
	    paper_drawn_clms = ar_map_anim_data[map_anim_idx];
	    paper_drawn_rows = ROWS_MAP_PAPER;
    
	    map_is_opening = paper_drawn_clms && paper_drawn_clms<CLMS_MAP_PAPER;
    
    
	    // The xl of the left most tile of a fully drawn map, even if only part of that tile may draw.
	    terrain_tile_xl_base  = drawX; // menu window draw xl
	    terrain_tile_xl_base += 8;     // +8(win border, drawn paper xl)
	    terrain_tile_xl_base += paper_drawn_clms<<3; // drawn paper xr
	    terrain_tile_xl_base -= CLMS_MAP_PAPER<<3;   // paper xl, whether draw yet or not
	    terrain_tile_xl_base += 8;     // +8(terrain pad)
	    terrain_tile_xl_base -= 4;     // offset 1/2 a tile because pc centered on map
    
	    // The yt of the top most tile of a fully drawn map, even if only part of that tile may draw.
	    terrain_tile_yt_base  = drawY; // menu window draw yt
	    terrain_tile_yt_base += 8;     // +8(win border, drawn paper yt)
	    terrain_tile_yt_base += paper_drawn_rows<<3; // drawn paper yb
	    terrain_tile_yt_base -= ROWS_MAP_PAPER<<3;   // paper yt, whether draw yet or not
	    terrain_tile_yt_base += 8;     // +8(terrain pad)
	    terrain_tile_yt_base -= 4;     // offset 1/2 a tile because pc centered on map
    
    
	    // The xl of what terrain can be drawn currently, which may include a partial tile
	    terrain_draw_area_xl  = drawX; // menu window draw xl
	    terrain_draw_area_xl += 8;     // +8(win border)
	    terrain_draw_area_xl += 8;     // +8(terrain pad)
	    terrain_draw_area_xl -= 4 * map_is_opening; // extra half tile while opening
    
	    terrain_draw_area_xr  = drawX; // menu window draw xl
	    terrain_draw_area_xr += 8;     // +8(win border)
	    terrain_draw_area_xr += paper_drawn_clms<<3; // drawn paper xr
	    terrain_draw_area_xr -= 8;     // -8(terrain pad)
	    //terrain_draw_area_xr += 4 * map_is_opening; // extra half tile while opening
    
	    // The yt of what terrain can be drawn currently, which may include a partial tile
	    terrain_draw_area_yt  = drawY; // menu window draw yt
	    terrain_draw_area_yt += 8;     // +8(win border)
	    terrain_draw_area_yt += 8;     // +8(terrain pad)
    
	    terrain_draw_area_yb  = drawY; // menu window draw yt
	    terrain_draw_area_yb += 8;     // +8(win border)
	    terrain_draw_area_yb += paper_drawn_rows<<3; // paper yb
	    terrain_draw_area_yb -= 8;     // -8(terrain pad)
    
    
	    var _OWRC = val(f.dm_rando[?g.rm_name+STR_OWRC], g.overworld.pcrc_map);
	    tsrc_grid_clm_base = ((_OWRC>>0)&$FF) - (TerrainDraw_CLMS>>1);
	    tsrc_grid_row_base = ((_OWRC>>8)&$FF) - (TerrainDraw_ROWS>>1);
    
    
	    var _TSRC_ERROR = $FF;
    
	    ds_grid_clear(dg_terrain_draw,0);
    
	    var          _TILE_COUNT = ds_grid_width(dg_terrain_draw);
	    for(_i=0; _i<_TILE_COUNT; _i++)
	    {
	        _clm = _i div TerrainDraw_ROWS;
	        _row = _i mod TerrainDraw_ROWS;
        
	        _xl = terrain_tile_xl_base + (_clm<<3);
	        _yt = terrain_tile_yt_base + (_row<<3);
        
	        if (_xl  >=terrain_draw_area_xr) break;//_i
	        if (_xl+8<=terrain_draw_area_xl) continue;//_i
	        if (_yt  >=terrain_draw_area_yb) continue;//_i
	        if (_yt+8<=terrain_draw_area_yt) continue;//_i
        
        
        
        
	             if (_xl  <terrain_draw_area_xl) _tile_w = (_xl+8) - terrain_draw_area_xl;
	        else if (_xl+8>terrain_draw_area_xr) _tile_w = terrain_draw_area_xr - _xl;
	        else                                 _tile_w = 8;
        
	        if (_xl<terrain_draw_area_xl) _ts_xoff = 8 - _tile_w;
	        else                          _ts_xoff = 0;
	        _xl += _ts_xoff;
        
        
	             if (_yt  <terrain_draw_area_yt) _tile_h = (_yt+8) - terrain_draw_area_yt;
	        else if (_yt+8>terrain_draw_area_yb) _tile_h = terrain_draw_area_yb - _yt;
	        else                                 _tile_h = 8;
        
	        if (_yt<terrain_draw_area_yt) _ts_yoff = 8 - _tile_h;
	        else                          _ts_yoff = 0;
	        _yt += _ts_yoff;
        
	        dg_terrain_draw[#_i,$0] = _xl;      // $0: xl
	        dg_terrain_draw[#_i,$1] = _yt;      // $1: yt
	        dg_terrain_draw[#_i,$2] = _tile_w;  // $2: tile width
	        dg_terrain_draw[#_i,$3] = _tile_h;  // $3: tile height
        
        
        
	        _grid_clm = tsrc_grid_clm_base + _clm;
	        _grid_row = tsrc_grid_row_base + _row;
	        _owrc = (_grid_row<<8) | _grid_clm;
        
	        _tsrc1  = g.overworld.dg_tsrc[#_grid_clm,_grid_row];
	        _tsrc1 &= $FF;
        
	        _tsrc2 = -1;
	        _tsrc3 = -1;
        
	        if (_tsrc1==$00   // Water - deep
	        ||  _tsrc1==$04   // Water - shallow
	        ||  _tsrc1==$06 ) // Water - shallow
	        {
	            if (_tsrc1==$00) _tsrc2 = $82; // Water - deep
	            else             _tsrc2 = $86; // Water - shallow
	            _tsrc2 += _grid_clm&$1;
	            _tsrc2 += (!(g.counter0&$40))<<1;
	            _tsrc2 +=(_grid_row&$1)<<4;
	        }
	        else
	        {
	            _tsrc2 = val(dm_terrain[?STR_TSRC+"_16x16_to_8x8_"+"_Layer1"+hex_str(_tsrc1)], -1);
	        }
        
        
        
	        if (_tsrc2!=-1)
	        {
	            _tsrc3 = val(dm_terrain[?STR_TSRC+"_16x16_to_8x8_"+"_Layer2"+hex_str(_tsrc1)], -1);
            
	            if (_tsrc3==$E8) // River Devil
	            {
	                _tsrc3 += sign(g.counter0&$40);
	            }
	            else if (_tsrc3==-1)
	            {
	                _tsrc4 = -1;
                
	                if (_tsrc1==TSRC_TREE01 
	                ||  _tsrc1==TSRC_TREE02 
	                ||  _tsrc1==TSRC_TREE03 
	                ||  _tsrc1==TSRC_TREE04 
	                ||  _tsrc1==TSRC_TREE04+1 
	                ||  _tsrc1==TSRC_TREE04+2 )
	                {
	                    _tsrc4 = _tsrc1;
	                    _tsrcA = g.overworld.dg_tsrc[#_grid_clm-1,_grid_row]&$FF; // Left of _owrc
	                    if (_tsrcA==TSRC_TREE01 
	                    ||  _tsrcA==TSRC_TREE02 
	                    ||  _tsrcA==TSRC_TREE03 
	                    ||  _tsrcA==TSRC_TREE04 
	                    ||  _tsrcA==TSRC_TREE04+1 
	                    ||  _tsrcA==TSRC_TREE04+2 )
	                    {
	                        _tsrc3 = $00;
	                    }
	                    else
	                    {
	                        _tsrc3 = $01;
	                    }
	                }
	                else
	                {
	                    _tsrcA = g.overworld.dg_tsrc[#_grid_clm-1,_grid_row]&$FF; // Left of _owrc
	                    _is_treeA = isVal(_tsrcA,TSRC_TREE01,TSRC_TREE02,TSRC_TREE03,TSRC_TREE04,TSRC_TREE04+1,TSRC_TREE04+2); // Left of _owrc
	                    _tsrcB = g.overworld.dg_tsrc[#_grid_clm,_grid_row+1]&$FF; // Under _owrc
	                    _is_treeB = isVal(_tsrcB,TSRC_TREE01,TSRC_TREE02,TSRC_TREE03,TSRC_TREE04,TSRC_TREE04+1,TSRC_TREE04+2); // Under _owrc
                    
	                    if (_is_treeA   // Left of _owrc
	                    ||  _is_treeB ) // Under _owrc
	                    {
	                        if (_is_treeA 
	                        &&  _is_treeB )
	                        {
	                            _tsrc4 = _tsrcA;
	                            _tsrc3 = $07; // Tree top + right tree edge for upper left tree
	                        }
	                        else if (_is_treeA)
	                        {
	                            _tsrc4 = _tsrcA;
	                            _tsrc3 = $06; // Right tree edge
	                        }
	                        else
	                        {
	                            _tsrc4 = _tsrcB;
	                            _tsrc3 = $05; // Right tree edge
	                        }
	                    }
	                }
                
	                if (_tsrc3!=-1 
	                &&  _tsrc4!=-1 )
	                {
	                    if (_tsrc4==TSRC_TREE02     // $31 orange - reg
	                    ||  _tsrc4==TSRC_TREE04+2   // $35 orange - water
	                    ||  _tsrc4==TSRC_TREE03     // $32 dark green - bright grass
	                    ||  _tsrc4==TSRC_TREE04 )   // $33 dark green - mid grass
	                    {
	                        if (_tsrc4==TSRC_TREE02     // $31 orange - reg
	                        ||  _tsrc4==TSRC_TREE04+2 ) // $35 orange - water
	                        {
	                            _tsrc3 += $10; // Orange tree
	                        }
	                        else
	                        {
	                            _tsrc3 += $08; // Dark green tree
	                        }
	                    }
	                }
	            }
	        }
        
        
        
	        if (_tsrc2!=-1)
	        {
	            _ts_x  = ((_tsrc2>>0)&$F) <<3; // Tileset's 8x8 tile's left
	            _ts_x += _ts_xoff;
            
	            _ts_y  = ((_tsrc2>>4)&$F) <<3; // Tileset's 8x8 tile's top
	            _ts_y += _ts_yoff;
            
	            dg_terrain_draw[#_i,$4] = true; // $5: can draw
	            dg_terrain_draw[#_i,$5] = ts_Overworld_8x8_01; // $6: Layer 1 tileset
	            dg_terrain_draw[#_i,$6] = _ts_x; // $6: Layer 1 _ts_x
	            dg_terrain_draw[#_i,$7] = _ts_y; // $7: Layer 1 _ts_y
	        }
        
        
	        if (_tsrc3!=-1)
	        {
	            _ts_x  = ((_tsrc3>>0)&$F) <<3; // Tileset's 8x8 tile's left
	            _ts_x += _ts_xoff;
            
	            _ts_y  = ((_tsrc3>>4)&$F) <<3; // Tileset's 8x8 tile's top
	            _ts_y += _ts_yoff;
            
	            dg_terrain_draw[#_i,$8] = true; // $8: can draw
	            dg_terrain_draw[#_i,$9] = ts_Overworld_8x8_01; // $9: Layer 2 tileset
	            dg_terrain_draw[#_i,$A] = _ts_x; // $A: Layer 2 _ts_x
	            dg_terrain_draw[#_i,$B] = _ts_y; // $B: Layer 2 _ts_y
	        }
	    }
	}




	Window_w = CLMS_WIN_DEF + Window_extra_draw_clms;
	Window_w = Window_w<<3;

	var _SECTIONS = clamp(canDrawSections, 1, ANIM_FRAMES_DEF);
	Window_h  = _SECTIONS<<1;
	Window_h += (array_length_2d(ar_win_tdata_spl, _SECTIONS-1) &$1); // extra row
	Window_h  = Window_h<<3;


	Window_vertical_draw_section_count = clamp(canDrawSections, 1, ANIM_FRAMES_DEF);

	Window_spell_menu_window_xl = get_menu_x(); // xl for Spell & Item only
	Window_xr = Window_spell_menu_window_xl + (CLMS_WIN_DEF<<3);
	Window_yt = drawY;
	Window_yb = drawY + Window_h;

	Window_filler_clms = max(0, Window_extra_draw_clms-2);


	Items_Bar1_can_draw = drawY+ITEMS_BAR1_Y+4 < Window_yb; // Main & Quest items separator
	Items_Bar1_x = Window_spell_menu_window_xl + 8;
	Items_Bar1_y = drawY + ITEMS_BAR1_Y;

	Items_Bar2_can_draw = drawY+ITEMS_BAR2_Y+2 < Window_yb; // Crystals top bar
	Items_Bar2_x = Window_spell_menu_window_xl + 8;
	Items_Bar2_y = drawY + ITEMS_BAR2_Y;

	Items_Bar3_can_draw = drawY+ITEMS_BAR3_Y+3 < Window_yb; // Crystals btm bar
	Items_Bar3_x = Items_Bar2_x;
	Items_Bar3_y = drawY + ITEMS_BAR3_Y;







}
