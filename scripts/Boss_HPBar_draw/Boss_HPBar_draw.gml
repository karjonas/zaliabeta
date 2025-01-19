/// @description  Boss_HPBar_draw()
function Boss_HPBar_draw() {


	if(!state)          exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!
	if(!HPBar_can_draw) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!
	    HPBar_can_draw=false;
	//


	var _i, _y, _color;
	var _X = viewXL()+HPBar_XOFF;
	var _Y = viewYT()+HPBar_YOFF;
	var _UNITS_EMPTY = HPBar_unit_COUNT-HPBar_units_full;
	if (object_index==Ganon2)
	{
	    _X = viewXL()+HPBar_XPAD;
	    //_X = max(_X, arena_xl+HPBar_XPAD);
	    // Chat member 'alterna4091' had idea to keep hp bar at one during fight
	    _UNITS_EMPTY = HPBar_unit_COUNT-sign(hp);
	}
 
	for(_i=0; _i<HPBar_unit_COUNT; _i++)
	{
	    if (_i>=_UNITS_EMPTY) _color = HPBar_hp_color;
	    else                  _color = p.C_WHT1;
    
	    _y  = _Y + (7*_i);              // 7 apart from each other
	    _y += _i==(HPBar_unit_COUNT-1); // Bottom most one is an extra pixel apart
	    draw_sprite_(spr_1x1_WHT,0, _X,_y, -1, 8,5, _color);
	}







}
