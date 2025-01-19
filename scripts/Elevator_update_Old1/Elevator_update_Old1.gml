function Elevator_update_Old1() {


	/*
	vChange = 0;

	// D8C2
	var _csCopy = cs;

	if (cs & CS_LBD)
	{
	    var _vHeld = Input.vHeld;
	    var _val   = Input.vHeld ^ (g.pc.cs & $C);
    
	    // D8C8
	    g.pc.collidingElev = cs & CS_LBD; // 0754
    
	    g.pc.ogr  = 0;
	    g.pc.vspd = 0;
    
    
	    vspd = byte($18 * bit_dir(_vHeld)); // bit_dir(_vHeld) = 0,1,-1
    
	    if (_vHeld && _val)
	    {
	        // D8ED
	        Sound._00EF = $20;
	        updateY();
	    }
    
	    // D8F4
	    if (!_vHeld || _val)
	    {
	        setXY(g.pc, g.pc.xx, yy + 8);
	    }
	}
	// ------------------------------------------------------


	if (!(_csCopy & CS_LBD) || inRange(yy, cam_yt_min() - 8, cam_yb_max() - $11))
	// if (!(_csCopy & CS_LBD) || byte(yy) < $D8)
	{
	    // D91B: JMP DE40
	    GOB_update_2a();
	}
	else
	{
	    var _exit = pc_collide_exit(0);
	    if (_exit) { if (!_exit.open || !(_exit.side & $C)) _exit = -1; }
    
	    if (_exit 
	    &&  is_exit_type(_exit.exit_type, g.EXIT_TYPE_EL) )
	    {
	        g.exit_leave = _exit;
        
	        // D901
	        setXY(g.pc, $70, g.pc.yy);
	        g.camVals2[1] = $6; // 0735
	        g.camVals2[0] = $B; // 0734
	        // 00FD = 0;
	        g.camXL = 0;
	        // 0736 = $13;
	        // update_E18A(); // allows rm's remaining gob to spawn again.
	    }
	    else
	    {
	        // Not sure what to do if _exit is not Elevator type.
	        // Send PC to g.exit_enter?
	        // Let it use the wrong exit so I can catch the bug?
	        if (_exit) show_debug_message(" WARNING!!  Exit '"+_exit.exitName+"' is not Elevtor type. Resetting PC to spawn.");
	        else       show_debug_message(" WARNING!!  No Exit present for Elevator. Resetting PC to spawn.");
	        pc_reset_to_spawn();
	    }
	}
	*/





}
