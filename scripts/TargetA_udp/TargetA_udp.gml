/// @description  TargetA_udp()
function TargetA_udp() {


	can_draw_self = true;

	switch(ver)
	{
	    // -------------------------------------------------------
	    case 1:{
	    GOB_udp_1(8);
	    break;}
    
    
    
	    // -------------------------------------------------------
	    case 2:{
	    GOB_udp_1(8);
	    if (vspd&$80) yScale =  1;
	    else          yScale = -1;
	    break;}
    
    
    
	    // -------------------------------------------------------
	    case 3:{
    
	    break;}
	}







}
