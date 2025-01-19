/// @description  PC_udp_cucco()
function PC_udp_cucco() {


	var _CROUCHING = !!Cucco_crouching_state;
	var _HEAD_FWRD = hspd && walk_frame==0; // af_walk==0: LEGS WIDE


	var                          _ATTACKING = false;
	switch(Draw_behavior){
	case   behavior_STAB_STAND: {_ATTACKING = true; break;}
	case   behavior_STAB_CROUCH:{_ATTACKING = true; break;}
	case   behavior_STAB_DOWN:  {_ATTACKING = g.CUCCO_CAN_THRUST_D && f.Cucco_skills&f.CuccoSkill_THRUST_D; break;}
	case   behavior_STAB_UP:    {_ATTACKING = g.CUCCO_CAN_THRUST_U && f.Cucco_skills&f.CuccoSkill_THRUST_U; break;}
	}



	draw_yoff  = 0;

	sword_palidx = palidx_base;


	    Cucco_disguise_sprite = 0;
	if (use_disguise)
	{
	    var _IDX = !(g.counter1&$10);
	    Cucco_disguise_sprite = dg_Cucco_DISGUISE_SPRITES[#dg_Cucco_DISGUISE_SPRITES_idx1,_IDX];
	    Cucco_sprite_body     = Cucco_disguise_sprite;
	    //        open
	    // $00     -    $0F, $10     -    $1F
	    // $00-$07, $08-$0F, $10-$17, $18-$1F
	    //  open              open
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}
	else if (Draw_behavior==behavior_DAMAGE)
	{
	    Cucco_sprite_body = spr_chicken_1a_damage_1a;
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}

	Cucco_eye_can_draw = true;
	Cucco_eye_xoff     =  2;
	Cucco_eye_yoff     = -5;








	// --------------------------------------------------------------
	// ---------------------  HOLD ITEM  ------------------------
	if (HoldItem_timer 
	||  Draw_behavior==behavior_HOLD_ITEM1 
	||  Draw_behavior==behavior_HOLD_ITEM2 
	||  Draw_behavior==behavior_HOLD_ITEM3 
	||  Draw_behavior==behavior_HOLD_ITEM4 
	||  Draw_behavior==behavior_HOLD_ITEM5 )
	{   // ED21
	    //if (HoldItem_timer) HoldItem_can_draw = true;
	    // 9364
	    //HoldItem_x_scale = HoldItem_X_SCALE;
	    HoldItem_x_scale = xScale;
    
    
	    //sword_sprite = 0;
	    sword_palidx = palidx_base;
    
	    Cucco_eye_can_draw = true;
	    Cucco_eye_xoff  =  2 * HoldItem_x_scale;
	    Cucco_eye_xoff -=     !HoldItem_x_scale;
	    Cucco_eye_yoff  = -5;
    
    
	    Cucco_sprite_body = Cucco_SPRITE_BODY1;
	    Cucco_sprite_legs = Cucco_SPRITE_LEGS1;
	    Cucco_sprite_wing = Cucco_SPRITE_WING2; // 2: up
	    Cucco_sprite_wing_yoff = 0;
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}









	// --------------------------------------------------------------
	// ---------------------  BODY  --------------------------
	    Cucco_sprite_body = 0;
	    Cucco_sprite_body = Cucco_SPRITE_BODY1; // Normal/Idle
	//
	if (_HEAD_FWRD 
	&& !ogr )
	{   Cucco_sprite_body = Cucco_SPRITE_BODY2;  } // Stand, Head frwd

	if (Cucco_crouching_state)
	{
	    if (Cucco_crouching_state==2){
	        if (_HEAD_FWRD)
	        {    Cucco_sprite_body = Cucco_SPRITE_BODY8;  } // 
	        else Cucco_sprite_body = Cucco_SPRITE_BODY7;    // 
	    }else{
	        if (_HEAD_FWRD)
	        {    Cucco_sprite_body = Cucco_SPRITE_BODY5;  } // 
	        else Cucco_sprite_body = Cucco_SPRITE_BODY4;    // 
	    }
	}

	if (_ATTACKING)
	{   Cucco_sprite_body = Cucco_SPRITE_BODY3;  }

	if (1)
	{
	    if (Draw_behavior==behavior_DRAWBACK 
	    &&  attack_phase 
	    &&  attack_phase<4 
	    &&  stab_type==1 ) // 0: low, 1: high
	    {   Cucco_sprite_body = Cucco_SPRITE_BODY6;  } // Atk-high Draw
	}
	else
	{
	    // This causes body spr to be idle 1 frame in between 
	    // draw and atk when on ground. This is kind of nice since 
	    // it adds an anim frame frame of the head thrusting frwd.
	    if (attack_phase==1 
	    &&  stab_type==1 ) // 0: low, 1: high
	    {   Cucco_sprite_body = Cucco_SPRITE_BODY6;  } // Atk-high Draw
	}














	// --------------------------------------------------------------
	// ---------------------  LEGS  --------------------------
	var     _FRAME = 0;
	if(!ogr)
	{
	    if (_CROUCHING 
	    ||  Draw_behavior==behavior_WALK1 
	    ||  Draw_behavior==behavior_WALK2 
	    ||  Draw_behavior==behavior_WALK3 )
	    {
	        _FRAME = walk_frame+1;
	    }
	}
	else
	{
	        _FRAME = 1; // Legs wide
	    if (Cucco_is_slowfalling)
	    {
	        if (      Cucco_counter1 < (3<<2)-1)
	        {         Cucco_counter1++;  }
	        else      Cucco_counter1 = 0;
        
	        _FRAME = (Cucco_counter1>>2) + 1;
	    }
	}

	        Cucco_sprite_legs=0;
	switch(_FRAME){
	case 0:{Cucco_sprite_legs=Cucco_SPRITE_LEGS1; break;} // Idle
	case 1:{Cucco_sprite_legs=Cucco_SPRITE_LEGS4; break;} // Walk frame 1
	case 2:{Cucco_sprite_legs=Cucco_SPRITE_LEGS3; break;} // Walk frame 2
	case 3:{Cucco_sprite_legs=Cucco_SPRITE_LEGS2; break;} // Walk frame 3
	}













	// --------------------------------------------------------------
	// ---------------------  EYE  --------------------------
	Cucco_eye_can_draw = true;

	if(!ogr 
	&& !attack_phase 
	&& !hspd 
	&&  Draw_behavior==behavior_IDLE )
	{
	    if!(Cucco_counter4&$FF)
	    {   Cucco_counter4 += irandom($C0);  }
	        Cucco_counter4  = (Cucco_counter4+1)&$3FF;
    
	    if (Cucco_counter4&$100        // Only blink for $1XX & $3XX
	    &&  Cucco_counter4&$FF > $F8 ) // Blink duration
	    {   Cucco_eye_can_draw = 0;  } // blink
	}

	                           Cucco_eye_xoff =  2; Cucco_eye_yoff = -5;
	switch(Cucco_sprite_body){
	case   Cucco_SPRITE_BODY1:{Cucco_eye_xoff =  2; Cucco_eye_yoff = -5; break;} // idle
	case   Cucco_SPRITE_BODY2:{Cucco_eye_xoff =  3; Cucco_eye_yoff = -5; break;} // stand, head frwd
	case   Cucco_SPRITE_BODY3:{Cucco_eye_xoff =  9; Cucco_eye_yoff =  0; break;} // atk
	case   Cucco_SPRITE_BODY4:{Cucco_eye_xoff =  3; Cucco_eye_yoff = -1; break;} // crouch
	case   Cucco_SPRITE_BODY5:{Cucco_eye_xoff =  4; Cucco_eye_yoff = -1; break;} // crouch, head fwrd
	case   Cucco_SPRITE_BODY6:{Cucco_eye_xoff =  1; Cucco_eye_yoff = -4; break;} // atk draw
	case   Cucco_SPRITE_BODY7:{Cucco_eye_xoff =  4; Cucco_eye_yoff =  1; break;} // crouch low
	case   Cucco_SPRITE_BODY8:{Cucco_eye_xoff =  5; Cucco_eye_yoff =  1; break;} // crouch low, head fwrd
	}
	if (Cucco_sprite_body==Cucco_SPRITE_BODY3)
	{
	    switch(Draw_behavior){
	    case   behavior_STAB_UP:  {Cucco_eye_xoff =  0; Cucco_eye_yoff = -10; break;}
	    case   behavior_STAB_DOWN:{Cucco_eye_xoff = -1; Cucco_eye_yoff =   9; break;}
	    }
	}

	Cucco_eye_xoff *=  xScale;
	Cucco_eye_xoff -= !xScale;

	Cucco_eye_yoff *=  yScale;
	Cucco_eye_yoff -= !yScale;













	// --------------------------------------------------------------
	// ---------------------  WINGS  --------------------------
	    Cucco_sprite_wing = Cucco_SPRITE_WING1; // 1: down
	//
	if (Draw_behavior==behavior_STAB_STAND 
	||  Draw_behavior==behavior_STAB_CROUCH )
	{
	    Cucco_sprite_wing = Cucco_SPRITE_WING2; // 2: up
	}
	else
	{
	    if (ogr) // if NOT on the ground
	    {
	            Cucco_counter2++;
	            Cucco_sprite_wing = Cucco_SPRITE_WING2; // 2: up
	        //
	        if (vspd&$80 
	        &&  Cucco_counter2&$04 )
	        {
	            Cucco_sprite_wing = Cucco_SPRITE_WING1; // 1: down
	        }
	        else if (Cucco_is_slowfalling)
	        {
	            //if (Cucco_counter2&$08   // every other 08 frames
	            //&&  Cucco_counter2&$02 ) // every other  2 frames for 2 frames
	            if (Cucco_counter2&$10   // every other 16 frames
	            &&  Cucco_counter2&$04 ) // every other  4 frames for 4 frames
	            {
	                Cucco_sprite_wing = Cucco_SPRITE_WING1; // 1: down
	            }
	        }
	        else if(!Cucco_is_slowfalling)
	        {
	            if (Draw_behavior==behavior_STAB_DOWN)
	            {
	                // 2023/04/21. Commenting the following line out because I 
	                // think a few wing flaps while moving up and downthrusting 
	                // looks much better than no wing flaps.
	                //Cucco_sprite_wing = CUCCO_SPR_WING_1; // 1: down
	            }
	        }
	    }
	    else
	    {   // set at $11 so first flap happens quick for slowfall and jump
	        Cucco_counter2 = $11;
	    }
    
    
    
	    // RANDOM FLAP  -------------------------------
	    if(!ogr  // Only while on ground
	    &&  isVal(Cucco_sprite_body, Cucco_SPRITE_BODY1,Cucco_SPRITE_BODY2) )
	    {
	        var _TIMING = $100;
        
	        if(!Cucco_counter3)
	        {   Cucco_counter3 = irandom(_TIMING>>2);  }
        
	            Cucco_counter3  = (Cucco_counter3+1) & (_TIMING-1);
	        if (Cucco_counter3 == _TIMING-$10 
	        && !irandom($04) )
	        {   Cucco_counter3 += $08;  } // only 1 wing flap instead of 2
        
	        if (Cucco_counter3 >= _TIMING-$10 
	        &&  Cucco_counter3&$04 )
	        {   Cucco_sprite_wing = Cucco_SPRITE_WING2;  } // 2: up
	    }
	    else
	    {
	        Cucco_counter3 = 0;
	    }
	}





	// WING Y OFF ---------------------------------
	                                   Cucco_sprite_wing_yoff  =  0;
	if (Cucco_sprite_wing==Cucco_SPRITE_WING1){
	    if (_ATTACKING)                Cucco_sprite_wing_yoff  = -1;
	    else{
	        switch(Cucco_sprite_body){
	        case   Cucco_SPRITE_BODY1:{Cucco_sprite_wing_yoff +=  0; break;} // idle
	        case   Cucco_SPRITE_BODY2:{Cucco_sprite_wing_yoff += -1; break;} // stand, head frwd
	        case   Cucco_SPRITE_BODY3:{Cucco_sprite_wing_yoff += -1; break;} // atk
	        case   Cucco_SPRITE_BODY4:{Cucco_sprite_wing_yoff +=  1; break;} // crouch
	        case   Cucco_SPRITE_BODY5:{Cucco_sprite_wing_yoff +=  0; break;} // crouch, head fwrd
	        case   Cucco_SPRITE_BODY6:{Cucco_sprite_wing_yoff +=  1; break;} // atk draw
	        case   Cucco_SPRITE_BODY7:{Cucco_sprite_wing_yoff +=  1; break;} // crouch low
	        case   Cucco_SPRITE_BODY8:{Cucco_sprite_wing_yoff +=  0; break;} // crouch low, ead fwrd
	        }
	    }
	}







}
