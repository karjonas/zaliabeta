/// @description  Rando_can_reach_MidoroField()
function Rando_can_reach_MidoroField() {


	if (Rando_can_traverse_RauruPass() 
	||  Rando_can_traverse_RauruToMidoroCave() 
	||  Rando_can_traverse_JUMPCave() )
	{
	    return true;
	}


	// Raftway to Whale Isl to Mido
	if ( Rando_is_attainable(STR_FIRE)  // Through Fire-Vines Cave
	||  (Rando_is_attainable(STR_RAFT) && Rando_can_traverse_NIslMtnPass()) )
	{   // Mido fast travel to Saria
	    if (Rando_can_fast_travel_MidoToSaria())
	    {
	        return true;
	    }
    
	    // Mido boulder
	    if (Rando_is_attainable(STR_HAMMER))
	    {
	        return true;
	    }
    
	    // Backway through Death Mtn
	    if (Rando_can_get_from_RoyalCemeteryToZ1Area() 
	    &&  Rando_can_traverse_DeathMtn() 
	    &&  Rando_can_cross_SariaBridge() )
	    {
	        return true;
	    }
	}


	return false;







}
