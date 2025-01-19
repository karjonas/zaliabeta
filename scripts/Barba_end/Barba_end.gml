/// @description  Barba_end()
function Barba_end() {


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



	    _exists = variable_instance_exists(id,  "dl_xoff");
	if (_exists) _exists =      !is_undefined(   dl_xoff);
	if (_exists) _exists =       ds_exists(      dl_xoff,ds_type_list);
	if (_exists)                 ds_list_destroy(dl_xoff);
	if (_exists)                                 dl_xoff=undefined;




	    _exists = variable_instance_exists(id,  "dg_PITS");
	if (_exists) _exists =      !is_undefined(   dg_PITS);
	if (_exists) _exists =       ds_exists(      dg_PITS,ds_type_grid);
	if (_exists)                 ds_grid_destroy(dg_PITS);
	if (_exists)                                 dg_PITS=undefined;

	    _exists = variable_instance_exists(id,  "dg_PROJ_SPEED");
	if (_exists) _exists =      !is_undefined(   dg_PROJ_SPEED);
	if (_exists) _exists =       ds_exists(      dg_PROJ_SPEED,ds_type_grid);
	if (_exists)                 ds_grid_destroy(dg_PROJ_SPEED);
	if (_exists)                                 dg_PROJ_SPEED=undefined;







}
