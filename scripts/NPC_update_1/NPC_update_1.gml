/// @description  NPC_update_1()
function NPC_update_1() {


	if (is_talking)
	{
	    if (g.dialogue_source!=id)
	    {
	        is_talking = false;
	    }
	    else
	    {   // 9AA0
	        facingDir   = dir_to_pc(id);
	        g.pc.xScale = -facingDir;
	        update_EF11();
	        return true;
	    }
	}


	return false;







}
