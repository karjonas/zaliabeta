/// @description  GO_destroy_1a()
function GO_destroy_1a() {


	var      _idx = -1;

	     if (is_ancestor(object_index,GOB1))
	{        _idx =    ds_list_find_index(g.go_mgr.dl_gob1,  id);
	     if (_idx!=-1)                    g.go_mgr.dl_gob1[|_idx] = noone;
	}
	else if (is_ancestor(object_index,ProjectileHostile))
	{        _idx =    ds_list_find_index(g.go_mgr.dl_goc1,  id);
	     if (_idx!=-1)                    g.go_mgr.dl_goc1[|_idx] = noone;
	}
	else if (is_ancestor(object_index,GOB2))
	{        _idx =    ds_list_find_index(g.go_mgr.dl_gob2,  id);
	     if (_idx!=-1) ds_list_delete(    g.go_mgr.dl_gob2, _idx);
	}



	// SpawnByStab_inst: The SpawnByStab inst that created this inst
	if(!is_undefined(   SpawnByStab_inst) 
	&&  instance_exists(SpawnByStab_inst) 
	&&  is_ancestor(object_index,GameObjectB) 
	&& !is_ancestor(object_index,SpStA) )
	{
	    with(SpawnByStab_inst)
	    {
	        state = 0;
	        if (g.mod_destroy_go_on_death) GO_destroy_1a();
	    }
	}



	instance_destroy();







}
