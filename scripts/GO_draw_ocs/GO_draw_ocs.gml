/// @description  GO_draw_ocs()
function GO_draw_ocs() {


	if(!g.DevTools_state) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	if(!g.can_draw_ocs) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!


	if(!is_undefined(ocs_draw_y[0]))
	{
	    var i,_x,_y,_w,_h;
    
	    _h = $10;
	    draw_set_colour(c_lime);
	    for(i=0; i<array_length_1d(ocs_draw_x); i++)
	    {
	        _x = ocs_draw_x[i];
	        _y = y - (_h>>1);
	        draw_line(_x, _y, _x, _y + _h);
	    }
    
	    _w = ww;
	    // draw_set_colour(c_lime);
	    for(i=0; i<array_length_1d(ocs_draw_y); i++)
	    {
	        _x = xl;
	        _y = ocs_draw_y[i];
	        draw_line(_x, _y, _x + _w, _y);
	    }
	}

	ocs_draw_y[0] = undefined;







}
