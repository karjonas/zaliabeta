/// @description  Geldarm_udp()
function Geldarm_udp() {


	can_draw_self    = true;
	canDraw_segments = MAX_Y - yt;


	var           _DIFF = MAX_Y - yt;
	segmentYOff = _DIFF div SEGMENTS;
	addOneY_cnt = _DIFF mod SEGMENTS;



	if (g.counter1&$10) xScale =  1;
	else                xScale = -1;


	     if (scrunch_dir!=0) sway_dir =  0;
	else if (g.counter1&$20) sway_dir =  1;
	else                     sway_dir = -1;



	if (state==state_EXPLODE)
	{
	    explosion_count = 2;
	    explosion_count = 1 + ((GROUND_Y-yt)>>4 >= 2);
	    explosion_y  =  GROUND_Y - (explosion_count <<4);
	    explosion_y += 8; // centered like drawY
    
	    if (timer==1)
	    {   // So rising xp not so high
	        set_xlyt(id, xl, explosion_y-8);
	    }
	}







}
