/// @description  update_pc_proj_2a()
function update_pc_proj_2a() {

	// update PC projectile hitboxes

	// Updates after Camera update and before g.go_mgr updates
	// because the projectile x & y are updated
	// AFTER the collision checks in enemy update


	for(var _i=ds_list_size(g.go_mgr.dl_goc2)-1; _i>=0; _i--)
	{
	    if( !g.go_mgr.dl_goc2[|_i].state) continue;
    
	    with(g.go_mgr.dl_goc2[|_i]) update_body_hb();
	}







}
