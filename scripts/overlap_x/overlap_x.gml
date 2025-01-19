/// @description  overlap_x(aX, aW, bX, bW)
function overlap_x(argument0, argument1, argument2, argument3) {

	// The num of pixels 2 rect's widths are overlapping


	var _aX = argument0;
	var _aW = argument1;
	var _bX = argument2;
	var _bW = argument3;

	if (_aX     >= _bX+_bW 
	||  _aX+_aW <= _bX )
	{
	    return 0;
	}

	var _aW_ = _aW>>1;
	var _bW_ = _bW>>1;

	var _DIST = abs((_aX+_aW_) - (_bX+_bW_)); // dist between each's x center

	// min because overlap amount cannot be greater than the shortest width
	return min(_aW, _bW, (_aW_+_bW_)-_DIST); // 







}
