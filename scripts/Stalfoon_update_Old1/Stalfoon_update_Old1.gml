function Stalfoon_update_Old1() {



	/*
	/// update_Stalfoon()

	hspd_impel = false;

	if (0 && stun_timer)
	{
	    // DE40
	    GOB_update_2();
    
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}



	// ------------------------------------------------------
	// ------------------------------------------------------
	// ------------------------------------------------------
	if (cs & CS_BD1) enemy_collide_pc_body();

	GO_update_cs();

	// DE40
	GOB_update_2();

	facingDir = dir_to_pc(id);
	// setFacingDir();
	// if !(g.timer0 & $3F) setFacingDir();


	if (hspd_pushback) hspd_impel = true;
	GOB_update_1(true); // update hspdPB

	GO_update_cs();

	updateX();



	// HOVER EFFECT (RebonackA) -----------------------
	if !(g.counter1 & 7)
	{
	    if (g.counter1 & $20) set_xlyt(id, xl, yt + -1);
	    else                set_xlyt(id, xl, yt +  1);
	}




	// Much of this is similar to IronKnuckle behavior

	// is_aggro = ocsH3(id) && abs(spawn_y - g.pc.yt) <= 41;
	if (ocsH3(id) 
	&&  abs(spawn_y - g.pc.yt) <= 41 )
	{
	    is_aggro = true;
    
	    var _dist = abs(g.pc.x - x);
	    var _c1   =  _dist <  $50 && g.pc.hspd_dir != facingDir;  // back away from pc
	    var _c2   = (_dist >= $48 && g.pc.hspd_dir == facingDir); // move toward    pc
    
	    if ((_c1 | _c2) 
	    &&  g.pc.hspd 
	    // &&  !g.pc.ogr 
	    &&  is_facing_pc_(id) )
	    {
	        _c1 &= abs8b(hspd) < HSPD_MAX_AWAY;
	        _c2 &= abs8b(hspd) < HSPD_MAX_TWRD;
	        _c2 &= g.pc.hspd_impel;
	        if (_c1 | _c2) 
	        {
	            hspd = byte(hspd + g.pc.hspd_dir);
	            hspd = byte(hspd + g.pc.hspd_dir);
	            hspd_impel = true;
	        }
	        // if (g.timer0 & 1 && abs8b(hspd) < g.pc.HSPD_MAX - (g.pc.HSPD_MAX >>2) )
	        // {   hspd = byte(hspd + g.pc.hspd_dir);  }
        
	        // hspd_impel = true;
	    }
    
    
    
	    counter = byte(counter + 1);
	    if !(counter & $3F)
	    {
	        // if facing pc & pc facing away(like Mario Boo behavior)
	        if (abs(g.pc.x - x) >= $60 
	        &&  is_facing_pc_(id) 
	        &&  g.pc.hspd_dir == facingDir         // pc facing away from enemy
	        &&  avail_uidx_goc(MAX_GOC1) != UIDX_NULL )
	        {
	            // Create Bullet1, pID $10. PI_MOB3: blue
	            GOC1_create(xl,yt, facingDir, Bullet1,2, id, PI_MOB_BLU); // 
	            if (counter < $80) counter = $80 + $20; // 2nd Bullet fires on $C0
	            else               counter = 0;         // After 2nd Bullet
	        }
	        else
	        {
	            counter &= $7F; // lose token for 2nd bullet
	        }
	    }
	}
	else
	{
	    if (is_aggro) // if was aggro last frame
	    {
	        // Start process for waiting to turn around
	        counter |= 1;
	        timer = DUR_PACE; // $50(80): about 1.33 sec
	    }
	    is_aggro = false;
    
	    counter &= $7F; // lose token for 2nd bullet
    
	    // 0: moving, 1: still, waiting to turn around
	    if !(counter & 1) 
	    {
	        hspd = byte(HSPD_PACE * facingDir);
	        hspd_impel = true;
	    }
    
	    if (!timer)
	    {
	        if (counter & 1) facingDir *= -1; // turn around
	        timer = DUR_PACE; // $50(80): about 1.33 sec
	        counter = byte(counter + 1);
	    }
	}


	if (g.pc.hspd_dir != facingDir       // back away from pc
	||  g.counter1 & 1 )                  // move toward pc
	{
	    hspd = byte(hspd - sign8b(hspd));
	}


	if (!hspd_impel) 
	{
	    // hspd = byte(hspd - sign8b(hspd));
	    // hspd = byte(hspd - sign8b(hspd));
	}


	*/




}
