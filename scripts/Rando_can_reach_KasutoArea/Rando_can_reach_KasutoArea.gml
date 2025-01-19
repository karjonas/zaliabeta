/// @description  Rando_can_reach_KasutoArea()
function Rando_can_reach_KasutoArea() {


	if (Rando_can_reach_East())
	{
	    // Get past River Devil
	    if (Rando_is_attainable(STR_FLUTE))
	    {
	        return true;
	    }
	    // Through New Kasuto shortcut
	    if (Rando_are_attainable(STR_BRACELET,STR_BOOTS))
	    {
	        return true;
	    }
	}


	return false;







}
