/// @description  NPC_A_update()
function NPC_A_update() {

	// NPC_A v1. Triforce Keeper


	// 97C9
	switch(sub_state)
	{
	    case 0:{
	    break;}
    
    
	    // ---------------------------------------------------------------------------------------
	    case 1:{ // DURING CUTSCENE -----------------------------------------
	    update_EF11();
	    break;}
    
    
	    // ---------------------------------------------------------------------------------------
	    case 2:{ // 2nd quest, after fight and cutscene
	    NPC_1_update(); // For dialogue
	    break;}
    
    
	    // ---------------------------------------------------------------------------------------
	    case 3:{
	    break;}
	}







}
