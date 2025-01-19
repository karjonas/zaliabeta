/// @description  simulate_position_change(speed, speed_sub)
function simulate_position_change(argument0, argument1) {

	// returns the amount x or y will change next x/y update.


	var _SPEED = argument0&$FF;

	var _CARRY = (((_SPEED&$F)<<4) + argument1) > $FF;

	if (_SPEED&$80) _SPEED = (_SPEED>>4) | $F0;
	else            _SPEED =  _SPEED>>4;

	return byte_to_int((_SPEED+_CARRY)&$FF);







}
