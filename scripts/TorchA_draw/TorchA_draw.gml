/// @description  TorchA_draw()
function TorchA_draw() {


	if(!can_draw_self) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


	GO_draw_sprite(sprite, palidx);
	if (is_lit)
	{
	    /* // Testing Flicker
	    var _x = drawX;
	    var _y = drawY+FIRE_YOFF;
	    var _SPRITE = FIRE_SPR;
	    if (g.counter1&$20 
	    &&  g.counter1&$10 )
	    //&&  g.counter1&$08 )
	    //&&  g.counter1&$04 )
	    {
	        _SPRITE = spr_Flame_Small_1b;
	        _y+=4;
	    }
	    draw_sprite_(_SPRITE,0, _x,_y, FIRE_PI, fire_xscale);
	    */
	    draw_sprite_(FIRE_SPR,0, drawX,drawY+FIRE_YOFF, FIRE_PI, fire_xscale);
	}







}
