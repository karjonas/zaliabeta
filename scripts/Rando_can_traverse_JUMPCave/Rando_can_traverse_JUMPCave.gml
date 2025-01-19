/// @description  Rando_can_traverse_JUMPCave()
function Rando_can_traverse_JUMPCave() {


	if (ItemLocations_DARKROOM_DIFFICULTY>0 
	||  Rando_is_attainable(STR_CANDLE,STR_FIRE) )
	{
	    if (Rando_is_attainable(STR_JUMP))
	    {
	        return true;
	    }
	}


	return false;







}
