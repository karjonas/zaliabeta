/// @description  Rando_can_reach_RutoMtnRuins()
function Rando_can_reach_RutoMtnRuins() {


	if (Rando_is_qual_location(STR_Ruto))
	{
	    if (Rando_is_attainable(STR_JUMP)  // Get to Ruto Mtn Lake
	    &&  Rando_is_attainable(STR_STABDOWN,STR_FAIRY) ) // Cross Ruto Mtn Lake
	    {
	        // Get through cave to bottom of ruins
	        if (ItemLocations_DARKROOM_DIFFICULTY>=1 
	        ||  Rando_is_attainable(STR_CANDLE,STR_FIRE) )
	        {
	            return true;
	        }
	    }
	}


	return false;







}
