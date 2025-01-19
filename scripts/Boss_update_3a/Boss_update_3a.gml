/// @description  Boss_update_3a(dist)
function Boss_update_3a(argument0) {

	// Horsehead, Helmethead, Gooma


	// BBB2, B4EC
	var _DIST  = goDist1();
	if (_DIST &  $80)
	{   _DIST ^= $FF;   }

	if (_DIST >= $60 
	||  _DIST >= argument0 )
	{   // BBC9
	    if (_DIST >= $60 
	    || (!(g.counter1&$3F) && rand()&$3) )
	    {   // BBBC. Walk toward pc
	        counter = (counter&$7F) | $10;
	    }
    
	    return false;
	}


	// ---------------------------------------------------------------
	// BBD7, B511
	var _RAND = rand();
	if!(_RAND&$7)
	{   // B522, B52E: JSR B4F6, B531, 
	    // BBF8, BC04: JSR BBBC, BC07
	    // result $10 or $90, $80 bit means back away from pc
	    if!(counter&$7F) counter = $10 | (_RAND&$80);
    
	    return !attack_state; // true if not attacking
	}

	    return false;
	//







}
