function Elevator_update_Old2() {
	/*
	/// update_Elevator()

	// This is called in PC_update_vertical()

	if (state != state_NORMAL) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


	// -----------------------------------------------------------------
	if (cs & CS_BD1)
	{
	    g.pc.colliding_elevator = id; // 0754
    
    
	    var _vHeld = Input.vHeld;
	    var _val   = Input.vHeld ^ (g.pc.cs & $C);
    
	    g.pc.ogr  = 0;
	    g.pc.vspd = 0;
    
    
	    vspd = byte($18 * bit_dir(_vHeld)); // bit_dir(_vHeld) = 0,1,-1
    
	    if (_vHeld && _val)
	    {
	        // D8ED
	        updateY();
        
	        if(!audio_is_playing(Audio.SND_ELEV_MVE1))
	        {     aud_play_sound(Audio.SND_ELEV_MVE1);  }
	        // Audio._00EF = $20;
	    }
    
	    // D8F4
	    if (!_vHeld || _val)
	    {
	        var _diff = (yt + 8) - g.pc.yt; // new pc.yt - old pc.yt
	        if (_diff != 0) 
	        {
	            g.pc.y_change =      _diff;
	            g.pc.vspd_dir = sign(_diff);
	        }
        
        
	        set_xlyt(g.pc, g.pc.xl, yt + 8);
	    }
	}



	// -----------------------------------------------------------------
	// D8C2
	GO_update_cam_vars();

	update_EF11();
	can_draw_self = true;

	// E4D9 - PC_body collide GOB_body
	update_body_hb_1a();

	    cs &= ~CS_BD1; // remove CS_LBD from cs
	    // cs &= (CS_BD1 ^ $FF); // remove CS_LBD from cs
	if (collide_pc_body(BodyHB_x,BodyHB_y, BodyHB_w,BodyHB_h))
	{   cs |=  CS_BD1;  }

	*/



}
