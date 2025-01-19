function GameObjectMgr_Game_End() {



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



	    _exists = variable_instance_exists(id,  "dl_gob1");
	if (_exists) _exists =      !is_undefined(   dl_gob1);
	if (_exists) _exists =       ds_exists(      dl_gob1, ds_type_list);
	if (_exists)                 ds_list_destroy(dl_gob1);
	if (_exists)                                 dl_gob1 = undefined;

	    _exists = variable_instance_exists(id,  "dl_gob2");
	if (_exists) _exists =      !is_undefined(   dl_gob2);
	if (_exists) _exists =       ds_exists(      dl_gob2, ds_type_list);
	if (_exists)                 ds_list_destroy(dl_gob2);
	if (_exists)                                 dl_gob2 = undefined;

	    _exists = variable_instance_exists(id,  "dl_goc1");
	if (_exists) _exists =      !is_undefined(   dl_goc1);
	if (_exists) _exists =       ds_exists(      dl_goc1, ds_type_list);
	if (_exists)                 ds_list_destroy(dl_goc1);
	if (_exists)                                 dl_goc1 = undefined;

	    _exists = variable_instance_exists(id,  "dl_goc2");
	if (_exists) _exists =      !is_undefined(   dl_goc2);
	if (_exists) _exists =       ds_exists(      dl_goc2, ds_type_list);
	if (_exists)                 ds_list_destroy(dl_goc2);
	if (_exists)                                 dl_goc2 = undefined;






	    _exists = variable_instance_exists(id,  "dg_go_inst");
	if (_exists) _exists =      !is_undefined(   dg_go_inst);
	if (_exists) _exists =       ds_exists(      dg_go_inst, ds_type_grid);
	if (_exists)                 ds_grid_destroy(dg_go_inst);
	if (_exists)                                 dg_go_inst = undefined;








}
