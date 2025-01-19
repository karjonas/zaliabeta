/// @description  bit_dir(nybble)
function bit_dir(argument0) {
	// $01(right)&$04(down): +1
	// $02(left) &$08(up)  : -1
	if (argument0&$5) return  1;
	if (argument0&$A) return -1;
	                  return  0;



}
