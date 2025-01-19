/// @description  set_xy(id, new x, new y)
function set_xy(argument0, argument1, argument2) {


	with(argument0)
	{
	    if ( x != argument1) x_change_dir = sign(argument1-x);
	    if ( y != argument2) y_change_dir = sign(argument2-y);
    
	         x  = argument1;
	         y  = argument2;
	    //
	    xl = x - sprite_index_xoff;
	    yt = y - sprite_index_yoff;
    
	    xc = xl + ww_;
	    xr = xl + ww;
	    yc = yt + hh_;
	    yb = yt + hh;
	}







}
