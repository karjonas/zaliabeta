/// @description  get_fairy_yoff(timing)
function get_fairy_yoff(argument0) {


	// EBBE. yoff for Fairy.      _data = "0102030403020100", 1,2,3,4,3,2,1,0
	// EC2F. yoff for SWAMP WALK. _data = "0102030403020100", 1,2,3,4,3,2,1,0

	var _yoff = 0;

	var _VAL = g.counter1>>argument0; // g.counter1>>3,4
	if!(_VAL&$4) _yoff = -((_VAL&$3) + 1); // 1, 2, 3, 4
	else         _yoff = -((_VAL&$3) ^ 3); // 3, 2, 1, 0


	return _yoff;







}
