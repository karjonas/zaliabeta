/// @description  Bagin_udp()
function Bagin_udp() {


	can_draw_self = true;


	switch(sub_state)
	{
	    // -------------------------------------
	    case ST_SUB1_IDLE:{
	    GOB_udp_1($10);
	    yScale =  1;
	    break;}
    
	    // -------------------------------------
	    case ST_SUB1_JUMP:{
	    GOB_udp_1($08);
	    if (vspd&$80) yScale =  1;
	    else          yScale = -1;
	    break;}
    
	    // -------------------------------------
	    case ST_SUB1_RESF:{
	    GOB_udp_1($08);
	    yScale = -1;
	    break;}
	}







}
