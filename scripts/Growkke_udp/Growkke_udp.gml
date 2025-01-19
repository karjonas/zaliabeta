/// @description  Growkke_udp()
function Growkke_udp() {


	var _i,_j, _a, _idx, _val, _count;

	can_draw_self = true;



	// Segment_CanDraw_cnt  = SEGMENTS_MIN;
	    Segment_CanDraw_cnt  = 0;
	for(_i=ds_grid_width(dg_segments)-1; _i>=0; _i--)
	{
	    Segment_CanDraw_cnt += !!dg_segments[#_i,IDX_STATE];
    
    
    
	    if (dg_segments[#_i,IDX_TMR])
	    {
	        dg_segments[#_i,IDX_TMR]--;
	    }
	    else
	    {
	        _val  =  FLIP_DELAY1;
	        _val -= (FLIP_DELAY1>>2) * irandom(2);
	        dg_segments[#_i,IDX_TMR] = _val + irandom(FLIP_DELAY2);
	        // dg_segments[#_i,IDX_TMR] = FLIP_DELAY1 + irandom(FLIP_DELAY2);
        
	        dg_segments[#_i,IDX_XSCALE] = -dg_segments[#_i,IDX_XSCALE];
	    }
	}





	if (state == state_EXPLODE)
	{
	    explosion_count = 2;
	    explosion_count = 1 + ((GROUND_Y-yt)>>4 >= 2);
	    // explosion_count = (GROUND_Y - yt) >>4; // More than 2 if unscrunched enough
	    explosion_y   =  GROUND_Y - (explosion_count <<4);
	    explosion_y  += 8; // centered like drawY
    
	    if (timer == 1)
	    {
	        // So rising xp not so high
	        set_xlyt(id, xl, explosion_y-8);
	    }
	}







}
