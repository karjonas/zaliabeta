/// @description  Rando_can_traverse_NIslMtnPass()
function Rando_can_traverse_NIslMtnPass() {

	// can traverse North Islands Mountain Pass


	if (Rando_is_attainable(STR_HAMMER))
	{
	    return true;
	}


	return false;
	/*
	switch(ItemLocations_RANDO_METHOD)
	{
	    default:{
	    return true;
	    break;}
    
    
	    case 1:{ // Need JUMP or FAIRY to get through N Islands Mtn Pass
	    return Rando_is_attainable(STR_JUMP,STR_FAIRY);
	    break;}
	}

	return false;
	*/
	/*
	var    _val = val(g.dm_rm[?Area_EastA+"2B"+STR_file_name+STR_Quest+hex_str(QUEST_NUM)]);
	switch(_val==Area_EastA+"148")
	{
	    default:{
	    return true;
	    break;}
    
    
	    case 1:{ // Tile file Area_EastA+"148" need JUMP or FAIRY to get to right exit
	    return Rando_is_attainable(STR_JUMP,STR_FAIRY);
	    break;}
	}

	return false;
	*/







}
