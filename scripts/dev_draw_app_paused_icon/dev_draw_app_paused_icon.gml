/// @description  dev_draw_app_paused_icon()
function dev_draw_app_paused_icon() {


	if (g.app_paused)
	{
	    var _W =   4;
	    var _H = $10;
	    var _X = viewXR() - (_W<<2) -   4;
	    var _Y = viewYB() -  _H     - $10;
	    var _x;
    
	    _x = _X;
	    draw_rect(c_black, _x-1,_Y+1, _W,_H);
	    draw_rect(c_red,   _x,  _Y,   _W,_H);
    
	    _x = _X + (_W<<1);
	    draw_rect(c_black, _x-1,_Y+1, _W,_H);
	    draw_rect(c_red,   _x,  _Y,   _W,_H);
	}







}
