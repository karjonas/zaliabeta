function Ache_update_Old1() {


	/*
	var _IDLE_Y = (g.camYT-8) + IDLE_Y_OFF;


	// ----------------------------------------------------------------------------------
	if (1)  // -------------------------------------------------------------------
	{
	    // DB53
	    var _stunTimerCopy = stunTimer;
	    if (!_stunTimerCopy)
	    {
	        if (ver == 2 && acheManTimer) // $0A: Acheman
	        {
	            acheManTimer--;
	            if (acheManTimer == ACHEMAN_DUR >> 1) // if (acheManTimer == $18)
	            {
	                if (projIndexIsAvail(MAX_GOC) != -1)
	                {   Projectile_create(xx, yy + 2, facingDir, Fireball1, 2);  }
	            }
            
	            // DB73
	            setFacingDir();
	        }
	        else
	        {
            
	            // mp: Map Page (rm section)
	            var _mp_count = cam_x_range() >> 8;
	            var _mp       = (xx >> 8) - (cam_xl_min() >> 8);
            
	            var _in_dist = byte(goDist1() + attackDist) < byte(attackDist << 1);
            
	            // if more than 2 sections, use OG rules
	            var _c1 = _mp_count > 2;
            
	            // Must be in atk dist
	            var _c2 = !_c1 || !isVal(_mp, 0, _mp_count - 1);
            
	            // For less than 3 rm sections and less than $80 from rm edge
	            var _c3 = 0;
	            if (abs(x - cam_xl_min()) < $80) _c3 = 1; // move right
	            if (abs(x - cam_xr_max()) < $80) _c3 = 2; // move left
            
	            // Dir torwards pc, 1(right) or 2(left)
	            var _c4 = dir8b(g.pc.x - x);
            
            
	            // Each scenario. Only one can be positive.
	            // --------------------------------------------------------------------
            
	            // Atk regardless of dist && rm has more than 2 sections
	            var _a1 =  !_c2 &&  _c1;
	            // Atk if in dist && (rm has more than 2 sections || is more than $80 away from rm edge)
	            var _a2 =   _c2 && _in_dist &&  (_c1 || !_c3);
	            // Atk if in dist && rm has less than 3 sections && less than $80 from rm edge && pc is on side of GOB w/ more rm space
	            var _a3 =   _c2 && _in_dist &&  !_c1 && _c3 == _c4;
            
	            // Set atk dir. Only one will NOT be 0
	            _a1 *= 1 + (_mp != 0);
	            _a2 *= 1 + !(rand() & 1);
	            _a3 *= _c3;
            
	            // 1 or 2. atk dir
	            var _atk_dir = _a1 | _a2 | _a3;
            
            
            
	            // --------------------------------------------------------------------
            
	            // if idle
	            if (!behavior)
	            {
	                // DB8B
	                setFacingDir();
	            }
            
            
	            // if idle && qualify to atk
	            if (!behavior && _atk_dir)
	            {
	                hspd = byte(8 * bit_dir(_atk_dir));
                
	                behavior = 1;
	                vspd     = initVel;
	            }
            
            
	            // if attacking
	            if (behavior)
	            {
	                // DBA8
	                updateX();
                
	                // DBAB
	                vspd = byte(vspd - 1);
	                if (!vspd) acheManTimer = ACHEMAN_DUR;
                
	                // DBB4
	                updateY();
                
	                // DBB7
	                if (yy < _IDLE_Y)
	                {
	                    setXY(id, xx, _IDLE_Y);
	                    vspd     = 0;
	                    behavior = 0; // set to idle
	                }
	            }
	        }
	    }
    
	    // DBC8
	    GOB_update_2a();
    
	    if (!_stunTimerCopy)
	    {
	        // DBCB
	        if (cs & CS_LBD) enemy_collide_pc_body();
	    }
    
    
    
	}
	// ----------------------------------------------------------------------------------
	// ----------------------------------------------------------------------------------
	// ----------------------------------------------------------------------------------
	// ----------------------------------------------------------------------------------
	// ----------------------------------------------------------------------------------
	// ----------------------------------------------------------------------------------
	// ----------------------------------------------------------------------------------
	else    // Land on any solid instead of a set particular y
	{
    
    
    
    
	    // DB53
	    var _stunTimerCopy = stunTimer;
	    if (!_stunTimerCopy)
	    {
	        if (ver == 2 && acheManTimer) // $0A: Acheman
	        {
	            acheManTimer = byte(acheManTimer - 1);
	            if (acheManTimer == ACHEMAN_DUR >> 1)
	            // if (acheManTimer == $18)
	            {
	                var _pIdx = projIndexIsAvail(MAX_GOC);
	                if (_pIdx != -1)
	                {
	                    g.eMgr.uIdxSwap_goc = _pIdx;
	                    Projectile_create(xx, yy + $A, facingDir, Fireball1, 2);
	                }
	            }
            
	            // DB73
	            setFacingDir();
	        }
	        else
	        {
	            // DB79
	            var _mp = byte(rm_section(xx) - 1);
            
	            if (!behavior && _mp < 2)
	            {
	                // DB8B
	                setFacingDir();
	            }
            
	            if (behavior 
	            ||  _mp >= 2 
	            ||  byte(goDist1() + attackDist) < byte(attackDist << 1) )
	            // ||  byte(eDist1() + attackDist) < byte(attackDist << 1) )
	            {
	                if (!behavior)
	                {
	                    hspd = $08;
	                    if ( (_mp < 2 && !(rand() & 1)) 
	                    ||   (_mp > 1 && !(_mp    & 1)) )
	                    {
	                        hspd = byte(-hspd);
	                    }
                    
	                    behavior = 1;
                    
	                    if (0)
	                    {
	                        // Force x movement away from Link
	                        hspd = $08;
	                        if (x < g.pc.x) hspd = byte(-hspd);
	                    }
                    
	                    initVel = $40;
                    
	                    var i, j, _x, _y;
	                    _x = x;
	                    _y = (sprIdx_y(id) & $F8) + $20;
                    
                    
	                    for (i = 0; i < $0E; i++)
	                    {
	                        if (!collideSolidPoint(_x, _y)) break;
	                        else
	                        {
	                            _x += sign8b(hspd);
	                            _y += 8;
	                        }
	                    }
                    
                    
	                    for (j = i; j < $11; j++)
	                    {
	                        if (collideSolidPoint(_x, _y))
	                        {
	                            if      (j < $02) initVel = $18;
	                            else if (j < $04) initVel = $20;
	                            else if (j < $08) initVel = $28;
	                            else if (j < $0C) initVel = $30;
	                            else if (j < $10) initVel = $3C;
	                            // if (i < 9) initVel = $20;
	                            // else initVel = i * 4;
	                            // if (i < 4) initVel = $20;
	                            // else initVel = (((i + 4) & $FC) * 4);
                            
	                            // show_debug_message("initVel: " + hex_str(initVel));
	                            break;
	                        }
                        
	                        _x += sign8b(hspd);
	                        _y += 8;
	                    }
                    
                    
	                    vspd = initVel;
	                }
                
	                // DBA8
	                updateX();
                
	                // DBAB
	                vspd = byte(vspd - 1);
                
	                if (ver == 2 
	                &&  vspd < $80 
	                &&  !collideSolidPoint(x, sprIdx_y(id) + $21 - 8) 
	                &&   collideSolidPoint(x, sprIdx_y(id) + $21) )
	                {
	                    acheManTimer = ACHEMAN_DUR;
	                    vspd = 0;
	                    setXY(id, xx, ((yy + 8) & $F8) - 2);
                    
	                    if (0)
	                    {
	                        var _str;
	                        _str = "";
	                        _str += "yy: " + hex_str(yy);
	                        _str += ", vspd: " + hex_str(vspd);
	                        _str += ", behavior: " + hex_str(behavior);
	                        // _str += 
	                        // _str += 
	                        // _str += 
	                        show_debug_message(_str);
	                    }
	                }
                
                
	                // DBB4
	                updateY();
                
                
	                // !! If there's no ceiling, Ache will fly up off screen
	                if (1 && vspd & $80 
	                &&  collideSolidPoint(x, sprIdx_y(id) - 1) )
	                {
	                    setXY(id, xx, (yy + 8) & $F8);
	                    vspd = 0;
	                    behavior = 0;
	                }
                
	                // DBB7
	                if (0 && yy < _IDLE_Y)
	                {
	                    setXY(id, xx, _IDLE_Y);
	                    vspd = 0;
	                    behavior = 0;
	                }
	            }
	        }
	    }
    
	    // DBC8
	    GOB_update_2a();
    
	    if (!_stunTimerCopy)
	    {
	        // DBCB
	        if (cs & CS_LBD) enemy_collide_pc_body();
	    }
	}
	*/






}
