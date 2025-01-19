function Gooma_update_Old1() {


	/*
	// BAC3
	// BAC8: JMP B4AD
	shieldState = 6;

	// B4B2: JSR BE8B
	if (Boss_update_1a(false))
	{
	    // B4B5: JSR BC4E
	    Boss_update_2();
    
	    if (ed3<$80)
	    {
	        // B4B8: JSR E579
	        //  Every frame, in GameObjectB_step():
	        //      swrdYOffset is set to 0 
	        //      swrdY1      is set to $F8   
	        if (swrdYOffset!=0) GOB_sword_collision_1a(); // handles BODY collision check & reaction
        
        
	        // B4BB: JSR B53B
	        if (behavior && !g.eTimers[eIndex])
	        {
	            // behavior 0: NOT attacking
	            // behavior 1: Drawing back
	            // behavior 2: Swing weapon
            
	            if (behavior==2) behavior = 0;
	            else             behavior = 2;
            
	            // B557
	            if (behavior==2) g.eTimers[eIndex] = $0F;
	            else             g.eTimers[eIndex] = $20;
	            //if (behavior==2) g.eTimers[eIndex] = $20;
	            //else             g.eTimers[eIndex] = $0F;
	        }
        
	        // B4C0: JSR 9C45
	        usd_BossHealthbar($12);
        
	        // B4C3
	        var _fdCopy1 = facingDir;
	        setFacingDir();
	        var _fdCopy2 = facingDir;
	        if (g.timer0&$1F) facingDir = _fdCopy1;
        
	        // B4D6
	        hspd = byte(counter<<1);
        
	        if (hspd)
	        {
	            var              _dir =  _fdCopy2;
	            if (counter&$80) _dir = -_fdCopy2;
	            hspd    = byte(8*_dir);
	            counter = byte(counter - (g.timer0&$1));
	        }
        
	        // B4EC
	        var _dist  = goDist1();
	        if (_dist &  $80)
	        {   _dist ^= $FF;  }
        
	        if (_dist >= $60)
	        {   // B4F6
	            Boss_update_3b();
	        }
	        else if (_dist >= $40)
	        {   // B503
	            if(!(g.timer0&$3F) && rand()&$3) Boss_update_3b();
	        }
	        else
	        {   // B511
	            if!(rand()&$7 | behavior | g.eTimers[eIndex])
	            {
	                // B51F: JSR B557
	                g.eTimers[eIndex] = $2F;
	                behavior = byte(behavior+1);
	            }
            
	            // B522
	            if (!byte(counter<<1) && !(rand()&$7))
	            {
	                // B52E: JSR B4F6
	                Boss_update_3b();
                
	                // B531
	                counter = (rand()&$80) | counter;
	            }
	        }
	    }
	}
	*/





}
