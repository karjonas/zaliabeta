/// @description  Rando_can_get_from_RoyalCemeteryToZ1Area()
function Rando_can_get_from_RoyalCemeteryToZ1Area() {


	if (Rando_is_attainable(STR_BOOTS) 
	||  ItemLocations_DARKROOM_DIFFICULTY>=1 
	||  Rando_is_attainable(STR_CANDLE,STR_FIRE) )
	{
	    return true;
	}


	return false;







}
