/// @description  updateY3(vspd current, vspd_sub current)
function updateY3(argument0, argument1) {


	if(!argument0) return 0;


	argument1 += (argument0&$F)<<4;
	argument1  =  argument1>$FF; // _vspd_sub_CARRY

	                  argument0  = argument0>>4;
	if (argument0&$8) argument0 |= $F0;



	var    _Y_CHANGE  = (argument0+argument1) &$FF;
	       _Y_CHANGE -= (_Y_CHANGE&$80)<<1;
	return _Y_CHANGE;







}
