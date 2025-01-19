function PauseMenu_GameEnd() {
	// PauseMenu_GameEnd()


	/*
	var _exists = false;


	    _exists=variable_instance_exists(id,"dl_");
	if (_exists) _exists = !is_undefined(    dl_);
	if (_exists) _exists = ds_exists(        dl_,ds_type_list);
	if (_exists)           ds_list_destroy(  dl_);
	if (_exists)                             dl_=undefined;

	    _exists=variable_instance_exists(id,"dm_");
	if (_exists) _exists = !is_undefined(    dm_);
	if (_exists) _exists = ds_exists(        dm_,ds_type_map);
	if (_exists)           ds_map_destroy(   dm_);
	if (_exists)                             dm_=undefined;

	    _exists=variable_instance_exists(id,"dg_");
	if (_exists) _exists = !is_undefined(    dg_);
	if (_exists) _exists = ds_exists(        dg_,ds_type_grid);
	if (_exists)           ds_grid_destroy(  dg_);
	if (_exists)                             dg_=undefined;

	    _exists=variable_instance_exists(id,"ds_");
	if (_exists) _exists = !is_undefined(    ds_);
	if (_exists) _exists = ds_exists(        ds_,ds_type_stack);
	if (_exists)           ds_stack_destroy( ds_);
	if (_exists)                             ds_=undefined;
	*/






	var _exists = false;






	    _exists=variable_instance_exists(id,"dm_terrain");
	if (_exists) _exists = !is_undefined(    dm_terrain);
	if (_exists) _exists = ds_exists(        dm_terrain,ds_type_map);
	if (_exists)           ds_map_destroy(   dm_terrain);
	if (_exists)                             dm_terrain=undefined;

	/*
	    _exists = variable_instance_exists(id,  "dm_DungeonMap");
	if (_exists) _exists =      !is_undefined(   dm_DungeonMap);
	if (_exists) _exists =       ds_exists(      dm_DungeonMap, ds_type_map);
	if (_exists)                 ds_map_destroy( dm_DungeonMap);
	if (_exists)                                 dm_DungeonMap = undefined;
	*/




	             _exists = variable_instance_exists(id,  "dg_map_edge");
	if (_exists) _exists =               !is_undefined(   dg_map_edge);
	if (_exists) _exists =                ds_exists(      dg_map_edge, ds_type_grid);
	if (_exists)                          ds_grid_destroy(dg_map_edge);
	if (_exists)                                          dg_map_edge = undefined;

	             _exists = variable_instance_exists(id,  "dg_dngn_map");
	if (_exists) _exists =               !is_undefined(   dg_dngn_map);
	if (_exists) _exists =                ds_exists(      dg_dngn_map, ds_type_grid);
	if (_exists)                          ds_grid_destroy(dg_dngn_map);
	if (_exists)                                          dg_dngn_map = undefined;

	             _exists = variable_instance_exists(id,  "dg_dngn_map_1");
	if (_exists) _exists =               !is_undefined(   dg_dngn_map_1);
	if (_exists) _exists =                ds_exists(      dg_dngn_map_1, ds_type_grid);
	if (_exists)                          ds_grid_destroy(dg_dngn_map_1);
	if (_exists)                                          dg_dngn_map_1 = undefined;

	             _exists = variable_instance_exists(id,  "dg_dngn_map_2");
	if (_exists) _exists =               !is_undefined(   dg_dngn_map_2);
	if (_exists) _exists =                ds_exists(      dg_dngn_map_2, ds_type_grid);
	if (_exists)                          ds_grid_destroy(dg_dngn_map_2);
	if (_exists)                                          dg_dngn_map_2 = undefined;

	             _exists = variable_instance_exists(id,  "dg_dngn_map_3");
	if (_exists) _exists =               !is_undefined(   dg_dngn_map_3);
	if (_exists) _exists =                ds_exists(      dg_dngn_map_3, ds_type_grid);
	if (_exists)                          ds_grid_destroy(dg_dngn_map_3);
	if (_exists)                                          dg_dngn_map_3 = undefined;

	             _exists = variable_instance_exists(id,  "dg_dngn_map_4");
	if (_exists) _exists =               !is_undefined(   dg_dngn_map_4);
	if (_exists) _exists =                ds_exists(      dg_dngn_map_4, ds_type_grid);
	if (_exists)                          ds_grid_destroy(dg_dngn_map_4);
	if (_exists)                                          dg_dngn_map_4 = undefined;

	             _exists = variable_instance_exists(id,  "dg_dngn_map_5");
	if (_exists) _exists =               !is_undefined(   dg_dngn_map_5);
	if (_exists) _exists =                ds_exists(      dg_dngn_map_5, ds_type_grid);
	if (_exists)                          ds_grid_destroy(dg_dngn_map_5);
	if (_exists)                                          dg_dngn_map_5 = undefined;

	             _exists = variable_instance_exists(id,  "dg_dngn_map_6");
	if (_exists) _exists =               !is_undefined(   dg_dngn_map_6);
	if (_exists) _exists =                ds_exists(      dg_dngn_map_6, ds_type_grid);
	if (_exists)                          ds_grid_destroy(dg_dngn_map_6);
	if (_exists)                                          dg_dngn_map_6 = undefined;

	             _exists = variable_instance_exists(id,  "dg_dngn_map_7");
	if (_exists) _exists =               !is_undefined(   dg_dngn_map_7);
	if (_exists) _exists =                ds_exists(      dg_dngn_map_7, ds_type_grid);
	if (_exists)                          ds_grid_destroy(dg_dngn_map_7);
	if (_exists)                                          dg_dngn_map_7 = undefined;

	             _exists = variable_instance_exists(id,  "dg_dngn_map_8");
	if (_exists) _exists =               !is_undefined(   dg_dngn_map_8);
	if (_exists) _exists =                ds_exists(      dg_dngn_map_8, ds_type_grid);
	if (_exists)                          ds_grid_destroy(dg_dngn_map_8);
	if (_exists)                                          dg_dngn_map_8 = undefined;



	    _exists=variable_instance_exists(id,"dg_dngn_map_1_DEFAULT");
	if (_exists) _exists = !is_undefined(    dg_dngn_map_1_DEFAULT);
	if (_exists) _exists = ds_exists(        dg_dngn_map_1_DEFAULT,ds_type_grid);
	if (_exists)           ds_grid_destroy(  dg_dngn_map_1_DEFAULT);
	if (_exists)                             dg_dngn_map_1_DEFAULT=undefined;

	    _exists=variable_instance_exists(id,"dg_dngn_map_2_DEFAULT");
	if (_exists) _exists = !is_undefined(    dg_dngn_map_2_DEFAULT);
	if (_exists) _exists = ds_exists(        dg_dngn_map_2_DEFAULT,ds_type_grid);
	if (_exists)           ds_grid_destroy(  dg_dngn_map_2_DEFAULT);
	if (_exists)                             dg_dngn_map_2_DEFAULT=undefined;

	    _exists=variable_instance_exists(id,"dg_dngn_map_3_DEFAULT");
	if (_exists) _exists = !is_undefined(    dg_dngn_map_3_DEFAULT);
	if (_exists) _exists = ds_exists(        dg_dngn_map_3_DEFAULT,ds_type_grid);
	if (_exists)           ds_grid_destroy(  dg_dngn_map_3_DEFAULT);
	if (_exists)                             dg_dngn_map_3_DEFAULT=undefined;

	    _exists=variable_instance_exists(id,"dg_dngn_map_4_DEFAULT");
	if (_exists) _exists = !is_undefined(    dg_dngn_map_4_DEFAULT);
	if (_exists) _exists = ds_exists(        dg_dngn_map_4_DEFAULT,ds_type_grid);
	if (_exists)           ds_grid_destroy(  dg_dngn_map_4_DEFAULT);
	if (_exists)                             dg_dngn_map_4_DEFAULT=undefined;

	    _exists=variable_instance_exists(id,"dg_dngn_map_5_DEFAULT");
	if (_exists) _exists = !is_undefined(    dg_dngn_map_5_DEFAULT);
	if (_exists) _exists = ds_exists(        dg_dngn_map_5_DEFAULT,ds_type_grid);
	if (_exists)           ds_grid_destroy(  dg_dngn_map_5_DEFAULT);
	if (_exists)                             dg_dngn_map_5_DEFAULT=undefined;

	    _exists=variable_instance_exists(id,"dg_dngn_map_6_DEFAULT");
	if (_exists) _exists = !is_undefined(    dg_dngn_map_6_DEFAULT);
	if (_exists) _exists = ds_exists(        dg_dngn_map_6_DEFAULT,ds_type_grid);
	if (_exists)           ds_grid_destroy(  dg_dngn_map_6_DEFAULT);
	if (_exists)                             dg_dngn_map_6_DEFAULT=undefined;

	    _exists=variable_instance_exists(id,"dg_dngn_map_7_DEFAULT");
	if (_exists) _exists = !is_undefined(    dg_dngn_map_7_DEFAULT);
	if (_exists) _exists = ds_exists(        dg_dngn_map_7_DEFAULT,ds_type_grid);
	if (_exists)           ds_grid_destroy(  dg_dngn_map_7_DEFAULT);
	if (_exists)                             dg_dngn_map_7_DEFAULT=undefined;

	    _exists=variable_instance_exists(id,"dg_dngn_map_8_DEFAULT");
	if (_exists) _exists = !is_undefined(    dg_dngn_map_8_DEFAULT);
	if (_exists) _exists = ds_exists(        dg_dngn_map_8_DEFAULT,ds_type_grid);
	if (_exists)           ds_grid_destroy(  dg_dngn_map_8_DEFAULT);
	if (_exists)                             dg_dngn_map_8_DEFAULT=undefined;

	    _exists=variable_instance_exists(id,"dg_icons1");
	if (_exists) _exists = !is_undefined(    dg_icons1);
	if (_exists) _exists = ds_exists(        dg_icons1,ds_type_grid);
	if (_exists)           ds_grid_destroy(  dg_icons1);
	if (_exists)                             dg_icons1=undefined;

	    _exists=variable_instance_exists(id,"dg_terrain_draw");
	if (_exists) _exists = !is_undefined(    dg_terrain_draw);
	if (_exists) _exists = ds_exists(        dg_terrain_draw,ds_type_grid);
	if (_exists)           ds_grid_destroy(  dg_terrain_draw);
	if (_exists)                             dg_terrain_draw=undefined;





	ar_spell_str = 0

	// sprData = 0;

	ar_map_anim_data = 0;

	ar_win_tdata_spl = 0;
	ar_win_tdata_itm = 0;
	ar_win_tdata_map = 0;





}
