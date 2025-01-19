/// @description  rand()
function rand() {


	if (update_idx >= 0
	&&  update_idx < g.dl_RandomOG_SIZE-1 )
	{   return       g.dl_RandomOG[|1+update_idx];  }
	//
	    return irandom($FF);
	//






}
