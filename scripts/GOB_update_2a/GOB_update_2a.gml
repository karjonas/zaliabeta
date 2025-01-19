/// @description  GOB_update_2a()
function GOB_update_2a() {


	// DE54, DE63
	if (ocsHV2(id)) // if (at least 8 of width AND any height) are in ocs area
	{
	    // E48B - PC projectiles to enemy body
	    GOB_body_collide_pc_proj();
    
	    // E677 - PC sword to enemy body
	    GOB_body_collide_pc_sword();
    
	    // Data shows only Tektite & Zora have ed1 bit ($20)
	    // and as long as this check is here, technically you 
	    // could just have GOB_body_collide_pc_sword() return 
	    // false instead of using this boolean var. 
	    // However, it may be usful in the future w/ new GOB
	    if(!pc_sword_collided_solid_body)
	    {   // E4D9 - Link body to enemy body
	        GOB_body_collide_pc_body_1a();
	    }
	}
	else
	{
	    cs &= $F;
	    // DE6C, DD3D. Despawn check
	    GOB_update_2b();
	}







}
