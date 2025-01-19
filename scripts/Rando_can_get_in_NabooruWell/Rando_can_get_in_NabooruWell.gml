/// @description  Rando_can_get_in_NabooruWell()
function Rando_can_get_in_NabooruWell() {


	if (Rando_are_attainable(STR_STABDOWN,STR_GLOVE)) // To get in the well
	{
	    return true;
	}


	return false;


	/*
	if (Rando_is_qual_location(val(dm_save_data[?STR_Town+STR_Nabooru], STR_Nabooru)) 
	&&  Rando_are_attainable(STR_STABDOWN,STR_GLOVE) ) // To get in the well
	{
	    return true;
	}


	return false;
	*/







}
