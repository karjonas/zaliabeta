/// @description  collide_pc_shield(x, y, w, h, *radius)
function collide_pc_shield() {


	with(g.pc)
	{
	    if (argument_count>4 
	    &&  argument[4] )
	    {   // radius
	        return rectInCirc(argument[0],argument[1],argument[4],             ShieldHB_x,ShieldHB_y,ShieldHB_w,ShieldHB_h);
	    }
	    else
	    {
	        return rectInRect(argument[0],argument[1],argument[2],argument[3], ShieldHB_x,ShieldHB_y,ShieldHB_w,ShieldHB_h);
	    }
	}

	return false;







}
