/// @description  add_to_solid_inst_list(inst id)
function add_to_solid_inst_list(argument0) {


	if (ds_list_find_index(g.dl_solid_inst, argument0))
	{
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}

	var              _COUNT = ds_list_size(g.dl_solid_inst);
	for(var _i=0; _i<_COUNT; _i++)
	{
	    if (is_undefined(   g.dl_solid_inst[|_i]) 
	    || !instance_exists(g.dl_solid_inst[|_i]) 
	    ||                 !g.dl_solid_inst[|_i].state )
	    {
	                        g.dl_solid_inst[|_i] = argument0;
	        exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	    }
	}


	ds_list_add(g.dl_solid_inst, argument0);







}
