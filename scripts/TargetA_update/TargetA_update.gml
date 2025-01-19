/// @description  TargetA_update()
function TargetA_update() {


	updateX();
	updateY();


	GO_update_cam_vars();
	update_EF11();
	can_draw_self = true;



	switch(behavior)
	{
	    // -------------------------------------------------------------------------
	    // -------------------------------------------------------------------------
	    case BVR_STRT:{  // STRT: STaRT
	    if (ocsH1(id)) // if any w in ocs area
	    {
	        behavior = BVR_VULN;
	    }
	    break;}
    
    
    
    
    
    
    
	    // -------------------------------------------------------------------------
	    // -------------------------------------------------------------------------
	    case BVR_VULN:{ // VULN: VULNerable
	    if ((ver==1 && !ocsH1(id)) 
	    ||  (ver==2 && y>=cam_yb_max()+$18) )
	    {
	        behavior = BVR_FAIL;
	        break;
	    }
    
    
	    // ----------------------------------------
	    if (ver==1) GOB_body_collide_pc_sword();
	    if (ver==2) GOB_body_collide_pc_proj();
    
	    if (cs & (CS_PR1|CS_SW1) 
	    && !target_hit )
	    {
	        if(!is_undefined(   source_inst) 
	        &&  instance_exists(source_inst) )
	        {
	            source_inst.points++;
	            //sdm("target_hit, "+"source_inst.points "+string(source_inst.points));
	        }
        
	        target_hit = true;
        
	        timer = explosion_DURATION1;
	        state = state_EXPLODE;
	    }
	    break;}
    
    
    
    
    
    
    
	    // -------------------------------------------------------------------------
	    // -------------------------------------------------------------------------
	    case BVR_FAIL:{
	    state = 0;
	    break;}
	}







}
