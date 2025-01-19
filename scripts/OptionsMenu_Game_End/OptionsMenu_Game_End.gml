/// @description  OptionsMenu_Game_End()
function OptionsMenu_Game_End() {


	//ar_TSRC_DATA    = 0;
	//ar_text         = 0;




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



	var          _exists = false;









	    _exists=variable_instance_exists(id,"dm_AudioCustom");
	if (_exists) _exists = !is_undefined(    dm_AudioCustom);
	if (_exists) _exists = ds_exists(        dm_AudioCustom,ds_type_map);
	if (_exists)           ds_map_destroy(   dm_AudioCustom);
	if (_exists)                             dm_AudioCustom=undefined;








	    _exists = variable_instance_exists(id,  "dg_MainOptions");
	if (_exists) _exists =      !is_undefined(   dg_MainOptions);
	if (_exists) _exists =       ds_exists(      dg_MainOptions,ds_type_grid);
	if (_exists)                 ds_grid_destroy(dg_MainOptions);
	if (_exists)                                 dg_MainOptions=undefined;

	    _exists = variable_instance_exists(id,  "dg_InputConfigOptions");
	if (_exists) _exists =      !is_undefined(   dg_InputConfigOptions);
	if (_exists) _exists =       ds_exists(      dg_InputConfigOptions,ds_type_grid);
	if (_exists)                 ds_grid_destroy(dg_InputConfigOptions);
	if (_exists)                                 dg_InputConfigOptions=undefined;

	    _exists = variable_instance_exists(id,  "dg_DevTools");
	if (_exists) _exists =      !is_undefined(   dg_DevTools);
	if (_exists) _exists =       ds_exists(      dg_DevTools,ds_type_grid);
	if (_exists)                 ds_grid_destroy(dg_DevTools);
	if (_exists)                                 dg_DevTools=undefined;

	    _exists=variable_instance_exists(id,"dg_RandoOptions");
	if (_exists) _exists = !is_undefined(    dg_RandoOptions);
	if (_exists) _exists = ds_exists(        dg_RandoOptions,ds_type_grid);
	if (_exists)           ds_grid_destroy(  dg_RandoOptions);
	if (_exists)                             dg_RandoOptions=undefined;







}
