/// @description  TogglingPathDirectionB_update()
function TogglingPathDirectionB_update_Old1() {


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




	if (isVal(sub_state, SUB_STATE_2,SUB_STATE_3,SUB_STATE_4))
	{    var _TARGET_LOCATION = location_b;  }
	else var _TARGET_LOCATION = location_a;

	var _dir  = 0;
	var _amt  = 0;


	var _colliding = false;
	var _X = dg_a[# _TARGET_LOCATION-1,1];
	var _Y = dg_a[# _TARGET_LOCATION-1,2];

	// Default speed
	// elev.hspd1 = elev.HSPD;
	// elev.vspd1 = elev.VSPD;





	switch (sub_state)
	{
	    // -------------------------------------------------------------
	    case SUB_STATE_1:   {
    
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
    
    
    
	    if (1)     // >>>>>>>><><LJLKM?><<<<<<<<<<?>MM><?<?><?<?><?><?><
	    {
	        elev.hspd1 = SPEED1;
	        elev.vspd1 = SPEED1;
        
	        elev.moving_dir = 0;
        
        
        
	        var _DIST = $20;
        
	        if (isVal(location_b, LOC_TOP, LOC_BTM))
	        {
	            elev.moving_dir = (4 <<(location_b == LOC_TOP));
            
	            if (loc_b_reached_x)
	            {
	                _amt  = (elev.vspd1>>4) + (elev.vspd1&$F != 0);
	                _amt *= bit_dir(elev.moving_dir);
                
	                _Y += (_DIST * sign_(location_b == LOC_BTM));
	                    _colliding = abs(elev.y - _Y) <= _amt;
	                    // _colliding = abs((elev.y + _amt) - _Y) <= abs(_amt);
	                if (_colliding && 0)
	                {
	                        _amt = _Y - elev.y;
	                    if (_amt != 0)
	                    {
	                        elev.vspd1 = ((_amt&$FF)<<4)&$FF;
	                    }
	                    else elev.moving_dir = 0;
	                }
	            }
	            else
	            {
	                _dir = (1 <<(location_a == LOC_RGT));
	                elev.moving_dir |= _dir;
                
	                _amt  = (elev.hspd1>>4) + (elev.hspd1&$F != 0);
	                    loc_b_reached_x = abs(elev.x - _X) <= _amt;
	                if (loc_b_reached_x)
	                {
	                        _amt = _X - elev.x;
	                    if (_amt != 0)
	                    {
	                        elev.hspd1 = ((_amt&$FF)<<4)&$FF;
	                        // elev.moving_dir |= (1 <<(location_a == LOC_RGT));
	                    }
	                    else elev.moving_dir &= ~_dir;
	                }
	            }
	        }
	        // &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
	        else
	        {
	            elev.moving_dir = (1 <<(location_b == LOC_LFT));
            
	            if (loc_b_reached_y)
	            {
	                _amt  = (elev.hspd1>>4) + (elev.hspd1&$F != 0);
	                _amt *= bit_dir(elev.moving_dir);
                
	                _X += (_DIST * sign_(location_b == LOC_LFT));
	                    _colliding = abs(elev.x - _X) <= _amt;
	                    // _colliding = abs((elev.x + _amt) - _X) <= abs(_amt);
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
	            else
	            {
	                _dir = (4 <<(location_a == LOC_BTM));
	                elev.moving_dir |= _dir;
                
	                _amt  = (elev.vspd1>>4) + (elev.vspd1&$F != 0);
	                    loc_b_reached_y = abs(elev.y - _Y) <= _amt;
	                if (loc_b_reached_y)
	                {
	                        _amt = _Y - elev.y;
	                    if (_amt != 0)
	                    {
	                        elev.vspd1 = ((_amt&$FF)<<4)&$FF;
	                        // elev.moving_dir |= (4 <<(location_a == LOC_BTM));
	                    }
	                    else elev.moving_dir &= ~_dir;
	                }
	            }
	        }
	    }
    
    
    
    
    
    
    
    
    
    
    
    
    
	    if (0)     // >>>>>>>><><LJLKM?><<<<<<<<<<?>MM><?<?><?<?><?><?><
	    {
	        elev.hspd1 = SPEED1;
	        elev.vspd1 = SPEED1;
        
	        elev.moving_dir = 0;
        
        
        
	        var _DIST = $20;
        
	        if (loc_b_reached_y 
	        &&  isVal(location_b, LOC_RGT, LOC_LFT) )
	        {
	            elev.moving_dir = (1 <<(location_b == LOC_LFT));
            
	            _amt  = (elev.hspd1>>4) + (elev.hspd1&$F != 0);
	            _amt *= bit_dir(elev.moving_dir);
            
	            _X += (_DIST * sign_(location_b == 2));
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
        
	        if (loc_b_reached_x 
	        &&  isVal(location_b, LOC_TOP, LOC_BTM) )
	        {
	            elev.moving_dir = (4 <<(location_b == LOC_TOP));
            
	            _amt  = (elev.vspd1>>4) + (elev.vspd1&$F != 0);
	            _amt *= bit_dir(elev.moving_dir);
            
	            _Y += (_DIST * sign_(location_b == 3));
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
    
	    if (0)     // >>>>>>>><><LJLKM?><<<<<<<<<<?>MM><?<?><?<?><?><?><
	    {
	        elev.hspd1 = SPEED1;
	        elev.vspd1 = SPEED1;
        
	        elev.moving_dir = 0;
        
        
        
	        var _DIST = $20;
        
	        if (loc_b_reached_x 
	        &&  isVal(location_b, LOC_RGT, LOC_LFT) )
	        {
	            _dir = (1 <<(location_b == LOC_LFT));
	            elev.moving_dir |= _dir;
            
	            _amt  = (elev.hspd1>>4) + (elev.hspd1&$F != 0);
	            _amt *= bit_dir(_dir);
            
	            _X += (_DIST * sign_(location_b == 2));
	                _colliding = abs((elev.x + _amt) - _X) <= abs(_amt);
	            if (_colliding)
	            {
	                    _amt = _X - elev.x;
	                if (_amt != 0)
	                {
	                    elev.hspd1 = ((_amt&$FF)<<4)&$FF;
	                }
	                else elev.moving_dir &= ~_dir;
	            }
	        }
        
	        if (loc_b_reached_y 
	        &&  isVal(location_b, LOC_TOP, LOC_BTM) )
	        {
	            _dir = (4 <<(location_b == LOC_TOP));
	            elev.moving_dir |= _dir;
            
	            _amt  = (elev.vspd1>>4) + (elev.vspd1&$F != 0);
	            _amt *= bit_dir(_dir);
            
	            _Y += (_DIST * sign_(location_b == 3));
	                _colliding = abs((elev.y + _amt) - _Y) <= abs(_amt);
	            if (_colliding)
	            {
	                    _amt = _Y - elev.y;
	                if (_amt != 0)
	                {
	                    elev.vspd1 = ((_amt&$FF)<<4)&$FF;
	                }
	                else elev.moving_dir &= ~_dir;
	            }
	        }
	    }
    
    
    
	    if (0)
	    {
	        // >>>>>>>><><LJLKM?><<<<<<<<<<?>MM><?<?><?<?><?><?><
	        if (!loc_b_reached_x)
	        {
	            _amt  = (elev.hspd1>>4) + (elev.hspd1&$F != 0);
	                loc_b_reached_x = abs(elev.x - _X) <= _amt;
	            if (loc_b_reached_x)
	            {
	                    _amt = _X - elev.x;
	                if (_amt != 0)
	                {
	                    elev.hspd1 = ((_amt&$FF)<<4)&$FF;
	                    elev.moving_dir |= ((4 <<(location_b == LOC_TOP)) | (1 <<(location_a == LOC_RGT)));
	                }
	            }
	        }
        
	        if (!loc_b_reached_y)
	        {
	            _amt  = (elev.vspd1>>4) + (elev.vspd1&$F != 0);
	                loc_b_reached_y = abs(elev.y - _Y) <= _amt;
	            if (loc_b_reached_y)
	            {
	                    _amt = _Y - elev.y;
	                if (_amt != 0)
	                {
	                    elev.vspd1 = ((_amt&$FF)<<4)&$FF;
	                    elev.moving_dir |= ((4 <<(location_a == LOC_BTM)) | (1 <<(location_b == LOC_LFT)));
	                }
	            }
	        }
        
        
        
        
        
	        // if (isVal(location_b, LOC_TOP, LOC_BTM))
        
        
        
	        if (_colliding)
	        {
	            timer = DUR_SELF_CONTROL2_DELAY;
            
            
	            sub_state = SUB_STATE_3;
	        }
	    }
    
    
    
    
    
    
    
	    if (_colliding)
	    {
	        path_dir = -path_dir;
        
	        location_a = location_b;
	        location_b = ((location_a-1 + path_dir) & 3) + 1;
        
        
	        timer = DUR_PLYR_CONTROL1_DELAY;
        
        
	        sub_state = SUB_STATE_4;
	    }
    
    
    
    
	    break;              }
    
    
    
	    // -------------------------------------------------------------
	    case SUB_STATE_3:   {
    
	    if (timer)
	    {
	        timer--;
	        break;
	    }
    
    
	    elev.hspd1 = SPEED1;
	    elev.vspd1 = SPEED1;
    
	    _amt = $20;
	    if (isVal(location_b, LOC_TOP, LOC_BTM))
	    {
	        _Y += (_amt * sign_(location_b == 3));
	    }
	    else
	    {
	        _X += (_amt * sign_(location_b == 2));
	    }
    
    
	    if (isVal(location_b, LOC_TOP, LOC_BTM))
	    {
	        _dir  = 4 <<(location_b == LOC_TOP);
        
	        _amt  = (elev.vspd1>>4) + (elev.vspd1&$F != 0);
	        _amt *= bit_dir(_dir);
        
	        _colliding = abs((elev.y + _amt) - _Y) <= abs(_amt);
	    }
	    else
	    {
	        _dir  = 1 <<(location_b == LOC_LFT);
        
	        _amt  = (elev.hspd1>>4) + (elev.hspd1&$F != 0);
	        _amt *= bit_dir(_dir);
        
	        _colliding = abs((elev.x + _amt) - _X) <= abs(_amt);
	    }
    
    
    
	    if (_colliding)
	    {
	        path_dir = -path_dir;
        
	        location_a = location_b;
	        location_b = ((location_a-1 + path_dir) & 3) + 1;
        
        
	        timer = DUR_PLYR_CONTROL1_DELAY;
        
        
	        sub_state = SUB_STATE_4;
	    }
    
    
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





	if (0)
	{
	    if (_x_target_reached)
	    {
	            _amt = _X - elev.x;
	        if (_amt != 0)
	        {
	            elev.hspd1 = ((_amt&$FF)<<4)&$FF;
	            elev.moving_dir = _dir & $3;
	        }
	    }
    
	    if (_y_target_reached)
	    {
	            _amt = _Y - elev.y;
	        if (_amt != 0)
	        {
	            elev.vspd1 = ((_amt&$FF)<<4)&$FF;
	            elev.moving_dir = _dir & $C;
	        }
	    }
	}
	if (0)
	{
	    // if (isVal(sub_state, SUB_STATE_1,SUB_STATE_2,SUB_STATE_3))
    
	    if (_colliding)               elev.moving_dir = 0;
	    else                          elev.moving_dir = _dir;
    
	    // if (sub_state == SUB_STATE_4) elev.moving_dir = _dir;
    
    
	    if (_colliding)
	    {
	        if (_dir & $3)
	        {
	                _amt = _X - elev.x;
	            if (_amt != 0)
	            {
	                elev.hspd1 = ((_amt&$FF)<<4)&$FF;
	            }
	        }
        
	        if (_dir & $C)
	        {
	                _amt = _Y - elev.y;
	            if (_amt != 0)
	            {
	                elev.vspd1 = ((_amt&$FF)<<4)&$FF;
	            }
	        }
	    }
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










}
