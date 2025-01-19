/// @description  Ganon3_end()
function Ganon3_end() {


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



	    _exists = variable_instance_exists(id,  "dg_SPRITES");
	if (_exists) _exists =      !is_undefined(   dg_SPRITES);
	if (_exists) _exists =       ds_exists(      dg_SPRITES, ds_type_grid);
	if (_exists)                 ds_grid_destroy(dg_SPRITES);
	if (_exists)                                 dg_SPRITES = undefined;

	    _exists = variable_instance_exists(id,  "dg_Skull_SPEED");
	if (_exists) _exists =      !is_undefined(   dg_Skull_SPEED);
	if (_exists) _exists =       ds_exists(      dg_Skull_SPEED, ds_type_grid);
	if (_exists)                 ds_grid_destroy(dg_Skull_SPEED);
	if (_exists)                                 dg_Skull_SPEED = undefined;

	    _exists = variable_instance_exists(id,  "dg_fire");
	if (_exists) _exists =      !is_undefined(   dg_fire);
	if (_exists) _exists =       ds_exists(      dg_fire, ds_type_grid);
	if (_exists)                 ds_grid_destroy(dg_fire);
	if (_exists)                                 dg_fire = undefined;

	    _exists = variable_instance_exists(id,  "dg_ProjRain");
	if (_exists) _exists =      !is_undefined(   dg_ProjRain);
	if (_exists) _exists =       ds_exists(      dg_ProjRain, ds_type_grid);
	if (_exists)                 ds_grid_destroy(dg_ProjRain);
	if (_exists)                                 dg_ProjRain = undefined;

	    _exists = variable_instance_exists(id,  "dg_AttackChoices");
	if (_exists) _exists =      !is_undefined(   dg_AttackChoices);
	if (_exists) _exists =       ds_exists(      dg_AttackChoices, ds_type_grid);
	if (_exists)                 ds_grid_destroy(dg_AttackChoices);
	if (_exists)                                 dg_AttackChoices = undefined;

	    _exists = variable_instance_exists(id,  "dg_AttackRounds");
	if (_exists) _exists =      !is_undefined(   dg_AttackRounds);
	if (_exists) _exists =       ds_exists(      dg_AttackRounds, ds_type_grid);
	if (_exists)                 ds_grid_destroy(dg_AttackRounds);
	if (_exists)                                 dg_AttackRounds = undefined;







}
