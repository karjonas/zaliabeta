/// @description  Kakusu014_udp()
function Kakusu014_udp() {


	//if (sub_state==SUB_STATE_SWITCH0) counter = $C; // So body type is 'NORMAL'
	Kakusu_udp();

	if (sub_state==SUB_STATE_SWITCH0 
	||  sub_state==SUB_STATE_SWITCH1 )
	{
	    //palidx_base     = PI_MOB_RED;
	    //palidx_permut   = 2; // 2: MHS
    
    
    
    
	    var _state = 1 + (sub_state==SUB_STATE_SWITCH1 && g.counter1&$4);
    
	    switch(_state)
	    {
	        case 1: { // NORM
	        body_spr    = BODY1_SPR_NORM;
	        smal_spr    = SMAL1_SPR_NORM;
	        eyes_spr    = EYES1_SPR_A;
	        eyes_xoff   =  0;
	        eyes_yoff   =  0;
	        mouth_xoff  = -1;
	        mouth_yoff  =  3;
	        break;  }
        
        
	        case 2: { // SQSH
	        body_spr    = BODY1_SPR_SQSH;
	        smal_spr    = SMAL1_SPR_SQSH;
	        eyes_spr    = EYES1_SPR_B;
	        eyes_xoff   =  0;
	        eyes_yoff   =  0;
	        mouth_xoff  = -1;
	        mouth_yoff  =  3;
	        break;  }
        
        
	        case 3: { // BALL
	        body_spr    = BODY1_SPR_BALL;
	        smal_spr    = SMAL1_SPR_BALL;
	        eyes_spr    = EYES1_SPR_A;
	        eyes_xoff   =  0;
	        eyes_yoff   = -2;
	        mouth_xoff  = -1;
	        mouth_yoff  =  1;
	        break;  }
	    }
    
    
	    switch(sub_state)
	    {
	        // -------------------------------------------------------------
	        case SUB_STATE_SWITCH0:{
	        eyes_spr    = EYES2_SPR_CLOS_A;
	        eyes_xoff   =  0;
	        eyes_yoff   =  2;
        
	        pupil_state =  0; // 
	        break;}
        
        
        
        
	        // -------------------------------------------------------------
	        case SUB_STATE_SWITCH1:{
	        eyes_spr    = EYES2_SPR_OPEN_A; // Wide open.
	        eyes_xoff   =  0;
	        eyes_yoff   =  2;
        
	        pupil_xoff  = -1;
	        pupil_yoff  =  1;
        
	        pupil_state =  2; // 2x2
	        break;}
	    }
    
    
    
    
	    eyes_xoff  *= xScale;
	    pupil_xoff *= xScale;
	    mouth_xoff *= xScale;
    
	    eyes_yoff  *= yScale;
	    pupil_yoff *= yScale;
	    mouth_yoff *= yScale;
	}







}
