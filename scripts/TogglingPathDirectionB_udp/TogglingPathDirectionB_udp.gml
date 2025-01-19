/// @description  TogglingPathDirectionB_udp()
function TogglingPathDirectionB_udp() {


	can_draw_self = true;


	if (path_dir) palidx = PI_FRWD;
	else          palidx = PI_BKWD;


	if!(g.counter1&$1F)
	{
	                                            arrow_lit_idx += -path_dir;
	         if (arrow_lit_idx >= ARROW_CNT>>2) arrow_lit_idx  = 0;
	    else if (arrow_lit_idx <  0)            arrow_lit_idx  = (ARROW_CNT>>2)-1;
	}







}
