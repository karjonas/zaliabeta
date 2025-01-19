/// @description  GO_instance_end()
function GO_instance_end() {


	// TODO: This could be called up to 3 times on inst end. 
	// It is in GameObject events; Destroy, Game End, Room End.
	// Find a way that it only has to be called once.

	if (variable_instance_exists(id,"ocs_draw_x"))
	{                                ocs_draw_x = 0;  }
	if (variable_instance_exists(id,"ocs_draw_y"))
	{                                ocs_draw_y = 0;  }

	// inst_end: Instance End
	if (variable_instance_exists(id,"scr_inst_end") 
	&& !is_undefined(                scr_inst_end) 
	&&  script_exists(               scr_inst_end) )
	{   script_execute(              scr_inst_end);  }


	with(g)
	{
	    if(!is_undefined(      dl_solid_inst)
	    &&  ds_list_find_index(dl_solid_inst,other)!=-1 )
	    {   ds_list_delete(    dl_solid_inst, ds_list_find_index(dl_solid_inst,other));  }
	}



	if (is_ancestor(object_index,GOB1))
	{
	    var _exists = false;
    
	        _exists = variable_instance_exists(id,  "dl_sprites");
	    if (_exists) _exists =      !is_undefined(   dl_sprites);
	    if (_exists) _exists =       ds_exists(      dl_sprites,ds_type_list);
	    if (_exists)                 ds_list_destroy(dl_sprites);
	    if (_exists)                                 dl_sprites=undefined;
    
	        _exists = variable_instance_exists(id,  "dl_ProjVuln");
	    if (_exists) _exists =      !is_undefined(   dl_ProjVuln);
	    if (_exists) _exists =       ds_exists(      dl_ProjVuln,ds_type_list);
	    if (_exists)                 ds_list_destroy(dl_ProjVuln);
	    if (_exists)                                 dl_ProjVuln=undefined;
	}







}
