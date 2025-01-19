/// @description  TogglingPathDirectionA_init2()
function TogglingPathDirectionA_init2() {


	var i, _count;

	path_dir = g.dm_spawn[? dk_spawn+STR_Direction];

	_count = g.dm_spawn[? dk_spawn+STR_Door+STR_Count];
	ds_grid_resize(dg_doors, _count, ds_grid_height(dg_doors));
	// ds_grid_clear(dg_doors, 0);
	for (i = 0; i < _count; i++)
	{
	    // Set all closed. Will set as open when 
	    // confirmed PC is NOT colliding w/ door hb.
	    dg_doors[# i, 0] = 0; // state. 0: closed, 1: open, 
    
	    // xy is at the bottom center of the door in case 
	    // I change door dimensions in the future.
	    dg_doors[# i, 1] = g.dm_spawn[? dk_spawn+STR_Door+hex_str(i+1)+"_x"];
	    dg_doors[# i, 2] = g.dm_spawn[? dk_spawn+STR_Door+hex_str(i+1)+"_y"];
	}







}
