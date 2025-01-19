/// @description  PC_end()
function PC_end() {


	//if (surface_exists(surf_pc))
	//{   surface_free(  surf_pc);  }


	/*
	    _exists = variable_instance_exists(id,  "dl_");
	if (_exists) _exists =      !is_undefined(   dl_);
	if (_exists) _exists =       ds_exists(      dl_,ds_type_list);
	if (_exists)                 ds_list_destroy(dl_);
	if (_exists)                                 dl_=undefined;

	    _exists = variable_instance_exists(id, "dm_");
	if (_exists) _exists =      !is_undefined(  dm_);
	if (_exists) _exists =       ds_exists(     dm_,ds_type_map);
	if (_exists)                 ds_map_destroy(dm_);
	if (_exists)                                dm_=undefined;

	    _exists = variable_instance_exists(id,  "dg_");
	if (_exists) _exists =      !is_undefined(   dg_);
	if (_exists) _exists =       ds_exists(      dg_,ds_type_grid);
	if (_exists)                 ds_grid_destroy(dg_);
	if (_exists)                                 dg_=undefined;

	    _exists = variable_instance_exists(id,   "ds_");
	if (_exists) _exists =      !is_undefined(    ds_);
	if (_exists) _exists =       ds_exists(       ds_,ds_type_stack);
	if (_exists)                 ds_stack_destroy(ds_);
	if (_exists)                                  ds_=undefined;
	*/



	var _exists = false;




	    _exists = variable_instance_exists(id,  "dl_sprites");
	if (_exists) _exists =      !is_undefined(   dl_sprites);
	if (_exists) _exists =       ds_exists(      dl_sprites,ds_type_list);
	if (_exists)                 ds_list_destroy(dl_sprites);
	if (_exists)                                 dl_sprites=undefined;
	/*
	    _exists = variable_instance_exists(id,  "dl_ShadowBoss_SPRITES");
	if (_exists) _exists =      !is_undefined(   dl_ShadowBoss_SPRITES);
	if (_exists) _exists =       ds_exists(      dl_ShadowBoss_SPRITES,ds_type_list);
	if (_exists)                 ds_list_destroy(dl_ShadowBoss_SPRITES);
	if (_exists)                                 dl_ShadowBoss_SPRITES=undefined;
	*/
	    _exists = variable_instance_exists(id,  "dl_ATTACK_DAMAGE");
	if (_exists) _exists =      !is_undefined(   dl_ATTACK_DAMAGE);
	if (_exists) _exists =       ds_exists(      dl_ATTACK_DAMAGE,ds_type_list);
	if (_exists)                 ds_list_destroy(dl_ATTACK_DAMAGE);
	if (_exists)                                 dl_ATTACK_DAMAGE=undefined;

	    _exists = variable_instance_exists(id,  "dl_UwU_");
	if (_exists) _exists =      !is_undefined(   dl_UwU_);
	if (_exists) _exists =       ds_exists(      dl_UwU_,ds_type_list);
	if (_exists)                 ds_list_destroy(dl_UwU_);
	if (_exists)                                 dl_UwU_=undefined;




	/*
	    _exists = variable_instance_exists(id, "dm_spritesheets");
	if (_exists) _exists =      !is_undefined(  dm_spritesheets);
	if (_exists) _exists =       ds_exists(     dm_spritesheets,ds_type_map);
	if (_exists)                 ds_map_destroy(dm_spritesheets);
	if (_exists)                                dm_spritesheets=undefined;
	*/
	    _exists = variable_instance_exists(id, "dm_skins");
	if (_exists) _exists =      !is_undefined(  dm_skins);
	if (_exists) _exists =       ds_exists(     dm_skins,ds_type_map);
	if (_exists)                 ds_map_destroy(dm_skins);
	if (_exists)                                dm_skins=undefined;





	    _exists = variable_instance_exists(id,  "dg_Cucco_rage");
	if (_exists) _exists =      !is_undefined(   dg_Cucco_rage);
	if (_exists) _exists =       ds_exists(      dg_Cucco_rage,ds_type_grid);
	if (_exists)                 ds_grid_destroy(dg_Cucco_rage);
	if (_exists)                                 dg_Cucco_rage=undefined;

	    _exists = variable_instance_exists(id,  "dg_ShieldHB");
	if (_exists) _exists =      !is_undefined(   dg_ShieldHB);
	if (_exists) _exists =       ds_exists(      dg_ShieldHB,ds_type_grid);
	if (_exists)                 ds_grid_destroy(dg_ShieldHB);
	if (_exists)                                 dg_ShieldHB=undefined;

	    _exists = variable_instance_exists(id,  "dg_Cucco_DISGUISE_SPRITES");
	if (_exists) _exists =      !is_undefined(   dg_Cucco_DISGUISE_SPRITES);
	if (_exists) _exists =       ds_exists(      dg_Cucco_DISGUISE_SPRITES,ds_type_grid);
	if (_exists)                 ds_grid_destroy(dg_Cucco_DISGUISE_SPRITES);
	if (_exists)                                 dg_Cucco_DISGUISE_SPRITES=undefined;

	    _exists = variable_instance_exists(id,  "dg_UwU_");
	if (_exists) _exists =      !is_undefined(   dg_UwU_);
	if (_exists) _exists =       ds_exists(      dg_UwU_,ds_type_grid);
	if (_exists)                 ds_grid_destroy(dg_UwU_);
	if (_exists)                                 dg_UwU_=undefined;









}
