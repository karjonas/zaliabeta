/// @description  DialogueWindow_Game_End()
function DialogueWindow_Game_End() {


	var i;
	var _exists = false;
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


	ar_lines_written    = 0;

	if (surface_exists(WINDOW_FRAME1_SRF))
	{   surface_free(  WINDOW_FRAME1_SRF);  }

	if (surface_exists(WINDOW_FRAME2_SRF))
	{   surface_free(  WINDOW_FRAME2_SRF);  }





	    _exists = variable_instance_exists(id,  "dm_dialogue");
	if (_exists) _exists =      !is_undefined(   dm_dialogue);
	if (_exists) _exists =       ds_exists(      dm_dialogue, ds_type_map);
	if (_exists)                 ds_map_destroy( dm_dialogue);
	if (_exists)                                 dm_dialogue = undefined;




	    _exists = variable_instance_exists(id,  "dg_dlg");
	if (_exists) _exists =      !is_undefined(   dg_dlg);
	if (_exists) _exists =       ds_exists(      dg_dlg, ds_type_grid);
	if (_exists)                 ds_grid_destroy(dg_dlg);
	if (_exists)                                 dg_dlg = undefined;

	    _exists=variable_instance_exists(id,"dg_DIALOGUE_DELAYS");
	if (_exists) _exists = !is_undefined(    dg_DIALOGUE_DELAYS);
	if (_exists) _exists = ds_exists(        dg_DIALOGUE_DELAYS,ds_type_grid);
	if (_exists)           ds_grid_destroy(  dg_DIALOGUE_DELAYS);
	if (_exists)                             dg_DIALOGUE_DELAYS=undefined;







}
