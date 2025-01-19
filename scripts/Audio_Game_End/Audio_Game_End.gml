/// @description  Audio_Game_End()
function Audio_Game_End() {


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



	    _exists = variable_instance_exists(id,  "dl_snd_fire");
	if (_exists) _exists =      !is_undefined(   dl_snd_fire);
	if (_exists) _exists =       ds_exists(      dl_snd_fire, ds_type_list);
	if (_exists)                 ds_list_destroy(dl_snd_fire);
	if (_exists)                                 dl_snd_fire = undefined;

	    _exists = variable_instance_exists(id,  "dl_AUDIO_SETS");
	if (_exists) _exists =      !is_undefined(   dl_AUDIO_SETS);
	if (_exists) _exists =       ds_exists(      dl_AUDIO_SETS, ds_type_list);
	if (_exists)                 ds_list_destroy(dl_AUDIO_SETS);
	if (_exists)                                 dl_AUDIO_SETS = undefined;

	    _exists=variable_instance_exists(id,"global.dl_Halloween_TOWN_MUSIC");
	if (_exists) _exists = !is_undefined(    global.dl_Halloween_TOWN_MUSIC);
	if (_exists) _exists = ds_exists(        global.dl_Halloween_TOWN_MUSIC,ds_type_list);
	if (_exists)           ds_list_destroy(  global.dl_Halloween_TOWN_MUSIC);
	if (_exists)                             global.dl_Halloween_TOWN_MUSIC=undefined;





	    _exists = variable_instance_exists(id,  "dm");
	if (_exists) _exists =      !is_undefined(   dm);
	if (_exists) _exists =       ds_exists(      dm, ds_type_map);
	if (_exists)                 ds_map_destroy( dm);
	if (_exists)                                 dm = undefined;

	    _exists=variable_instance_exists(id,"dm_music_inst");
	if (_exists) _exists = !is_undefined(    dm_music_inst);
	if (_exists) _exists = ds_exists(        dm_music_inst,ds_type_map);
	if (_exists)           ds_map_destroy(   dm_music_inst);
	if (_exists)                             dm_music_inst=undefined;

	    _exists=variable_instance_exists(id,"dm_random_custom");
	if (_exists) _exists = !is_undefined(    dm_random_custom);
	if (_exists) _exists = ds_exists(        dm_random_custom,ds_type_map);
	if (_exists)           ds_map_destroy(   dm_random_custom);
	if (_exists)                             dm_random_custom=undefined;







}
