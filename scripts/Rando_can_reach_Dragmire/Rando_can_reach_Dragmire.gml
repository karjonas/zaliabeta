/// @description  Rando_can_reach_Dragmire()
function Rando_can_reach_Dragmire() {


	if (Rando_can_reach_KasutoArea() 
	&&  Rando_is_attainable(STR_CROSS) // VOD invisible enemies
	&&  Rando_is_attainable(STR_BOOTS) // Water path at bottom of VOD
	&&  QUEST_NUM==2  // Barrier
	&&  Rando_is_attainable(STR_RAFT) )// VOD to Dragmire
	{
	    return true;
	}


	return false;







}
