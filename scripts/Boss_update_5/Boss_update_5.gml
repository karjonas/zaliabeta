/// @description  Boss_update_5()
function Boss_update_5() {


	// BC5D & B1F6 & A3DB
	if (state!=state_NORMAL)
	{
	    state         = state_NORMAL;
	    pending_death = true;
	    timer         = $FF;
	    stun_timer    = EXPLODE_DELAY1; // $7F
	}







}
