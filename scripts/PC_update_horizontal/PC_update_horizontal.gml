/// @description  PC_update_horizontal()
function PC_update_horizontal() {


	// 93CD
	var _C0 = g.mod_StabFrenzy 
	       && StabFrenzy_charge_counter>$80 
	       && Input.Attack_held;
	//
	if (ogr               // NOT on ground
	|| !attack_phase      // NOT attacking
	||  g.control1_timer  // stab does NOT inhibit hspd
	||  _C0 )             // is frenzy stabbing
	{
	    var _C1 = is_cucco 
	           && abs8b(hspd)<=hspd_max  // cucco slow walk while crouching
	           && Input.dHeld;           // down is held
	    //
	    if (_C0) var _HSPD_MAX = hspd_max>>1;
	    else     var _HSPD_MAX = hspd_max;
    
	    var _HSPD = byte_to_int(hspd);
    
	    // 93DC
	    if(!(g.pc_lock&PC_LOCK_HSPD)   // horizontal control NOT locked
	    &&   Input.hHeld               // left or right held
	    && (!Input.dHeld || _C1)       // down NOT held || cucco crawl
	    && (!_C0 || attack_phase==2) ) // NOT frenzy stabbing OR in stab phase of attack
	    {   // 93FD. left or right held AND down is NOT held
	        var _HELD_DIR = bit_dir(Input.hHeld); // 1,-1
        
	        var _hspd_min = -_HSPD_MAX;
	        var _hspd_max =  _HSPD_MAX;
	        if (1)
	        {   // 2024/12/10. Maintain faster hspd from stabbing Bloobys
	            _hspd_min = min(_HSPD,_hspd_min);
	            _hspd_max = max(_HSPD,_hspd_max);
	        }
        
	        var _amount  = $1<<(_HELD_DIR!=hspd_dir);
	            _amount *= _HELD_DIR;
	        //
	        if(!ogr  // is on ground
	        &&  abs(_HSPD)>_HSPD_MAX )
	        {   // 2024/12/10. Smooth slow down towards  -_HSPD_MAX/_HSPD_MAX  when faster than _HSPD_MAX. Right now those speeds are only possible when stabbing a Blooby.
	            _amount  = 1;
	            if (_HELD_DIR!=hspd_dir) _amount = (_amount<<1) + (((abs(_HSPD)-_HSPD_MAX)>(_amount<<1)) * _amount);
	            _amount *= -hspd_dir;
	        }
        
	        hspd  = clamp(_HSPD+_amount, _hspd_min,_hspd_max);
	        hspd &= $FF;
	        hspd_impel = sign(_HELD_DIR);
	    }
	    else
	    {   // 93E6. left and right NOT held || down held
	        if(!ogr    // is on ground
	        &&  hspd )
	        {
	            var _amount  = 1;
	                _amount += abs(_HSPD)>_HSPD_MAX;
	                _amount  = min(_amount,abs(_HSPD));
	                _amount *= -hspd_dir;
	            //
	            hspd += _amount;
	            hspd &= $FF;
	        }
	    }
    
    
    
	    // 943A: JSR 9610
	    if!(cs&$3) PC_update_1b(); // updateX()
    
	    PC_update_walk();
    
    
    
	    // 9420
	    if (Input.dHeld  // down held
	    && !ogr          // is on ground
	    &&  cs&$4 )      // bottom colliding with solid
	    {
	        PC_set_behavior(behavior_CROUCH);
	    }
	}







}
