/// @description  Rando_can_traverse_RauruPass()
function Rando_can_traverse_RauruPass() {


	if ((g.Rando_RauruRiverDevil && Rando_is_attainable(STR_FLUTE))
	|| (!g.Rando_RauruRiverDevil && Rando_is_attainable(STR_HAMMER)) )
	{
	    return true;
	}


	return false;







}
