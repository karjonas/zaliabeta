function LockedDoor_update_OG() {


	/*
	// D991: JSR DE40
	GOB_update_2a();

	// D994
	if (counter)
	{
	    var _counterCopy;
	    _counterCopy = counter;
	    counter = byte(counter + 1);
    
	    if (_counterCopy == $11)
	    {
	        var _p = g.eMgr.ar_goc[0];
	        _p.pID = 0; // despawns g.eMgr.projectiles[0]
        
	        g.eMgr.uIdxSwap_goc = 0;
	        _p = Projectile_create(xx, yy + $10 - 3, g.pc.xScale, Projectile, 1, -1, $F0);
        
	        Sound._00EF = 1;
	        g.pc_locked = 0;
        
	        state = 0;
	    }
	}
	else
	{
	    // D9BA
	    g.pc.collidingLock = cs & CS_LBD; // 05E7
    
	    if (cs & CS_LBD)
	    {
	        // D9C3
	        if (!is_fairy()) pushback_pc_and_gob(x, 4, false);
        
	        // D9D0
	        setFacingDir();
        
	        if (facingDir) g.pc.collidingLock = 2;
	        else           g.pc.collidingLock = 1;
        
	        if (f.items & ITM_MKEY || f.key_count)
	        {
	            if !(f.items & ITM_MKEY) 
	            {
	                // Doesn't matter which room the key was aquired
	                var _map_key = ds_map_find_first(f.dm_keys);
	                while (isDefined(_map_key)) // defined means the key has been aquired
	                {
	                    // map value: 1 key NOT used, 0 key used
	                    if (f.dm_keys[? _map_key])
	                    {
	                        f.dm_keys[? _map_key] = 0;
	                        f.key_count = get_key_count();
	                        break;
	                    }
                    
	                    _map_key = ds_map_find_next(f.dm_keys, _map_key);
	                }
	            }
            
	            // D9EA: JSR C295
	            // Maybe this stores what locked door has been open
	            f.dm_openedLocks[? rmName() + STR_LockedDoor + string(lockDoorNum)] = 1;
            
	            // D9ED
	            Sound._00EC = $80;
	            g.pc_locked = $80;
	            g.pc.hspd = 0;
	            g.pc.vspd = 0;
            
	            counter = byte(counter + 1);
	        }
	    }
	}
	*/





}
