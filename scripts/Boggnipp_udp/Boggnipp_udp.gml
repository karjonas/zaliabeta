/// @description  Boggnipp_udp()
function Boggnipp_udp() {


	can_draw_self = true;

	var       _VAL = $08 <<(sub_state==sub_state_IDLE);
	GOB_udp_1(_VAL);
	/*
	switch(sub_state)
	{
	    // -------------------------------------
	    case sub_state_IDLE:{
	    GOB_udp_1($10);
	    break;}
    
	    // -------------------------------------
	    case sub_state_CHARGE:{
	    GOB_udp_1($08);
	    break;}
    
	    // -------------------------------------
	    case sub_state_JUMP:{
	    GOB_udp_1($08);
	    break;}
    
	    // -------------------------------------
	    case sub_state_LAND:{
	    GOB_udp_1($08);
	    break;}
	}
	*/







}
