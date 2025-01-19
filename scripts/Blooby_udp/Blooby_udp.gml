/// @description  Blooby_udp()
function Blooby_udp() {


	can_draw_self = true;

	var                     _spr = 0;
	if (ReactionAnim_timer&ReactionAnim_TIMING)
	{                       _spr = Blooby_SPR_B1;  } // puffed up
	else if (g.counter1&$8) _spr = Blooby_SPR_A1; // 
	else                    _spr = Blooby_SPR_A2; // 
	GO_set_sprite(id, _spr);




	switch(sub_state)
	{
	    // ======================================================
	    // ----------------------------------------------
	    case sub_state_IDLE:{
	    palidx_base = palidx_def;
	    break;}//case sub_state_IDLE
    
    
    
    
    
    
	    /*
	    // ======================================================
	    // ----------------------------------------------
	    case sub_state_BOUNCE:{
	    if (timer) break;
	    break;}//case sub_state_BOUNCE
	    */
    
    
    
    
    
    
	    // ======================================================
	    // ----------------------------------------------
	    case sub_state_COOLDOWN0:{ // Deflating
	    can_draw_self = g.counter1&$1;
	    if (g.counter1&$2) palidx_base = palidx_def;
	    else               palidx_base = PI_DARKLONK;
	    break;}//case sub_state_COOLDOWN0
    
    
    
    
    
    
    
	    // ======================================================
	    // ----------------------------------------------
	    case sub_state_COOLDOWN1:{ // Deflated. Not collidable
	    can_draw_self = g.counter1&$1;
	    palidx_base = PI_DARKLONK;
	    break;}//case sub_state_COOLDOWN1
    
    
    
    
    
    
    
	    // ======================================================
	    // ----------------------------------------------
	    case sub_state_COOLDOWN2:{ // Inflating
	    can_draw_self = g.counter1&$1;
	    if (g.counter1&$2) palidx_base = palidx_def;
	    else               palidx_base = PI_DARKLONK;
	    break;}//case sub_state_COOLDOWN2
	}//switch(sub_state)







}
