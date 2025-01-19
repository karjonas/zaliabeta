/// @description  Challenge_Secret01_udp()
function Challenge_Secret01_udp() {


	can_draw_self = false;
	update_draw_xy();
	xScale = MOVE_DIR;
	palidx = palidx_base;

	if (hspd 
	&& !(g.counter1&($8 <<(abs8b(hspd)<$10))) ) // every 8 or $10 frames.
	{
	    sprite = SPRITE2;
	}
	else
	{
	    sprite = SPRITE1;
	}


	switch(sub_state)
	{
	    // ----------------------------------------------------------
	    case sub_state_IDLE:{
	    break;}//case sub_state_IDLE
    
    
    
    
    
    
    
    
	    // ----------------------------------------------------------
	    case sub_state_REVEAL:{
	         if (counter2< DURATION2>>1)                 can_draw_self = !(counter2&$7);
	    else if (counter2<(DURATION2>>1)+(DURATION2>>2)) can_draw_self = !(counter2&$3);
	    else                                             can_draw_self = !(counter2&$1);
	    break;}//case sub_state_REVEAL
    
    
    
    
    
    
    
    
	    // ----------------------------------------------------------
	    case sub_state_MOVING1:{
	    can_draw_self = !(counter2&$1);
	    break;}//case sub_state_MOVING1
    
    
    
    
    
    
    
    
	    // ----------------------------------------------------------
	    case sub_state_COMPLETE1:{
	         if (counter2<DURATION3>>2) can_draw_self = !(counter2&$1);
	    else if (counter2<DURATION3>>1) can_draw_self = !(counter2&$3);
	    else                            can_draw_self = !(counter2&$7);
	    break;}//case sub_state_COMPLETE1
    
    
    
    
    
    
    
    
	    // ----------------------------------------------------------
	    case sub_state_DONE:{
	    break;}//case sub_state_DONE
	}//switch(sub_state)







}
