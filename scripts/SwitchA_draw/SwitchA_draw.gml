/// @description  SwitchA_draw()
function SwitchA_draw() {


	var _i, _x,_y;
	for(_i=0; _i<POLE_UNITS; _i++)
	{
	                        _x  = x;
	                        _y  = y;
	    if (orientation&$1) _y += ((_i<<3) * DIR_IN);
	    else                _x += ((_i<<3) * DIR_IN);
    
	    draw_sprite_(SPR_POLE,0, _x,_y, palidx, xScale,yScale, c_white,1, IMG_ANG);
	}
	    draw_sprite_(SPR_HEAD,0,  x, y, palidx, xScale,yScale, c_white,1, IMG_ANG);
	//







}
