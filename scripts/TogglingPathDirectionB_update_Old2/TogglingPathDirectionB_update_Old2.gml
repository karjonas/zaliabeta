/// @description  TogglingPathDirectionB_update()
function TogglingPathDirectionB_update_Old2() {


	update_EF11();


	g.pc_lock = 0;


	if (g.EnterRoom_control_timer)
	{
	    with (elev) GameObjectB_step();
    
    
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}


	// pc_lock: $1: hspd, $2: jump, 
	// $10: stab high, $20: stab low, $40: thrust down, $80: thrust up, 
	// g.pc_lock = PC_LOCK_ALL;
	g.pc_lock = $C3;

	var _sign = 1;
	var _dir  = 0;
	var _spd  = 0;
	var _amt  = 0;
	var _colliding = false;
	var _X = 0;
	var _Y = 0;

	var _ZZ = 1;





	switch (sub_state)
	{
	    // -------------------------------------------------------------
	    case SUB_STATE_1:   {
    
	    _X = dg_a[# location_a-1,1];
	    _Y = dg_a[# location_a-1,2];
    
	    loc_b_reached_x = false;
	    loc_b_reached_y = false;
    
	    elev.hspd1 = elev.HSPD;
	    elev.vspd1 = elev.VSPD;
    
	    elev.moving_dir = 0;
    
    
	    if (isVal(location_a, LOC_TOP, LOC_BTM))
	    {
	            elev.moving_dir = Input.heldV & $C;
	        if (elev.moving_dir)
	        {
	            _amt  = (elev.vspd1>>4) + (elev.vspd1&$F != 0);
	            _amt *= bit_dir(elev.moving_dir);
            
	                _colliding = abs((elev.y + _amt) - _Y) <= abs(_amt);
	            if (_colliding)
	            {
	                    _amt = _Y - elev.y;
	                if (_amt != 0)
	                {
	                    elev.vspd1 = ((_amt&$FF)<<4)&$FF;
	                }
	                else elev.moving_dir = 0;
	            }
	        }
	    }
	    else
	    {
	            elev.moving_dir = Input.heldH & $3;
	        if (elev.moving_dir)
	        {
	            _amt  = (elev.hspd1>>4) + (elev.hspd1&$F != 0);
	            _amt *= bit_dir(elev.moving_dir);
            
	                _colliding = abs((elev.x + _amt) - _X) <= abs(_amt);
	            if (_colliding)
	            {
	                    _amt = _X - elev.x;
	                if (_amt != 0)
	                {
	                    elev.hspd1 = ((_amt&$FF)<<4)&$FF;
	                }
	                else elev.moving_dir = 0;
	            }
	        }
	    }
    
    
    
	    if (_colliding)
	    {
	        elev.moving_dir = 0;
	        timer = DUR_SELF_CONTROL1_DELAY;
        
        
	        sub_state = SUB_STATE_2;
	    }
    
    
	    break;              }
    
    
    
	    // -------------------------------------------------------------
	    case SUB_STATE_2:   {
    
	    if (timer)
	    {
	        timer--;
	        break;
	    }
    
    
    
	    elev.hspd1 = SPEED1;
	    elev.vspd1 = SPEED1;
    
    
	    var _DIST = $20;
    
	    if (isVal(location_b, LOC_TOP, LOC_BTM))
	    {
	                              elev.moving_dir  = (4 <<(location_b == LOC_TOP)); // 4(    DWN) or  8(    UP)
	        if (!loc_b_reached_x) elev.moving_dir |= (1 <<(location_a == LOC_RGT)); // 5(RGT-DWN) or $A(LFT-UP)
        
	        if (!loc_b_reached_x)
	        {
	            _dir  = elev.moving_dir & $3;
            
            
	            _amt  = byte(elev.hspd1 * bit_dir(_dir));    // hspd
	            _amt  = simulate_position_change(_amt, elev.hspd_sub); // x change
            
            
	            _X = dg_a[# location_b-1,1];
	                loc_b_reached_x = abs(elev.x - _X) <= abs(_amt);
	            if (loc_b_reached_x)
	            {
	                    _amt = _X - elev.x;
	                if (_amt != 0)
	                {
	                    elev.hspd1 = ((_amt&$FF)<<4)&$FF;
	                }
	                else elev.moving_dir &= ~_dir;
	            }
	        }
	        else
	        {
	            _dir  = elev.moving_dir & $C;
            
            
	            _amt  = byte(elev.vspd1 * bit_dir(_dir));    // vspd
	            _amt  = simulate_position_change(_amt, elev.vspd_sub); // y change
            
            
	            // _Y += (_DIST * sign_(location_b == LOC_BTM));
	                // _colliding = abs(elev.y - _Y) <= abs(_amt);
	                _Y = dg_a[# location_b-1,2];
	                _sign = sign_(location_b == LOC_BTM);
	                _colliding = (((elev.y+_amt) - _Y) * _sign) >= _DIST;
            
	            // if (_colliding) elev.moving_dir = 0;
	            /*
	            if (_colliding)
	            {
	                _Y += (_DIST * _sign);
	                    _amt = _Y - elev.y;
	                if (_amt != 0)
	                {
	                    elev.moving_dir = 0;
                    
	                    // elev.vspd1 = ((_amt&$FF)<<4)&$FF;
	                }
	                else elev.moving_dir = 0;
	            }
	            */
	        }
	    }
	    // &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
	    else
	    {
	                              elev.moving_dir  = (1 <<(location_b == LOC_LFT)); // 1(RGT)     or  2(LFT)
	        if (!loc_b_reached_y) elev.moving_dir |= (4 <<(location_a == LOC_BTM)); // 5(RGT-DWN) or $A(LFT-UP)
        
	        if (!loc_b_reached_y)
	        {
	            _dir  = elev.moving_dir & $C;
            
            
	            _amt  = byte(elev.vspd1 * bit_dir(_dir));    // vspd
	            _amt  = simulate_position_change(_amt, elev.vspd_sub); // y change
            
            
	            _Y = dg_a[# location_b-1,2];
	                loc_b_reached_y = abs(elev.y - _Y) <= abs(_amt);
	            if (loc_b_reached_y)
	            {
	                    _amt = _Y - elev.y;
	                if (_amt != 0)
	                {
	                    elev.vspd1 = ((_amt&$FF)<<4)&$FF;
	                }
	                else elev.moving_dir &= ~_dir;
	            }
	        }
	        else
	        {
	            _dir  = elev.moving_dir & $3;
            
            
	            _amt  = byte(elev.hspd1 * bit_dir(_dir));    // hspd
	            _amt  = simulate_position_change(_amt, elev.hspd_sub); // x change
            
	            _X = dg_a[# location_b-1,1];
	            _sign = sign_(location_b == LOC_RGT);
	            _colliding = (((elev.x+_amt) - _X) * _sign) >= _DIST;
	        }
	    }
    
    
    
    
	    if (_colliding)
	    {
	        elev.moving_dir = 0;
        
        
	        path_dir = -path_dir;
        
	        location_a = location_b;
	        location_b = ((location_a-1 + path_dir) & 3) + 1;
        
        
	        timer = DUR_PLYR_CONTROL1_DELAY;
        
        
	        sub_state = SUB_STATE_3;
	    }
    
    
    
	    break;              }
    
    
    
	    // -------------------------------------------------------------
	    case SUB_STATE_3:   {
    
	    if (timer)
	    {
	        timer--;
	        break;
	    }
    
    
	    sub_state = SUB_STATE_4;
    
    
	    break;              }
    
    
    
	    // -------------------------------------------------------------
	    case SUB_STATE_4:   {
    
	    if (timer)
	    {
	        timer--;
	        break;
	    }
    
    
	    sub_state = SUB_STATE_1;
    
	    break;              }
	}







	with (elev) GameObjectB_step();




	/*
	switch (location_b)
	{
	    case 1: {
    
	    break;  }
    
	    case 2: {
    
	    break;  }
    
	    case 3: {
    
	    break;  }
    
	    case 4: {
    
	    break;  }
	}
	*/





	/*
	// But this method works..
	_spd  = byte(elev.vspd1 * bit_dir(_dir));
	var _CARRY = (((_spd&$F)<<4) + elev.vspd_sub) > $FF;
	_spd  = (_spd>>4) | ($F0 * (_spd>$7F));
	_amt  = byte(_spd + _CARRY);
	_amt  = byte_to_int(_amt);
	*/







}
