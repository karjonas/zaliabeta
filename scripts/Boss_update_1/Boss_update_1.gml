/// @description  Boss_update_1()
function Boss_update_1() {

	// HorseHead, HelmetHead, Gooma, Thunderbird
	// Added Carock, Barba to use this


	if(!g.view_lock_boss)  // battle has NOT started
	{   // BE8B
	    Boss_update_start();
	}

	if (g.view_lock_boss  // battle has started
	&& !pending_death )
	{
	    return true; // qualify battle mode
	}

	if (pending_death)
	{   // BEB1, BEB3, BEA8
	    Boss_update_end();
	}


	return false;







}
