/// @description  Rando_can_reach_Saria2()
function Rando_can_reach_Saria2() {

	// Saria2: Saria South Exit


	if (Rando_can_traverse_RauruPass() 
	||  Rando_can_traverse_RauruToMidoroCave() 
	||  Rando_can_traverse_JUMPCave() )
	{
	    if (Rando_can_cross_SariaBridge())
	    {
	        return true;
	    }
    
	    if (Rando_is_attainable(STR_HAMMER) 
	    &&  Rando_can_get_from_RoyalCemeteryToZ1Area() 
	    &&  Rando_can_traverse_DeathMtn() )
	    {
	        return true;
	    }
	}


	// Raftway to Whale Isl to Mido
	if ( Rando_is_attainable(STR_FIRE)  // Through Fire-Vines Cave
	||  (Rando_is_attainable(STR_RAFT) && Rando_can_traverse_NIslMtnPass()) )
	{
	    if (Rando_can_fast_travel_MidoToSaria() 
	    ||  Rando_is_attainable(STR_HAMMER) )
	    {
	        if (Rando_can_cross_SariaBridge())
	        {
	            return true;
	        }
	    }
    
	    // Backway through Death Mtn
	    if (Rando_can_get_from_RoyalCemeteryToZ1Area() 
	    &&  Rando_can_traverse_DeathMtn() )
	    {
	        return true;
	    }
	}






	/*
	if (Rando_is_qual_location(STR_Saria) 
	&&  Rando_can_cross_SariaBridge() )
	{
	    return true;
	}
	// Backway through Death Mtn
	if (Rando_can_get_to_RoyalCemetery() 
	&&  Rando_can_traverse_DeathMtn() )
	{
	    return true;
	}


	return false;
	*/







}
