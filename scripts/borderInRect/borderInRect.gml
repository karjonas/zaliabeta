/// @description  borderInRect(thickness, ax, ay, aw, ah, bx, by, bw, bh)
function borderInRect(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8) {

	// border thickness
	var _t  = argument0;

	// rect a
	var _ax = argument1;
	var _ay = argument2;
	var _aw = argument3;
	var _ah = argument4;

	// rect b
	var _bx = argument5;
	var _by = argument6;
	var _bw = argument7;
	var _bh = argument8;


	_t = clamp(_t, 1, min(_aw,_ah, _bw,_bh));

	return wINwAll( _ax,         _t, _bx, _bw) 
	    || hINhAll( _ay,         _t, _by, _bh) 
	    || wINwAll((_ax+_aw)-_t, _t, _bx, _bw) 
	    || hINhAll((_ay+_ah)-_t, _t, _by, _bh);
	//







}
