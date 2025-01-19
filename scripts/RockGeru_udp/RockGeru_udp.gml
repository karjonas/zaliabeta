/// @description  RockGeru_udp()
function RockGeru_udp() {


	// 9D32
	// depth = DEPTH_BG_F0 + 1;

	arm  = 0;
	rock = 0;

	// 9D3D
	can_draw_self = true;

	if (behavior)
	{
	    arm = spr_Geru_Arm2;
    
	                       armXScale =  xScale;
	    if (behavior == 2) armXScale = -xScale;
    
	                       armYScale =  1;
	    if (behavior == 2) armYScale = -1;
    
    
    
	                       Arm_xoff  =  0; // -4
	    if (control   < 7) Arm_xoff  = -8;
	    if (behavior == 2) Arm_xoff  =  8;
	                       Arm_xoff *= xScale;
    
	                       Arm_yoff  =  0;
	    if (behavior == 2) Arm_yoff  =  3;
	                       Arm_yoff += -8; // b/c arm spr is 16x16
    
    
	    if (behavior == 1)
	    {
	        rock = spr_Rock1;
        
	        rockXOff = Arm_xoff + (11 * -armXScale);
	        rockYOff = Arm_yoff - 4 - 0;
	    }
	}







}
