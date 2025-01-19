/// @description  PC_update_2b()
function PC_update_2b() {


	// Last script of the game update. ***********************************************

	// D530,   D535: JSR E1DD,   E1DD: JSR FFC9,   E1E0: JSR E1E6


	if(!SwordHB_collidable 
	||  g.EnterRoom_control_timer )
	{
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}




	var _i;
	var _YOFF_ATKH =   3; // BVR_ATK1. HGH
	var _YOFF_ATKL =  19; // BVR_ATK2. LOW
	var _YOFF_THDW =  36; // BVR_DWTH
	var _YOFF_THUP =  -4; // BVR_UPTH


	// scs: Sword Collide Solid point
	var _DIST = 20;

	switch(behavior){
	case   behavior_STAB_STAND: {SCS_x = x + (_DIST*xScale);     SCS_y = yt+_YOFF_ATKH; break;}
	case   behavior_STAB_CROUCH:{SCS_x = x + (_DIST*xScale);     SCS_y = yt+_YOFF_ATKL; break;}
	case   behavior_STAB_DOWN:  {SCS_x = x +  4;                 SCS_y = yt+_YOFF_THDW; break;}
	case   behavior_STAB_UP:    {SCS_x = x + -2 + (4*hspd_dir);  SCS_y = yt+_YOFF_THUP; break;}
	}



	if (is_cucco)
	{
	    if (attack_bits & (BIT_ATK1|BIT_ATK2))
	    {   SCS_x += (((SwordHB_W-SwordHB_w)) * -xScale);  }
    
	    if (attack_bits &  BIT_ATK2) // stab low
	    {   SCS_y  = yt + _YOFF_ATKL - 8;  }
    
	    if (attack_bits &  BIT_ATK3) // downthrust
	    {   SCS_y  = yt + _YOFF_THDW - 16;  }
	}






	SCS_can_draw = true;
	SCS_draw_x   = SCS_x;
	SCS_draw_y   = SCS_y;









	// --------------------------------------------------------------------
	var _scsX  = SCS_x;

	var _COUNT  = 1; // OG
	    _COUNT += sign(attack_bits&(BIT_ATK1|BIT_ATK2)); // MOD. If solid is too thin, SCS_x is beyond it and doesn't collide.
	for(_i=0; _i<_COUNT; _i++)
	{
	    _scsX  = SCS_x;
	    _scsX += ((_i<<3) * -xScale);
	    if (collide_solid_grid(_scsX,SCS_y) == TID_SOLID1)
	    {
	        break;//_i
	    }
    
    
	    if (attack_bits&(BIT_ATK1|BIT_ATK2))
	    {
	        var _c1 = false;
	        if (collide_solid_inst(_scsX,SCS_y))
	        {
	            _c1 = true;
	        }
	        else
	        {
	            if (instance_exists(Ganon1) 
	            &&  point_in_rect(_scsX,SCS_y, Ganon1.xl,Ganon1.yt,Ganon1.ww,Ganon1.hh) )
	            {
	                _c1 = true;
	            }
	        }
        
	        if (_c1)
	        {
	            aud_play_sound(get_audio_theme_track(dk_StrikeSolid));
	            g.control1_timer = Pushback_DURATION;
	            hspd = ($C * -xScale) &$FF;
	            exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	        }
	    }
    
    
	    if (_i+1 == _COUNT)
	    {
	        exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	    }
	}








	// --------------------------------------------------------------------
	// E22A
	var _C1 = isVal(behavior, behavior_STAB_UP,behavior_STAB_DOWN);


	var _clm = _scsX>>3;
	var _row =  SCS_y>>3;

	// $FFFF. 2 bytes contain tile id & g.dl_t_depth index
	if (is_in_grid(_clm,_row, g.rm_clms,g.rm_rows) 
	&&  isVal(g.dg_RmTile_Break[#_clm,_row]&$FF, TID_BREAK1,TID_BREAK3) 
	&&  f.items & ITM_GLOV 
	&& (!is_cucco || (g.CUCCO_CAN_BREAK1 && f.Cucco_skills&f.CuccoSkill_BREAK1)) )
	{
	    // -------------------------------------------------------
	    if (_clm)
	    {
	        var _clm2 = _clm-1;
	        while (isVal(g.dg_RmTile_Break[#_clm2,_row]&$FF, TID_BREAK1,TID_BREAK3))
	        {
	                _clm2--;
	            if!(_clm2+1) break;
	        }
	        _clm2++;
	        _clm -= ((_clm&1) != (_clm2&1));
	    }
    
    
	    // -------------------------------------------------------
	    if (_row)
	    {
	        var _row2 = _row-1;
	        while (isVal(g.dg_RmTile_Break[# _clm,_row2]&$FF, TID_BREAK1,TID_BREAK3))
	        {
	                _row2--;
	            if!(_row2+1) break;
	        }
	        _row2++;
	        _row -= ((_row&1) != (_row2&1));
	    }
    
    
	    // -------------------------------------------------------
	    // E23A. break block
	    break_block(_clm,_row);
    
	    if (_C1) vspd = 0;
	}
	else if(!_C1) // E26A
	{
	    aud_play_sound(get_audio_theme_track(dk_StrikeSolid));
	}




	if(!_C1) // high & low stab only
	{
	    // E277. PC pushback
    
	    // PC hspd pushback timer.
	    // This timer prevents hspd being set to 0 when attacking and 
	    // allows hspd to be updated normally while attacking.
	    g.control1_timer = Pushback_DURATION;
	    hspd = ($C * -xScale) &$FF;
	}








}
