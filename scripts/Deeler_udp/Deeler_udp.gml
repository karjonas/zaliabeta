/// @description  Deeler_udp()
function Deeler_udp() {


	// F027
	can_draw_self = true;
	Web_can_draw  = false;

	if (g.counter1&$8) xScale = -1;
	else               xScale =  1;

	if (counter)       yScale =  1; // moving down or up
	else               yScale = -1;

	if (counter&$80)   draw_yoff = drawYOff_DROPPED; // has dropped
	else               draw_yoff = 0;

	// F04B
	var _dist = yt - targetY_up;
	if (counter<$80  // has NOT dropped
	&&  _dist )
	{
	    Web_can_draw = true;
    
	    // F05F
	    var _separation = $FF;
    
	    while (_dist>=0)
	    {
	        _separation = (_separation+1) &$FF;
	        _dist -= 3;
	    }
    
	    var                _Web_Y  = targetY_up+1; // + 1 because _Web_Y is drawY, not ogY
	    if!(g.counter1&$1) _Web_Y += (_separation>>1);
    
	    for(var _i=ds_list_size(dl_Web_y)-1; _i>=0; _i--)
	    {
	        dl_Web_y[|_i] = _Web_Y + (_separation*_i);
	    }
	}







}
