/// @description  GO_change_sprite_index(inst id, sprite, *alignment x, *alignment y)
function GO_change_sprite_index() {


	// 0: center, 1: right, -1: left
	var                   _ALIGN_X = 0;
	if (argument_count>2) _ALIGN_X = sign(argument[2]);
	var                   _ALIGN_Y = 0;
	if (argument_count>3) _ALIGN_Y = sign(argument[3]);


	with(argument[0])
	{
	    var _X  = x + (ww_ *  _ALIGN_X);
	    var _Y  = y + (hh_ *  _ALIGN_Y);
	    GO_set_sprite_index(argument[1]);
	        _X +=     (ww_ * -_ALIGN_X);
	        _Y +=     (hh_ * -_ALIGN_Y);
	    //
	    set_xy(id, _X,_Y);
	}







}
