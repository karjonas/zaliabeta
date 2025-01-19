/// @description  Ganon2_end()
function Ganon2_end() {


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


	    _exists = variable_instance_exists(id,  "dg_Positions");
	if (_exists) _exists =      !is_undefined(   dg_Positions);
	if (_exists) _exists =       ds_exists(      dg_Positions, ds_type_grid);
	if (_exists)                 ds_grid_destroy(dg_Positions);
	if (_exists)                                 dg_Positions = undefined;


	    _exists = variable_instance_exists(id,  "dg_Form3_SPRITES");
	if (_exists) _exists =      !is_undefined(   dg_Form3_SPRITES);
	if (_exists) _exists =       ds_exists(      dg_Form3_SPRITES, ds_type_grid);
	if (_exists)                 ds_grid_destroy(dg_Form3_SPRITES);
	if (_exists)                                 dg_Form3_SPRITES = undefined;







}
