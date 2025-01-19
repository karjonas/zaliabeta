/// @description  Cucco_udp()
function Cucco_udp() {

	/*
	var _CROUCHING = behavior == BVR_CRCH && !ogr;


	// drawXOff += (2 * xScale);
	drawYOff  = 0;


	// --------------------------------------------------------------
	// ---------------------  BODY  --------------------------
	    cucco_spr_body  = 0;
	    cucco_spr_body  = CUCCO_SPR_BODY_1; // Normal/Idle

	if (hspd 
	&& !ogr 
	&&  af_walk == 0 ) // Legs wide
	{   cucco_spr_body  = CUCCO_SPR_BODY_2;  } // Stand, Head frwd

	if (_CROUCHING)
	{
	    if (hspd 
	    &&  af_walk == 0 ) // Legs wide
	    {    cucco_spr_body  = CUCCO_SPR_BODY_5;  } // Crouch, Head frwd
	    else cucco_spr_body  = CUCCO_SPR_BODY_4;    // Crouch, Normal
	}

	if (isVal(behavior, BVR_ATK1,BVR_ATK2))
	{   cucco_spr_body  = CUCCO_SPR_BODY_3;  } // Atk

	if (1)
	{
	    if (behavior == BVR_DRAW 
	    &&  atk_phase 
	    &&  atk_phase < 4 
	    &&  stabType == 1 )
	    {   cucco_spr_body  = CUCCO_SPR_BODY_6;  } // Atk-high Draw
	}
	else
	{
	    // The causes body spr to be idle 1 frame in between 
	    // draw and atk when on ground. This is kind of nice since 
	    // it adds an anim frame frame of the head thrusting frwd.
	    if (atk_phase == 1 
	    &&  stabType  == 1 )
	    {   cucco_spr_body  = CUCCO_SPR_BODY_6;  } // Atk-high Draw
	}


	// --------------------------------------------------------------
	// ---------------------  LEGS  --------------------------
	var     _FRAME  = 0;

	if(!ogr 
	&& (isVal(behavior, BVR_WLK1,BVR_WLK2,BVR_WLK3) || _CROUCHING) )
	{       _FRAME  = af_walk+1;  }

	if (ogr)
	{
	        _FRAME = 1; // Legs wide
	    if (cucco_is_slowfalling)
	    {
	        cucco_ctr_1 = (cucco_ctr_1+1) * (cucco_ctr_1<$B);
	        _FRAME = (cucco_ctr_1>>2) + 1;
	    }
	}

	          cucco_spr_legs  = 0;
	switch (_FRAME) {
	case 0: { cucco_spr_legs  = CUCCO_SPR_LEGS_1; break; } // Idle
	case 1: { cucco_spr_legs  = CUCCO_SPR_LEGS_4; break; } // Walk frame 1
	case 2: { cucco_spr_legs  = CUCCO_SPR_LEGS_3; break; } // Walk frame 2
	case 3: { cucco_spr_legs  = CUCCO_SPR_LEGS_2; break; } // Walk frame 3
	}




	// --------------------------------------------------------------
	// ---------------------  EYE  --------------------------
	cucco_can_draw_eye = 1;

	if(!ogr 
	&& !atk_phase 
	&& !hspd 
	&&  behavior == BVR_IDLE )
	{
	    if!(cucco_ctr_4&$FF)
	    {   cucco_ctr_4 += irandom($C0);  }
	        cucco_ctr_4=(cucco_ctr_4+1)&$3FF;
    
	    if (cucco_ctr_4&$100            // Only blink for $1XX & $3XX
	    &&  cucco_ctr_4&$FF > $F8 )     // Blink duration
	    {   cucco_can_draw_eye = 0;  }  // blink
	}

	                         cucco_eye_xoff  =   2; cucco_eye_yoff  =  -5;
	switch (cucco_spr_body) {
	case CUCCO_SPR_BODY_1: { cucco_eye_xoff  =   2; cucco_eye_yoff  =  -5; break; }
	case CUCCO_SPR_BODY_2: { cucco_eye_xoff  =   3; cucco_eye_yoff  =  -5; break; }
	case CUCCO_SPR_BODY_3: { cucco_eye_xoff  =   9; cucco_eye_yoff  =   0; break; }
	case CUCCO_SPR_BODY_4: { cucco_eye_xoff  =   3; cucco_eye_yoff  =  -1; break; }
	case CUCCO_SPR_BODY_5: { cucco_eye_xoff  =   4; cucco_eye_yoff  =  -1; break; }
	case CUCCO_SPR_BODY_6: { cucco_eye_xoff  =   1; cucco_eye_yoff  =  -4; break; }
	}
	cucco_eye_xoff *=  xScale;
	cucco_eye_yoff *=  yScale;
	cucco_eye_xoff -= !xScale;
	cucco_eye_yoff -= !yScale;


	// --------------------------------------------------------------
	// ---------------------  WINGS  --------------------------
	        cucco_spr_wing = 0;
	        cucco_spr_wing = CUCCO_SPR_WING_1;
	if (ogr)
	{
	        cucco_ctr_2++;
    
	        cucco_spr_wing = CUCCO_SPR_WING_2;
    
	    if (vspd & $80 
	    &&  cucco_ctr_2 & $04 )
	    {
	        cucco_spr_wing = CUCCO_SPR_WING_1;
	    }
	    else if(cucco_is_slowfalling 
	        &&  cucco_ctr_2 & $10   // every other 16 frames
	        &&  cucco_ctr_2 & $04 ) // every other  4 frames for 4 frames
	    {
	        cucco_spr_wing = CUCCO_SPR_WING_1;
	    }
	}
	else
	{       // set at $11 so first flap happens quick for slowfall and jump
	        cucco_ctr_2 = $11;
	}


	// Random flap
	if(!ogr 
	&&  isVal(cucco_spr_body, CUCCO_SPR_BODY_1,CUCCO_SPR_BODY_2) )
	{
	    var _TIMING = $100;
    
	    if(!cucco_ctr_3) cucco_ctr_3 = irandom(_TIMING>>2);
    
	        cucco_ctr_3=(cucco_ctr_3+1)&(_TIMING-1);
	    if (cucco_ctr_3 == _TIMING-$10 
	    && !irandom($04) )
	    {   cucco_ctr_3 += $08;  } // only 1 wing flap instead of 2
    
	    if (cucco_ctr_3 >= _TIMING-$10 
	    &&  cucco_ctr_3 & $04 )
	    {   cucco_spr_wing = CUCCO_SPR_WING_2;  }
	}
	else    cucco_ctr_3 = 0;



	// Wing yoff
	                             cucco_spr_wing_yoff =  0;
	if (cucco_spr_wing == CUCCO_SPR_WING_1) {
	    switch (cucco_spr_body) {
	    case CUCCO_SPR_BODY_1: { cucco_spr_wing_yoff  =  0; break; } // idle
	    case CUCCO_SPR_BODY_2: { cucco_spr_wing_yoff  = -1; break; } // stand, head frwd
	    case CUCCO_SPR_BODY_3: { cucco_spr_wing_yoff  = -1; break; } // atk
	    case CUCCO_SPR_BODY_4: { cucco_spr_wing_yoff  =  1; break; } // crouch
	    case CUCCO_SPR_BODY_5: { cucco_spr_wing_yoff  =  0; break; } // crouch, head frwd
	    case CUCCO_SPR_BODY_6: { cucco_spr_wing_yoff  =  1; break; } // atk draw
	    }
	}




	// palidx = p.dg_PI_SEQ[# 0, !(p.tmr_pal_flash_1&$7F)];
	*/







}
