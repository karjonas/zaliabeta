/// @description  NPC_8_update()
function NPC_8_update() {

	// Fairy NPC. RESCUE FAIRY's friend


	if (f.items&ITM_FRY1)
	{
	    NPC_update_3(x,y); // Spawn item
	}



	// ----------------------------------------------------------------------------------
	if (NPC_update_1())
	{   // if talking
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}


	update_EF11();

	NPC_update_2(); // collision, enter restore house, start dlg







}
