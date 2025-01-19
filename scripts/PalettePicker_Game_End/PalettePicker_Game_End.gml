/// @description  PalettePicker_Game_End()
function PalettePicker_Game_End() {


	/*
	var          _exists = false;


	             _exists = variable_instance_exists(id,  "dl_");
	if (_exists) _exists =               !is_undefined(   dl_);
	if (_exists) _exists =                ds_exists(      dl_, ds_type_list);
	if (_exists)                          ds_list_destroy(dl_);
	if (_exists)                                          dl_ = undefined;

	             _exists = variable_instance_exists(id,  "dm_");
	if (_exists) _exists =               !is_undefined(   dm_);
	if (_exists) _exists =                ds_exists(      dm_, ds_type_map);
	if (_exists)                          ds_map_destroy( dm_);
	if (_exists)                                          dm_ = undefined;

	             _exists = variable_instance_exists(id,  "dg_");
	if (_exists) _exists =               !is_undefined(   dg_);
	if (_exists) _exists =                ds_exists(      dg_, ds_type_grid);
	if (_exists)                          ds_grid_destroy(dg_);
	if (_exists)                                          dg_ = undefined;
	*/



	var          _exists = false;





	             _exists = variable_instance_exists(id,  "dl_hist_sess");
	if (_exists) _exists =               !is_undefined(   dl_hist_sess);
	if (_exists) _exists =                ds_exists(      dl_hist_sess, ds_type_list);
	if (_exists)                          ds_list_destroy(dl_hist_sess);
	if (_exists)                                          dl_hist_sess = undefined;

	             _exists = variable_instance_exists(id,  "dl_hist_room");
	if (_exists) _exists =               !is_undefined(   dl_hist_room);
	if (_exists) _exists =                ds_exists(      dl_hist_room, ds_type_list);
	if (_exists)                          ds_list_destroy(dl_hist_room);
	if (_exists)                                          dl_hist_room = undefined;







}
