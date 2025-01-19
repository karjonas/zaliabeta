/// @description  Stallakk_udp()
function Stallakk_udp() {


	can_draw_self = true;


	switch(sub_state)
	{
	    // ==============================================================
	    // --------------------------------------------------------
	    case sub_state_IDLE1:{ // Stand still
	    Top_spr = Top_SPR1;
	    Btm_spr = Btm_SPR1;
	    break;}
    
    
    
    
    
	    // ==============================================================
	    // --------------------------------------------------------
	    case sub_state_IDLE2:{ // Walk/Pace
	    Top_spr = Top_SPR1;
	    if (g.counter1&$10) Btm_spr = Btm_SPR1; // 1: legs closed
	    else if (hspd)      Btm_spr = Btm_SPR2; // 2: legs open
	    break;}
    
    
    
    
    
	    // ==============================================================
	    // --------------------------------------------------------
	    case sub_state_ATTACK0:{ // delay attack     
	    Top_spr = Top_SPR1;
	    if (g.counter1&$10) Btm_spr = Btm_SPR1; // 1: legs closed
	    else if (hspd)      Btm_spr = Btm_SPR2; // 2: legs open
	    break;}
    
    
    
    
    
	    // ==============================================================
	    // --------------------------------------------------------
	    case sub_state_ATTACK:{
	    Top_spr = Top_SPR2;
	    if (g.counter1&$08) Btm_spr = Btm_SPR1; // 1: legs closed
	    else if (hspd)      Btm_spr = Btm_SPR2; // 2: legs open
	    break;}
	}







}
