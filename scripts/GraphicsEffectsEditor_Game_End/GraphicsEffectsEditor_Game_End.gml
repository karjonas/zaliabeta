/// @description  GraphicsEffectsEditor_Game_End()
function GraphicsEffectsEditor_Game_End() {


	var _exists = false;

	/*
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

	    _exists=variable_instance_exists(id,"dk_");
	if (_exists) _exists = !is_undefined(    dk_);
	if (_exists) _exists = ds_exists(        dk_,ds_type_stack);
	if (_exists)           ds_stack_destroy( dk_);
	if (_exists)                             dk_=undefined;
	*/







	    _exists=variable_instance_exists(id,"dm");
	if (_exists) _exists = !is_undefined(    dm);
	if (_exists) _exists = ds_exists(        dm,ds_type_map);
	if (_exists)           ds_map_destroy(   dm);
	if (_exists)                             dm=undefined;








	    _exists=variable_instance_exists(id,"dg_Main");
	if (_exists) _exists = !is_undefined(    dg_Main);
	if (_exists) _exists = ds_exists(        dg_Main,ds_type_grid);
	if (_exists)           ds_grid_destroy(  dg_Main);
	if (_exists)                             dg_Main=undefined;

	    _exists=variable_instance_exists(id,"dg_Brightness");
	if (_exists) _exists = !is_undefined(    dg_Brightness);
	if (_exists) _exists = ds_exists(        dg_Brightness,ds_type_grid);
	if (_exists)           ds_grid_destroy(  dg_Brightness);
	if (_exists)                             dg_Brightness=undefined;

	    _exists=variable_instance_exists(id,"dg_Saturation");
	if (_exists) _exists = !is_undefined(    dg_Saturation);
	if (_exists) _exists = ds_exists(        dg_Saturation,ds_type_grid);
	if (_exists)           ds_grid_destroy(  dg_Saturation);
	if (_exists)                             dg_Saturation=undefined;

	    _exists=variable_instance_exists(id,"dg_Scanlines");
	if (_exists) _exists = !is_undefined(    dg_Scanlines);
	if (_exists) _exists = ds_exists(        dg_Scanlines,ds_type_grid);
	if (_exists)           ds_grid_destroy(  dg_Scanlines);
	if (_exists)                             dg_Scanlines=undefined;

	    _exists=variable_instance_exists(id,"dg_Bloom");
	if (_exists) _exists = !is_undefined(    dg_Bloom);
	if (_exists) _exists = ds_exists(        dg_Bloom,ds_type_grid);
	if (_exists)           ds_grid_destroy(  dg_Bloom);
	if (_exists)                             dg_Bloom=undefined;
	/*
	    _exists=variable_instance_exists(id,"dg_BloomEdit");
	if (_exists) _exists = !is_undefined(    dg_BloomEdit);
	if (_exists) _exists = ds_exists(        dg_BloomEdit,ds_type_grid);
	if (_exists)           ds_grid_destroy(  dg_BloomEdit);
	if (_exists)                             dg_BloomEdit=undefined;
	*/
	    _exists=variable_instance_exists(id,"dg_Blur");
	if (_exists) _exists = !is_undefined(    dg_Blur);
	if (_exists) _exists = ds_exists(        dg_Blur,ds_type_grid);
	if (_exists)           ds_grid_destroy(  dg_Blur);
	if (_exists)                             dg_Blur=undefined;







}
