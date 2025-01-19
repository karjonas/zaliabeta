function Bot_update_Old1() {



	/*
	var _stunTimerCopy = stun_timer;

	if (!_stunTimerCopy)
	{
	    if (abilities & ABL_JUMP 
	    &&  cs4() 
	    &&  !byte(rand() << 1) )
	    {
	        // Jump!
	        vspd = INIT_VEL_DEF;
	        facingDir = dir_to_pc(id);
	        // setFacingDir();
	        hspd = byte(hspd_jump * facingDir);
	    }
    
	    // DA2E
	        hspd_walk = $20;
	    if (ver == 2                    // Bit $05
	    &&  (byte(update_idx << 5) | g.counter1) >= $C0 )
	    {
	        hspd_walk = byte(hspd_walk << 1);
	    }
    
    
	    // DA54
	    updateY();
	    // DA57
	    GO_update_cs();
	}




	// DE40
	GOB_update_2();




	if (!_stunTimerCopy)
	{
	    // DA5A
	    if (cs & CS_BD1) enemy_collide_pc_body();
    
	    var _c1   = cs4() && yt >= $60;
    
	    var _val1 = (counter & $F) ^ $F;
	    var _val2 = (counter & $F) ^ $3;
    
    
	    // DA5D
	    if (_c1)
	    // if (y >= $60 && cs4())
	    {
	        // DA72
	        solid_clip_correction(vspd && vspd < $80);
	        vspd = 0;
        
	        // DA75
	        if (!is_idle && abilities & ABL_WALK) // if walking
	        {
	            behavior = counter & $C;
	            counter++;
	            if (!_val1 || !_val2)
	            {
	                hspd = byte(hspd_walk * walk_dir);
	            }
	        }
	        else
	        {
	            behavior = is_idle;
	        }
	    }
    
    
	    if (!cs3())
	    {
	        if ( !cs4()                             // if NOT on ground
	        ||  (!is_idle && (!_val1 || !_val2)) )  // if NOT idle && correct timing
	        {
	            // DAA1
	            updateX();
	        }
	    }
    
    
	    if (_c1
	    &&  abilities & ABL_WALK )
	    {
	        // DAA4
	        if (!timer)
	        {
	            is_idle = !is_idle;
            
	            var           _val = $40;
	            if (!is_idle) _val = $C0;
            
	                timer = (rand() & $3F) | _val;
	            if (timer & 1) walk_dir = -1;
	            else                       walk_dir =  1;
	        }
	    }
	}
	*/


















	/*
	var _stunTimerCopy = stunTimer;

	if (!_stunTimerCopy)
	{
	    if (0 && !(g.timer0 & $7F))
	    {
	        show_debug_message("");
	        show_debug_message("uIdx: " + string(uIdx));
	        show_debug_message("rand(): " + hex_str(rand()));
	        show_debug_message("byte(rand() << 1: " + hex_str(byte(rand() << 1)));
	        show_debug_message("--------------------------------");
	    }
    
	    if (eID == $04 
	    &&  cs & CS_BOT 
	    &&  !byte(rand() << 1) )
	    {
	        // Jump!
	        vspd = initVel;
	        setFacingDir();
	        hspd = byte(hspdJump * facingDir);
	    }
    
	    // DA2E
	    hspdR = HSPD_R1;
	    hspdL = HSPD_L1;
    
	    if (eID == $05 
	    &&  byte(uIdx << 5) | g.timer0 < $C0 )
	    {
	        hspdR = HSPD_R2;
	        hspdL = HSPD_L2;
	    }
    
	    // DA54
	    updateY();
	    // DA57
	    setCS();
	}


	// DE40
	enemyUpdate_B1(true);

	if (!_stunTimerCopy)
	{
	    // DA5A
	    if (cs & CS_LBD) enemyCollideLinkBody();
    
	    var _val1, _val2;
    
	    _val1 = (counter & $0F) ^ $0F;
	    _val2 = (counter & $0F) ^ $03;
    
    
	    // DA5D
	    if (y >= $60 && cs & CS_BOT)
	    {
	        // DA72
	        adjClipFloor();
	        vspd = 0;
        
	        // DA75
	        if (behavior == BVR_WALK)
	        {
	            subBehavior = counter & $0C;
	            counter++;
	            if (!_val1 || !_val2)
	            {
	                hspd = hspdR;
	                if (walkDir) hspd = hspdL;
	            }
	        }
	        else
	        {
	            subBehavior = behavior;
	        }
	    }
    
    
	    if !(cs & (CS_RGT + CS_LFT))
	    {
	        if (!(cs & CS_BOT) 
	        ||  (behavior == BVR_WALK && (!_val1 || !_val2)) )
	        {
	            // DAA1
	            updateX();
	        }
	    }
    
    
	    if (ogY(id) >= $60 && cs & CS_BOT)
	    {
	        // DAA4
	        if (!timer)
	        {
	            behavior = !behavior;
	            var _val = $40;
	            if (behavior == BVR_WALK) _val = $C0;
	            timer = (g.sRND[uIdx + 1] & $3F) | _val;
	            walkDir = timer & 1;
	        }
	    }
	}
	*/





}
