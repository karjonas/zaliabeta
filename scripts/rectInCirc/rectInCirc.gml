/// @description  rectInCirc(cX, cY, radius, rX, rY, rW, rH)
function rectInCirc(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {


	var _CX  = argument0; // Circle center x
	var _CY  = argument1; // Circle center y
	var _RAD = argument2; // Circle radius

	var _RXL = argument3; // Rectangle left x
	var _RYT = argument4; // Rectangle top  y
	var _RW  = argument5; // Rectangle width
	var _RH  = argument6; // Rectangle height

	//     $00   $01  $02
	//      ____ ____ ____
	// $00 |    |    |    |
	//     |____|____|____|
	// $10 |    |Rect|    |
	//     |____|____|____|
	// $20 |    |    |    |
	//     |____|____|____|
	//
	// $11  is the rectangle
	// circ center in $01,10,12,21 will be a rectangle collision
	// circ center in $00,02,20,22 will be a circle    collision
	// rc: Row Clm
	var                _rc  = $00; // 00: top left
	if (_CX>=_RXL)     _rc += $01; // add 1 clm. center clm
	if (_CX>=_RXL+_RW) _rc += $01; // add 1 clm. right  clm
	if (_CY>=_RYT)     _rc += $10; // add 1 row. center row
	if (_CY>=_RYT+_RH) _rc += $10; // add 1 row. bottom row

	if (_rc == $11) return true;

	if (_rc &  $11){
	    // Circle becomes a square with a width and height of its diameter. 
	    // Check if both rectangles overlap.
	    return rectInRect(_CX-_RAD, _CY-_RAD, _RAD<<1, _RAD<<1, 
	                      _RXL    , _RYT    , _RW    , _RH );
	}


	// Point will be one of the rectangle's 4 corners
	var          _X  = _RXL;
	var          _Y  = _RYT;
	if (_rc&$02) _X += _RW;
	if (_rc&$20) _Y += _RH;

	// Is distance between rect corner point and circ center point less than circ radius?
	return point_distance(_CX,_CY, _X,_Y) < _RAD;







}
