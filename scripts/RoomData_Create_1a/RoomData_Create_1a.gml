/// @description  RoomData_Create_1a()
function RoomData_Create_1a() {

	// Reset some properties


	rm_num  = 0;
	rm_name = "";

	area = undefined;

	var _VAL = $400;

	map_clms        = -1;
	map_clm         =  0;
	map_clm_rgt     = -1;
	map_clm_lft     = -1;
	map_clm_off     =  0;

	map_rows        = -1;
	map_row         =  0;
	map_row_btm     = -1;
	map_row_top     = -1;
	map_row_off     =  0;

	map_clm_rgt     = -_VAL;
	map_clm_lft     =  _VAL;
	map_row_btm     = -_VAL;
	map_row_top     =  _VAL;

	dungeon_map_tile_count = 0;


	ds_map_clear(dm_dungeon_map_rc);
	ds_list_clear(dl_dungeon_map_clm);
	ds_list_clear(dl_dungeon_map_row);


	with(g.PAUSE_MENU)
	{
	    ds_grid_resize(dg_dngn_map, 0,DUNGEON_MAP_ROWS_DEFAULT);
	    //ds_grid_resize(dg_dngn_map, DUNGEON_MAP_CLMS_DEFAULT,DUNGEON_MAP_ROWS_DEFAULT);
	    ds_grid_clear( dg_dngn_map, 0);
	}







}
