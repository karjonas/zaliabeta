/// @description  Ra_update()
function Ra_update() {


	var _IN_VIEW     = ocsH1(id); // if any width is in ocs area. if any width is on camera
	var _CAM_AT_EDGE = g.view_at_rm_edge&$3;



	// BA20, ACDA, 9667
	if(!_IN_VIEW)
	{   // BA2B: JSR B9F4, ACE5: JSR ACAD, 966D: JSR 963B
	    Ra_update_1a(_CAM_AT_EDGE);
	}



	if (_IN_VIEW 
	|| !_CAM_AT_EDGE )
	{   // BA2E, ACE8, 9670
	    if(!stun_timer)
	    {   // BA31, ACEB, 9673
	            vspd  = (vspd +          vspd_change)  &$FF;
	        if (vspd == (VSPD_MAX * sign(vspd_change)) &$FF)
	        {
	            vspd_change = -vspd_change;
	        }
        
	        // BA47
	        updateY();
	        updateX();
	    }
    
    
    
	    // BA4D: JSR DE40
	    can_draw_self = ocsH1(id) && ocsV1(id); // if ANY w AND h in ocs area
	    //can_draw_self = ocsHV1(id); // if ANY w AND h in ocs area
    
    
	    var _stun_timer_PREV = stun_timer;
    
	    GOB_update_2();
    
	    if(!_stun_timer_PREV 
	    &&  cs&CS_BD1 )
	    {   // BA50: JMP D6C1
	        enemy_collide_pc_body();
	    }
	}







	/*
	/// update_Ra()


	var _IN_VIEW = ocsH1(id); // if any width is in ocs area
	// var _IN_VIEW = ocsH2(id); // if (at least 8 of width) are in ocs area width

	var _CAM_AT_EDGE = g.camAtRoomEdge & 3;


	// BA20, ACDA, 9667
	if (!_IN_VIEW 
	&&  !_CAM_AT_EDGE )
	{
	    // BA2B: JSR B9F4, ACE5: JSR ACAD, 966D: JSR 963B
	    var           _yOff = $20;
	    if (ver == 2) _yOff = $24;
	    if (ver == 3) _yOff = $30;
	    var                _yy  = ((g.pc.yy&$FF) - _yOff) & $FF;
    
	    var                _xx  = g.camXL;
	    if (g.pc.hspd_dir) _xx += $EF;
	                       _xx += ((g.pc.yy&$FF) > (g.camYT-8 + _yOff)); // carry
    
	    setXY(id, _xx, _yy);
    
	    if (isVal(ver, 2,3)) hspd = ($18 * -g.pc.hspd_dir) & $FF;
	    else                 hspd = ($10 * -g.pc.hspd_dir) & $FF;
    
	    vspd    = 0;
	    counter = 0;
    
	    facingDir = dir_to_pc(id);
	}



	if ( _IN_VIEW 
	||  !_CAM_AT_EDGE )
	{
	    // BA2E, ACE8, 9670
	    if (!tmr_stun)
	    {
	        // BA31, ACEB, 9673
	        var _DIR = signBin(!(counter&1));
        
	            vspd  = (vspd + ((2 * _DIR)&$FF)) & $FF;
	        if (vspd == (VSPD_MAX * _DIR) & $FF)
	        {
	            counter = (counter+1)&$FF;
	        }
        
	        // BA47
	        updateY();
	        updateX();
	    }
    
    
    
	    // BA4D: JSR DE40
	    canDrawSelf = ocsHV1(id); // if ANY w OR h in ocs area
	    // canDrawSelf = abs(yy) < $100;
    
    
	    var _stun_timer_PREV = tmr_stun;
    
	    GOB_update_2();
    
	    if (!_stun_timer_PREV 
	    &&  cs & CS_BD1 )
	    {
	        // BA50: JMP D6C1
	        enemy_collide_pc_body();
	    }
	}
	*/







}
