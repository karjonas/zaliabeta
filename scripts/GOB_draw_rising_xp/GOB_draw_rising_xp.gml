/// @description  GOB_draw_rising_xp()
function GOB_draw_rising_xp() {


	if(!xp_can_draw) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!
	    xp_can_draw=false;
	//


	var _x  = 1 + (xp>999) + (xp>99) + (xp>9);  // num of chars
	    _x *= (g.RisingXP_SPR_W>>1);            // half total w
	    _x  = drawX-_x;
	//

	var _i, _num, _digit;
	for(_i=3; _i>=0; _i--)
	{
	    if!(xp div power(10,_i)) continue; // >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    
	    // -------------------------------------
	    _num   =  xp  mod power(10,_i+1);
	    _digit = _num div power(10,_i);
	    _digit = g.dl_rising_xp_spr[|_digit]; // sprite
    
	    draw_sprite_(_digit,0, _x,yt);
    
	    _x += g.RisingXP_SPR_W;
	}


	/*  OG.  x coord kinda wonky
	/// GOB_draw_rising_xp()

	var _x      = xx;
	var _y      = yy;
	var _CHAR_W = sprW(g.dl_rising_xp_spr[| 0]);



	     if (inRange(xp,   1,   9))     // 3 in: 1-9
	{
	    _x += (_CHAR_W * 3);
	}
	else if (inRange(xp,  10,  19))     // 2 in: 10-19
	{
	    _x += (_CHAR_W * 2);
	}
	else if (inRange(xp, 20, 99) || inRange(xp, 200, 999)) // 1 in
	{
	    _x += (_CHAR_W * 1);
	}


	var _num, _digit;

	for (var _i = 3; _i >= 0; _i--)
	{
	    if (xp div power(10, _i))
	    {
	        _num   =  xp  mod power(10, _i + 1);
	        _digit = _num div power(10, _i);
	        _digit = g.dl_rising_xp_spr[| _digit];
        
	        drawSpriteExt(_digit, _x, _y, 1);
        
	        _x += _CHAR_W;
	    }
	}
	*/




}
