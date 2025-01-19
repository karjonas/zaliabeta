/// @description  Kakusu_end()
function Kakusu_end() {


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



	if (object_index==Kakusu003) // Darunia basement
	{
	        _exists = variable_instance_exists(id,  "dg_sequence");
	    if (_exists) _exists =      !is_undefined(   dg_sequence);
	    if (_exists) _exists =       ds_exists(      dg_sequence, ds_type_grid);
	    if (_exists)                 ds_grid_destroy(dg_sequence);
	    if (_exists)                                 dg_sequence = undefined;
	}

	switch(object_index)
	{
	    // --------------------------------------------------------------
	    case Kakusu005:{
	        _exists = variable_instance_exists(id,  "dl_BreakTile_rc");
	    if (_exists) _exists =      !is_undefined(   dl_BreakTile_rc);
	    if (_exists) _exists =       ds_exists(      dl_BreakTile_rc, ds_type_list);
	    if (_exists)                 ds_list_destroy(dl_BreakTile_rc);
	    if (_exists)                                 dl_BreakTile_rc = undefined;
	    break;}
    
    
    
    
	    // --------------------------------------------------------------
	    case Kakusu011:{
	        _exists = variable_instance_exists(id,  "dl_spell_seq");
	    if (_exists) _exists =      !is_undefined(   dl_spell_seq);
	    if (_exists) _exists =       ds_exists(      dl_spell_seq, ds_type_list);
	    if (_exists)                 ds_list_destroy(dl_spell_seq);
	    if (_exists)                                 dl_spell_seq = undefined;
	    break;}
	}







}
