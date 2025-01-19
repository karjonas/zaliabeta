function Projectile_collision_1a_Old1() {
	/*
	/// Projectile_collision_1a()


	if (collided_shield)                 exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	if(!react_body && !(react_shld&$FF)) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	if(!GO_can_collide_this_frame(uIdx)) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!





	// ---------------------------------------------------------------------------------------
	// ---------------------------------------------------------------------------------------
	// E3CC

	update_body_hb_1a();


	if (react_shld&$FF 
	&&  collide_pc_shield(bodyX,bodyY, bodyW,bodyH) )
	{
	    var                        _LV2_SHIELD = g.spells_active & SPL_RFLC;
	    if (g.mod_REFLECT_is_item) _LV2_SHIELD = f.items         & ITM_SHLD;
    
	    var _RVS = $04; // Reverse
	    var _BNC = $02; // Bounce
	    var _DSN = $01; // DSN: Disintegrate
    
    
	    var _S1  =  react_shld    &$FF;     // reaction types
	    var _S2  = (react_shld>>8)&$FF;     // REFLECT  types
	        _S2 &= _S1;                     // types that DO   require REFLECT to block
	        _S1 ^= _S2;                     // types that DONT require REFLECT to block
    
	    // can reverse
	    var _C1  =  _S1 & _RVS;                 // DONT require REFLECT
	        _C1 |= (_S2 & _RVS) && _LV2_SHIELD; // DO   require REFLECT
	    // can bounce
	    var _C2  =  _S1 & _BNC;                 // DONT require REFLECT
	        _C2 |= (_S2 & _BNC) && _LV2_SHIELD; // DO   require REFLECT
	    // can disintegrate
	    var _C3  =  _S1 & _DSN;                 // DONT require REFLECT
	        _C3 |= (_S2 & _DSN) && _LV2_SHIELD; // DO   require REFLECT
    
    
	    if (_C1 || _C2 || _C3)
	    {
	        collided_shield = true;
        
	        if (_C1 || _C2) // Bounce/Reverse
	        {
	            // E431
	            hspd = (8 * -facingDir) &$FF;
	            vspd = $F8;
            
	            if (_C1) // Reverse SoundWave
	            {
	                counter = 0;
	                hspd    = (hspd<<2) &$FF;
	                vspd    = 0;
	            }
	        }
	        else // _C3 Disintegrate
	        {
	            // E413
	            setXY(id, xx, yy-2);
            
	            ctr_disint = $F2; // start disintegrate
            
	            state = ST_EXPL;
	        }
        
        
	        if ((react_shld>>$10)&$FF == 2) 
	        {    aud_play_sound(Audio.SND_STRK_SLD1);  } // Axe, Bolo, Mace. Need REFLECT active.
	        else aud_play_sound(Audio.SND_SHLD_HIT1);
        
        
        
	        exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	    }
	}



	if (react_body 
	&& !collided_shield 
	&&  collide_pc_body(bodyX,bodyY, bodyW,bodyH, bodyR) )
	{
	    // E442
	    enemy_collide_pc_body();
    
	    // Only Flame1&2 are $01
	    if ((react_body&$FF) != $01) state = 0;
	}





	*/



}
