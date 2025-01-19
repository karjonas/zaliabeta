/// @description  Rando_can_reach_MazeIsl()
function Rando_can_reach_MazeIsl() {


	if (Rando_can_reach_East() 
	&&  Rando_can_get_from_NabooruToDaruniaField() 
	&&  Rando_is_attainable(STR_STABDOWN) )
	{
	    return true;
	}


	return false;







}
