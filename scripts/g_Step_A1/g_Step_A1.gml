/// @description  g_Step_A1()
function g_Step_A1() {


	pc.x_change_prev = pc.x_change1 + pc.x_change2;
	pc.x_change  = 0;
	pc.x_change1 = 0; // x_change right before 1st update_Camera_1a()
	pc.x_change2 = 0; // x_change right before 2nd update_Camera_1a()

	pc.y_change_prev = pc.y_change1 + pc.y_change2;
	pc.y_change  = 0;
	pc.y_change1 = 0; // y_change right before 1st update_Camera_1a()
	pc.y_change2 = 0; // y_change right before 2nd update_Camera_1a()

	with(GameObject)
	{
	    x_change = 0;
	    y_change = 0;
	}


	// --------------------------------------------------------
	update_out_of_bounds_fail_safe();



	// --------------------------------------------------------
	if(!EnterRoom_SpawnGO_timer)
	{
	    if(!cutscene 
	    ||  gui_state==gui_state_DIALOGUE1 
	    ||  gui_state==gui_state_DIALOGUE2 
	    ||  gui_state==gui_state_DIALOGUE3 )
	    {   // C13A, C14B: JSR C1CD
	        update_menus();
	    }
	}







}
