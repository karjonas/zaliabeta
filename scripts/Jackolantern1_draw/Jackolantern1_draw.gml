/// @description  Jackolantern1_draw()
function Jackolantern1_draw() {


	if(!can_draw_self) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	if(!state)         exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


	var _TIME = g.counter1&$7F;
	var _sprite = spr_Jackolantern01_1;
	if (_TIME>=$40)
	{
	    if (((_TIME-$3F) div ($40/3)) == 1) _sprite = spr_Jackolantern01_3;
	    else                                _sprite = spr_Jackolantern01_2;
	}

	draw_sprite_(_sprite,0, x,y);







}
