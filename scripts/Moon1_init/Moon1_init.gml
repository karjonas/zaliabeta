/// @description  Moon1_init()
function Moon1_init() {


	if(!global.Halloween1_enabled)
	{
	    instance_destroy();
	    exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	}


	scr_update = Moon1_update;
	scr_draw = Moon1_draw;


	GO_sprite_init(spr_Moon01);

	GO_depth_init(g.DEPTH_STARS-1);
	GO_init_palidx(PI_MOB_ORG);


	    CAM_LOCKED = true;
	if (CAM_LOCKED)
	{
	    var _x  = viewW();
	        _x -= ww_;
	        _x -= $0C<<3;
	        //_x -= $10<<3;
	    X_OFF = _x;
    
	    var _y  = 0;
	        _y += hh_;
	        _y += $04<<3;
	    if (g.town_name==STR_New_Kasuto) _y += $06<<3;
	    Y_OFF = _y;
    
	    ADJUST_DIST = $400;
	    //ADJUST_DIST = $C0;
	    _x  = viewXL() + X_OFF;
	    _x += (room_width -viewXR()) div ADJUST_DIST;
    
	    _y  = viewYT() + Y_OFF;
	    _y += (room_height-viewYB()) div ADJUST_DIST;
    
	    set_xy(id, _x,_y);
	}
	else
	{
	    var _x  = room_width;
	        _x -= ww_;
	        _x -= $10<<3;
	    X1 =_x;
    
	    var _y  = $00;
	        _y += hh_;
	        _y += $02<<3;
	    Y1 =_y;
	    set_xy(id, X1,Y1);
	}


	can_draw_self = true;







}
