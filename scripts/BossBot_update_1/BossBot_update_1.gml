/// @description  BossBot_update_1()
function BossBot_update_1() {


	// A1EB
	updateY();
	GO_update_cs();
	GOB_update_2();

	// A1F1
	if (cs&$4 
	&& !(rand()&$7) )
	{   // A1FE: JSR DC91
	    facingDir = dir_to_pc(id);
    
	    hspd =($10*facingDir) &$FF;
	    vspd = $E8; // JUMP!!
    
	    // A1EB
	    updateY();
	    GO_update_cs();
	    GOB_update_2();
	}

	if(!(cs&$4) 
	&& !(cs&$3) ) // mod. Prevent clip into solid
	{
	    updateX();
	}

	if (cs&CS_BD1) enemy_collide_pc_body();







}
