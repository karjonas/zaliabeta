/// @description  PauseMenu_Draw_map_Overworld8x8()
function PauseMenu_Draw_map_Overworld8x8() {


	var _i;
	var _xl,_yt;
	var _ts, _ts_x,_ts_y, _tile_w,_tile_h;


	var          _TILE_COUNT = ds_grid_width(dg_terrain_draw);
	for(_i=0; _i<_TILE_COUNT; _i++)
	{
	    if (dg_terrain_draw[#_i,$4]) // can draw
	    {
	        _xl     = dg_terrain_draw[#_i,$0];
	        _yt     = dg_terrain_draw[#_i,$1];
	        _tile_w = dg_terrain_draw[#_i,$2];
	        _tile_h = dg_terrain_draw[#_i,$3];
        
        
	        _ts   = dg_terrain_draw[#_i,$5];
	        _ts_x = dg_terrain_draw[#_i,$6];
	        _ts_y = dg_terrain_draw[#_i,$7];
	        draw_background_part(_ts, _ts_x,_ts_y, _tile_w,_tile_h, _xl,_yt);
        
	        if (dg_terrain_draw[#_i,$8]) // can draw
	        {
	            _ts   = dg_terrain_draw[#_i,$9];
	            _ts_x = dg_terrain_draw[#_i,$A];
	            _ts_y = dg_terrain_draw[#_i,$B];
	            draw_background_part(_ts, _ts_x,_ts_y, _tile_w,_tile_h, _xl,_yt);
	        }
	    }
	}


	//draw_line_colour(terrain_tile_xl_base,viewYT(),terrain_tile_xl_base,viewYB(), c_green,c_green);
	//draw_line_colour(terrain_draw_area_xl,viewYT(),terrain_draw_area_xl,viewYB(), c_fuchsia,c_fuchsia);







}
