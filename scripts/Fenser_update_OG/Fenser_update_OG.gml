function Fenser_update_OG() {
	/*
	/// Fenser_update_OG()


	can_draw_self = true;

	// BCEF: JSR EF11
	update_EF11();

	// BCF2
	GOB_body_collide_pc_body_1a();

	// BCF5:JSR D6C1
	if (cs & CS_BD1) enemy_collide_pc_body();

	// BCF8: JSR DEB8
	updateX();

	// BCFB
	// If counter makes it back to 0, head will fall back to 
	// the ground and bounce. However, because yPrev is NOT 0, 
	// the head will not raise up to < $70, it will perform 
	// it's vertical wave motion near the ground.
	if (counter < 3) // Knocked off Helmethead, falling
	{
	    if (yt >= $C4) // $C4 puts the image about 1 into ground
	    {
	        timer = $30;
        
	        // bounce on ground
	                          vspd = $E0;
	        if (counter == 1) vspd = $F0;
	        if (counter == 2) vspd = $F8;
        
	        counter = byte(counter + 1);
        
	        // 00EE = $10
	        set_xy(id, xl,$C4+sprite_index_yoff);
	        hspd = (hspd >> 1) | (hspd & $80);
	    }
    
	    // BD21: JMP DEBE
	    // DEBE: JSR DEC8
	    updateY();
	    vspd = byte(vspd + 2);
	}
	else
	{
	    // BD24
	    if (!y_prev && yt >= $70) // Raising off ground
	    {
	        // BD2D
	        hspd = 0;
	        vspd = 0;
        
	        if (!timer) set_xy(id, x,(yt-2)+sprite_index_yoff);
	    }
	    else
	    {
	        // BD3E
	        y_prev = yt;
        
	        // BD41: JSR DEC8
	        updateY();
        
	        var _dir;
	        if (counter & 1) _dir = -1; // making wave down to up   \/
	        else             _dir =  1; // making wave up to down /\
        
	        vspd = byte(vspd + _dir);
	        if (vspd == byte($18 * _dir)) // reached end of wave
	        {
	            counter = byte(counter + 1);
	        }
        
	        if (!g.counter1) // OG
	        {
	            facingDir = dir_to_pc(id);
	            // setFacingDir();
	            hspd = byte(6 * facingDir);
	        }
        
	        // BD66
	        control = byte(control + 1);
        
	        if (!byte(control << 1))
	        {
	            if (avail_uidx_goc(MAX_GOC1) != UIDX_NULL)
	            {
	                // BD6F: JSR 9BE5
	                // 9BE5: JSR DBCE
	                var _p, _facingDirCopy;
	                // Create Bullet1, pID $10
	                _p = GOC1_create(xl, yt, facingDir, projectile,projectile_ver, id, PI_MOB_BLU); // PI_MOB3: blue
                
	                _facingDirCopy = facingDir;
	                facingDir = dir_to_pc(id);
	                // setFacingDir();
                
	                // var             _idx = eDist1();
	                var             _idx = goDist1();
	                if (_idx & $80) _idx ^= $FF;
	                                _idx = byte(_idx - $14) >> 4;
                
	                if (_facingDirCopy == facingDir && _idx < 8)
	                {
	                    // 9BFD
	                    _p.facingDir = facingDir;    
                
	                    // 9C10
	                    var _data, _hspd, _x, _y;
                    
	                    _data = "161413110F0E0D0B"; // 9BD5-9BDC
	                    _p.vspd = str_hex(_data, _idx);
                    
	                    _data = "060A0D0F11121313"; // 9BCD-9BD4
	                    _p.hspd = str_hex(_data, _idx);
	                    if (!_p.facingDir) _p.hspd ^= $FF;
                    
	                    _y = byte(yt + 5);
	                    _x = xl + 4 + (yt + 5 > $FF);
	                    set_xy(_p, _x+_p.sprite_index_xoff, _y+_p.sprite_index_yoff);
	                }
	                else
	                {
	                    // 9C3F
	                    //_p.pID = 0;
	                }
                
	                facingDir = _facingDirCopy;
	            }
	        }
	    }
	}
	*/







}
