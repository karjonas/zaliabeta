/// @description  Gellzem_end()
function Gellzem_end() {


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




	    _exists = variable_instance_exists(id,  "dl_eye_spr");
	if (_exists) _exists =      !is_undefined(   dl_eye_spr);
	if (_exists) _exists =       ds_exists(      dl_eye_spr, ds_type_list);
	if (_exists)                 ds_list_destroy(dl_eye_spr);
	if (_exists)                                 dl_eye_spr = undefined;

	    _exists = variable_instance_exists(id,  "dl_pal_idx");
	if (_exists) _exists =      !is_undefined(   dl_pal_idx);
	if (_exists) _exists =       ds_exists(      dl_pal_idx, ds_type_list);
	if (_exists)                 ds_list_destroy(dl_pal_idx);
	if (_exists)                                 dl_pal_idx = undefined;

	    _exists = variable_instance_exists(id,  "dl_xscale");
	if (_exists) _exists =      !is_undefined(   dl_xscale);
	if (_exists) _exists =       ds_exists(      dl_xscale, ds_type_list);
	if (_exists)                 ds_list_destroy(dl_xscale);
	if (_exists)                                 dl_xscale = undefined;

	    _exists = variable_instance_exists(id,  "dl_hb_x");
	if (_exists) _exists =      !is_undefined(   dl_hb_x);
	if (_exists) _exists =       ds_exists(      dl_hb_x, ds_type_list);
	if (_exists)                 ds_list_destroy(dl_hb_x);
	if (_exists)                                 dl_hb_x = undefined;

	    _exists = variable_instance_exists(id,  "dl_hb_y");
	if (_exists) _exists =      !is_undefined(   dl_hb_y);
	if (_exists) _exists =       ds_exists(      dl_hb_y, ds_type_list);
	if (_exists)                 ds_list_destroy(dl_hb_y);
	if (_exists)                                 dl_hb_y = undefined;

	    _exists = variable_instance_exists(id,  "dl_tmr_revive");
	if (_exists) _exists =      !is_undefined(   dl_tmr_revive);
	if (_exists) _exists =       ds_exists(      dl_tmr_revive, ds_type_list);
	if (_exists)                 ds_list_destroy(dl_tmr_revive);
	if (_exists)                                 dl_tmr_revive = undefined;







}
