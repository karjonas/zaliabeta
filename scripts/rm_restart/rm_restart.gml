/// @description  rm_restart()
function rm_restart() {

	// Reload/Re-enter rm 


	sdm(" rm_restart()");

	if (g.exit_enter)
	{
	    g.exit_leave = g.exit_enter;
	}
	else
	{
	    var _DATAKEY  = g.dm_room_history[?STR_Last+STR_Rm+STR_Datakey];
	    if(!is_undefined(_DATAKEY))
	    {   //   REEN: Room Entry Exit Name
	        var _REEN = g.dm_room_history[?_DATAKEY+STR_reen];
	        if(!is_undefined(_REEN))
	        {
	            g.exit_leave = Exit_construct(_REEN);
	        }
	    }
	}







}
