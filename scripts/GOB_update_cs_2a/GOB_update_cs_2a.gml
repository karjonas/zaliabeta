/// @description  GOB_update_cs_2a()
function GOB_update_cs_2a() {

	// OG cs update only checks left or right. 
	// This adds a check for the side NOT checked.
	// This is to prevent Moa2 (Fiery Moa) from spawning a Flame in a solid


	GO_update_cs();

	if (hspd&$80)
	{   if (csRgtColliding()&TID_SOLID1) cs |= CS_RGT;  } // Add Right
	else
	{   if (csLftColliding()&TID_SOLID1) cs |= CS_LFT;  } // Add Left







}
