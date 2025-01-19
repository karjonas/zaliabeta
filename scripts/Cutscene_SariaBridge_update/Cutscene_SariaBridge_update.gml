/// @description  Cutscene_SariaBridge_update()
function Cutscene_SariaBridge_update() {


	var _cutscene = g.cutscene;

	// DEPTH_FG6: So PI_BGR_2 is used. DEPTH_FG2 is the river, any tiles on it would move also.
	cutscene_build_bridge_1(DIR,SPEED, CLM<<3,ROW<<3, CLMS, DEPTH_FG6);


	if (g.cutscene) g.pc_lock = PC_LOCK_ALL; // Lock all


	if ( _cutscene 
	&& !g.cutscene )
	{   // Frame of build completion
	    instance_destroy(); // prevent infinite build
	}







}
