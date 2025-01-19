/// @description  Kakusu_udp()
function Kakusu_udp() {


	can_draw_self = true;


	xScale = 1;

	smal_xoff =  0;
	smal_yoff = -2;


	// EFA2
	var      _state = 1;
	if (is_idle){
	    if (g.counter1&$4)
	    {    _state = 1;  } // NORM. 
	    else _state = 2;    // SQSH. 
	}else{
	    if (counter&$C)
	    {    _state = 1;  } // NORM. $C bits set    ($4-F).  75% of the time
	    else _state = 3;    // BALL. $C bits clear  ($0-3).  25% of the time
	}

	switch(  _state)
	{
	    case 1: { // NORM
	    body_spr   = BODY1_SPR_NORM;
	    smal_spr   = SMAL1_SPR_NORM;
	    eyes_spr   = EYES1_SPR_A;
	    eyes_xoff  =  0;
	    eyes_yoff  =  0;
	    mouth_xoff = -1;
	    mouth_yoff =  3;
	    break;  }
    
    
	    case 2: { // SQSH
	    body_spr   = BODY1_SPR_SQSH;
	    smal_spr   = SMAL1_SPR_SQSH;
	    eyes_spr   = EYES1_SPR_B;
	    eyes_xoff  =  0;
	    eyes_yoff  =  0;
	    mouth_xoff = -1;
	    mouth_yoff =  3;
	    break;  }
    
    
	    case 3: { // BALL
	    body_spr   = BODY1_SPR_BALL;
	    smal_spr   = SMAL1_SPR_BALL;
	    eyes_spr   = EYES1_SPR_A;
	    eyes_xoff  =  0;
	    eyes_yoff  = -2;
	    mouth_xoff = -1;
	    mouth_yoff =  1;
	    break;  }
	}



	        pupil_state = 0;
	//
	if (body_type==2) // 2: Transparent body.
	{
	        eyes_spr    =  0;
	}
	else if (eyes_type==2) // 2: Single eye.
	{
	    if(!(cs&$4)           // Off ground.
	    &&  (object_index==Kakusu009 && stun_timer) )
	    {
	        eyes_spr    = EYES2_SPR_OPEN_A; // Wide open.
	        eyes_xoff   =  0;
	        eyes_yoff   =  2;
        
	        pupil_xoff  = -1;
	        pupil_yoff  =  1;
	        pupil_state =  2; // 2x2
	    }
	    else if(!is_idle)  // Walking.
	    {
	        eyes_spr    = EYES2_SPR_OPEN_B; // Half open.
	        eyes_xoff   =  0;
	        eyes_yoff   =  2;
        
	        pupil_xoff  = -1;
	        pupil_yoff  =  1;
	        pupil_state =  1; // 2x1
	    }
	    else                // Idle.
	    {
	        eyes_spr    = EYES2_SPR_CLOS_A;
	        eyes_xoff   =  0;
	        eyes_yoff   =  2;
        
	        pupil_state =  0; // 
	    }
	}



	// 0: no mouth, 1: norm mouth, 2: open mouth
	mouth_state = 0;

	if (body_type!=2   // Transparent body.
	&&  eyes_type==1 ) // OG eyes
	{
	    if!(cs&$4) mouth_state = 2; // open
	    else       mouth_state = 1; // norm
	}



	smal_xoff  *= xScale;
	eyes_xoff  *= xScale;
	pupil_xoff *= xScale;
	mouth_xoff *= xScale;

	smal_yoff  *= yScale;
	eyes_yoff  *= yScale;
	pupil_yoff *= yScale;
	mouth_yoff *= yScale;



	mouth_color = get_pal_color(get_pi(palidx),3);
	pupil_color = get_pal_color(get_pi(palidx),3);







}
