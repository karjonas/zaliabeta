/// @description  Challenge_SwitchA_init()
function Challenge_SwitchA_init() {


	var          _a = 1;
	STATE_INCM = _a++; // INCM: INCoMplete
	STATE_CMP1 = _a++; // CMP1: CoMPlete 1
	STATE_CMP2 = _a++; // CMP2: CoMPlete 2
	STATE_CMP3 = _a++; // CMP2: CoMPlete 3
	sub_state = STATE_INCM;


	DUR_DELAY_CMP1 = $40; // Delay completion start
	DUR_DELAY_CMP2 = $20; // Delay completion reward


	locked_door = noone;


	switch(ver)
	{
	    // ----------------------------------------------------------------
	    case 1: {
	    if (val(f.dm_challenges[?challenge_id+STR_Complete]))
	    {
	        sub_state = STATE_CMP1;
	    }
	    else with(GameObject_create(x,y, LoDoA,3))
	    {
	        other.locked_door = id;
	    }
	    break;  }
    
	    // ----------------------------------------------------------------
	    case 2: {
    
	    break;  }
    
	    // ----------------------------------------------------------------
	    case 3: {
    
	    break;  }
	}







}
