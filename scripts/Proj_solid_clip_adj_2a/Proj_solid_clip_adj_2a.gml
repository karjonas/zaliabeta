/// @description  Proj_solid_clip_adj_2a(is landing)
function Proj_solid_clip_adj_2a(argument0) {


	set_xy(id, x, ((yt>>3)<<3)+hh_);


	var _Y_OFF = hh_-1; // 7
	if (collisionProjCS(0,_Y_OFF))
	{
	    if (argument0) // if landing this frame
	    {
	        set_xy(id, x, y-8);
	    }
	    else
	    {
	        if (is_in_grid(              x>>3,(y+_Y_OFF)>>3, ds_grid_width(g.dg_RmTile_Break),ds_grid_height(g.dg_RmTile_Break)) 
	        && !isVal(g.dg_RmTile_Break[#x>>3,(y+_Y_OFF)>>3]&$FF, TID_BREAK1,TID_BREAK3) )
	        {
	            set_xy(id, x, y-8);
	        }
	    }
	}







}
