/// @description  Exit_Draw()
function Exit_Draw() {


	var _x,_y;


	if (doorway_spr)
	{
	    _x  = xl + sprite_get_xoffset(doorway_spr);
	    _y  = yb - sprite_get_yoffset(doorway_spr);
	    _y  = (_y>>2)<<2;
	    _y += doorway_spr_yoff;
	    draw_sprite_(doorway_spr,0, _x,_y, palidx);
	}


	if (open 
	&&  is_draw_open_exit )
	{   // This just covers the door graphic solid black so it looks open.
	    var _H = $04<<3;
	    _x  =  xl;
	    _y  = ((yb>>3)-1)<<3;
	    _y -= _H;
	    draw_sprite_(spr_1x1_WHT,0, _x,_y, -1, ww,_H, p.C_BLK1);
	}








	if (g.DevTools_state 
	&&  g.can_draw_Exit_hb )
	{
	    if (open) var _COL = p.C_GRN0;
	    else      var _COL = p.C_RED0;
	    draw_rect_(_COL, drawX,drawY, ww,hh, .5);
	}







}
