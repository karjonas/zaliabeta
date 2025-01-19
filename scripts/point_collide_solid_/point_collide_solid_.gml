/// @description  point_collide_solid_(px, py)
function point_collide_solid_(argument0, argument1) {

	// This logic makes a rule that: a point being against 
	// a tile (above or to the left) is not good enough.
	// The point must be inside of a solid area.


	if(!argument0 
	||  argument0 >= room_width 
	|| !argument1 
	||  argument1 >= room_height )
	{
	    return 0;
	}




	var _CLM = argument0>>3;
	var _ROW = argument1>>3;

	if(!g.dg_RmTile_solid[#_CLM,_ROW]) // btm right
	{
	    return g.dg_RmTile_solid[#_CLM,_ROW];
	}



	if(!(argument0&$7) 
	|| !(argument1&$7) )
	{
	    if(!(argument0&$7) 
	    && !(argument1&$7) )
	    {
	        if(!g.dg_RmTile_solid[#_CLM-1,_ROW-1]   // top left
	        || !g.dg_RmTile_solid[#_CLM  ,_ROW-1]   // top right
	        || !g.dg_RmTile_solid[#_CLM-1,_ROW+1] ) // btm left
	        {
	            return 0;
	        }
	    }
	    else if(!(argument0&$7) 
	         && !g.dg_RmTile_solid[#_CLM-1,_ROW+1] ) // btm left
	    {
	        return 0;
	    }
	    else if(!(argument1&$7) 
	         && !g.dg_RmTile_solid[#_CLM  ,_ROW-1] ) // top right
	    {
	        return 0;
	    }
	}




	return g.dg_RmTile_solid[#_CLM,_ROW];







}
