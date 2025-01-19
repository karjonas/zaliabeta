/// @description  Rando_can_reach_RoyalCemetery()
function Rando_can_reach_RoyalCemetery() {


	if (Rando_can_traverse_RauruPass() 
	||  Rando_can_traverse_RauruToMidoroCave() 
	||  Rando_can_traverse_JUMPCave() )
	{
	    if (Rando_is_attainable(STR_HAMMER))
	    {
	        return true;
	    }
    
	    // Through Death Mtn
	    if (Rando_can_cross_SariaBridge() 
	    &&  Rando_can_traverse_DeathMtn() )
	    {
	        return true;
	    }
	}


	// Raftway to Whale Isl to Mido
	if ( Rando_is_attainable(STR_FIRE)  // Through Fire-Vines Cave
	||  (Rando_is_attainable(STR_RAFT) && Rando_can_traverse_NIslMtnPass()) )
	{
	    return true;
	}


	/*
	if (Rando_is_attainable(STR_HAMMER))
	{
	    return true;
	}

	if (Rando_is_attainable(STR_RAFT)  // Through Whale Isl
	&&  Rando_can_traverse_NIslMtnPass() )
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


	return false;
	*/







}
