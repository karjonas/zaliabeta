function Rando_can_cross_SariaBridge() {
	// Rando_can_cross_SariaBridge()


	if (Rando_is_attainable(STR_NOTE))
	{
	    return true;
	}


	if (Rando_are_attainable(STR_JUMP,STR_FAIRY))
	{
	    return true;
	}


	return false;







}
