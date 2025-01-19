/// @description  GameObjectB_step2()
function GameObjectB_step2() {


	if(!state) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!



	// -------------------------------------------------------------------
	GO_update_cam_vars();




	switch(state)
	{   // -------------------------------------------------------------------
	    case state_NORMAL:{
	    if(!is_undefined(  scr_update))
	    {   script_execute(scr_update);  }
	    break;}//case state_NORMAL
	}//switch(state)







}
