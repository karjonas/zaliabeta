/// @description  GOB_shield_collision_1a()
function GOB_shield_collision_1a() {

	// E617
	// Aruroda, Fokka, Geru, Girubokku, IronKnuckle, Stalfos
	// Horsehead, Helmethead, Gooma, RebonackA, RebonackB
	// Not always shield hb? Aruroda body uses this.

	GOB_update_shield_offsets();
	update_shield_hb();
	ShieldHB_can_draw = ShieldHB_idx != 0;



	// ------------------------------------------------------------------------
	if (rectInView(ShieldHB_x,ShieldHB_y, ShieldHB_w,ShieldHB_h)) // if any of shield hb is on screen
	{
	    // ------------------------------------------------------------------------
	    // PROJECTILE --------------------------------------
	    var _p = collide_pc_proj(ShieldHB_x,ShieldHB_y, ShieldHB_w,ShieldHB_h, ShieldHB_r);
	    if (_p)
	    {
	        _p.hspd        = 0;
	        _p.disintegrate_counter  = $F2; // 008D,Y = $F2. Start disintegrate
	        _p.state       = _p.state_EXPLODE;
        
	        aud_play_sound(get_audio_theme_track(dk_HitShield)); // *ding* sound
	    }
    
    
	    // ------------------------------------------------------------------------
	    // SWORD ------------------------------------------
	    if (collide_pc_sword(ShieldHB_x,ShieldHB_y, ShieldHB_w,ShieldHB_h, ShieldHB_r))
	    {
	        pc_sword_colliding_solid_body(); // This plays Audio.SND_STRK_SLD1
	        pc_sword_collided_solid_body = true;
	        return true; // PC sword collide enemy shield
	    }
	}


	return false; // PC sword NOT collide enemy shield
	// ------------------------------------------------------------------------







	/*
	/// GOB_shield_collision_1a(x, y, w, h)

	// E617
	// Aruroda, Fokka, Geru, Girubokku, IronKnuckle, Stalfos
	// Horsehead, Helmethead, Gooma, RebonackA, RebonackB
	// Not always shield hb? Aruroda body uses this.

	GOB_update_shield_offsets();
	update_shield_hb();
	canDrawShieldHB = true;

	// var _ocs, _carry;
	// _ocs   = g.pc.ocs << 1;
	// _carry = _ocs > $FF;
	// _ocs   = ((_ocs & $C) | ocs) & $FC;

	// Don't know what this is for, I don't think any GOB gets high enough. Maybe Fokka?
	// var _c1 = byte(yy + $10 + _carry) >= $30;
	// if (!_ocs && _c1)

	if (rectInView(argument0,argument1,argument2,argument3)) // if any of shield hb in on screen
	{
	    // PROJECTILE --------------------------------------
	    var _p = collide_pc_proj(argument0,argument1,argument2,argument3);
	    if (_p)
	    {
	        _p.hspd = 0;
	        _p.pID  = $F2; // 008D,Y = $F2. Start disintegrate
	    }
    
    
	    // SWORD ------------------------------------------
	    if (collide_pc_sword(argument0,argument1,argument2,argument3))
	    {
	        // E654
	        update_E654();
        
	        pc_sword_collided_solid_body = true;
        
	        aud_play_sound(g.SND_STRK_SLD1);
	        Audio._00EC = 2; // Not sure if this should be here
        
        
	        return true; // PC sword collide enemy shield
	    }
	}


	return false; // PC sword NOT collide enemy shield

	*/







}
