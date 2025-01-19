/// @description  Leever_in_ground_y(clm, row)
function Leever_in_ground_y(argument0, argument1) {


	var    _Y = find_rc_solid(TID_SOLID1&$F, argument0,argument1, 0,1);
	       _Y = (_Y>>8) &$FF;
	       _Y =  _Y<<3;
	return _Y + IN_GROUND_YOFF;







}
