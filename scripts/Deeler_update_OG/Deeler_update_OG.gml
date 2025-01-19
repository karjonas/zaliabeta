function Deeler_update_OG() {


	/*
	var _stunTimerCopy, _rand, _qual_D773;
	_stunTimerCopy = stunTimer;
	_rand = g.ar_rand[1 + uIdx];
	_qual_D773 = false;

	// D6DF: JSR DA02
	if (!_stunTimerCopy)
	{
	    // D6E2
	    if (cs & CS_LBD) enemy_collide_pc_body();
    
	    // D6E5
	    if (counter < $80)
	    {
	        var _carry, _attackDist, _isInAttackDist, _qualIncCounter;
	        _attackDist = $40;
	        _qualIncCounter = !(_rand & $1F) && !ocs;
	        // _qualIncCounter = (_rand & $1F) | ocs == 0;
        
	        // D6EC
	        _carry = setFacingDir();
        
	        // D6EF
	        _isInAttackDist = byte(goDist1() + _attackDist + _carry) < byte(_attackDist << 1);
	        // _isInAttackDist = byte(eDist1() + _attackDist + _carry) < byte(_attackDist << 1);
        
	        if (counter || (_isInAttackDist && _qualIncCounter))
	        {
	            // D70F
	            if (!counter) counter = 1;
            
	            // D711
	            var               _targetY = targetY_dw; // home Y + $60
	            if (counter == 2) _targetY = targetY_up; // home Y
            
	            if (yy == _targetY && counter == 2)
	            {
	                counter = 0;
	                // DE40
	            }
	            else
	            {
	                if (yy == _targetY) counter = 2;
                
	                // D728
	                if (eID != $0E || yy < $8E)
	                {
	                    // D744
	                    if (counter == 2) vspd = $F0;
	                    else              vspd = $20;
                    
	                    // D74A
	                    updateY();
                    
	                    // DE40
	                }
	                else
	                {
	                    // D734.    Drop from web
	                    counter = $80 + (counter >> 1);
	                    hspd = 0;
	                    vspd = $20;
	                    g.eTimers[uIdx] = $20;
                    
	                    _qual_D773 = true;
	                }
	            }
	        }
	        else
	        {
	            // D6FB
	            hspd = byte(8 * facingDir);
	            updateX();
            
	            // DE40
	        }
	    }
	    else
	    {
	        // D750
	        if (!g.eTimers[uIdx])
	        {
	            g.eTimers[uIdx] = (_rand & $3F) | $40;
	            setFacingDir();
	            hspd = byte($20 * facingDir);
	            vspd = (_rand & 7) | $E8;
	        }
        
	        _qual_D773 = true;
	    }
    
	    if (counter & $80)
	    // if (_qual_D773)
	    {
	        // D773
	        updateX();
	        updateY();
        
	        vspd = byte(vspd + 1);
        
	        // D77C: JSR DE3D
	        GOB_update_cs();
        
	        // DE40
	        GOB_update_2a();
        
	        // D77F
	        if (cs4())
	        {
	            // DAC1
	            adjClipFloor();
	            vspd = 0;
            
	            // D788
	            hspd = 0;
	        }
	    }
	}


	// DE40
	if (_stunTimerCopy || counter < $80) GOB_update_2a();
	*/




}
