/// @description  Snaraa_update_1(start clm)
function Snaraa_update_1(argument0) {


	var _DIR = bit_dir(path_dir&$3);

	var _X  = find_clm_solid(TID_SOLID1, argument0,y>>3, _DIR,0,argument0);
	if (_X == argument0)
	{   // set new target 1 page beyond rm
	    _X  = (cam_xl_min() + (cam_x_range()>>1)) + ((cam_x_range()>>1) * _DIR); // target x
	}
	else
	{
	    _X += !_DIR;
	    _X  = _X<<3;
	}

	    _X += (8 * -_DIR);
	//

	return abs((argument0<<3) - _X);







}
