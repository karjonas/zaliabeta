/// @description  Rando_can_reach_East()
function Rando_can_reach_East() {


	// Get to Mido through Raftway
	if ( Rando_is_attainable(STR_FIRE)  // Through Fire-Vines Cave
	||  (Rando_is_attainable(STR_RAFT) && Rando_can_traverse_NIslMtnPass()) ) // Whale Isl warp to Mido
	{
	    if (Rando_is_attainable(STR_RAFT))
	    {
	        return true;
	    }
	}

	// Get to Midoro Field
	if (Rando_can_traverse_RauruPass() 
	||  Rando_can_traverse_RauruToMidoroCave() 
	||  Rando_can_traverse_JUMPCave() )
	{
	    // Go through Mido Boulder Pass
	    if (Rando_is_attainable(STR_HAMMER))
	    {
	        if (Rando_is_attainable(STR_RAFT))
	        {
	            return true;
	        }
	    }
    
	    // Go through Death Mtn from Saria
	    if (Rando_can_cross_SariaBridge() 
	    &&  Rando_can_traverse_DeathMtn() )
	    {
	        if (Rando_is_attainable(STR_RAFT))
	        {
	            return true;
	        }
	    }
	}


	return false;

	/*
	if (Rando_is_attainable(STR_RAFT))
	{
	    if (Rando_is_attainable(STR_HAMMER) 
	    ||  Rando_can_traverse_NIslMtnPass() ) // Whale Isl warp to Mido
	    {
	        return true;
	    }
    
	    // Through Death Mtn
	    if (Rando_can_traverse_JUMPCave() 
	    &&  Rando_can_cross_SariaBridge() 
	    &&  Rando_can_traverse_DeathMtn() )
	    {
	        return true;
	    }
	}


	return false;
	*/







}
