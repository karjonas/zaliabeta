/// @description  find_row_solid(solid bits, clm, row start, row search dir, *search limit, *none found row $FF)
function find_row_solid() {

	// argument[0](solid bits) can be 0 if searching for a non-solid row


	// row search dir
	argument[3] = sign(argument[3]);

	// search limit. Pass 0 for max limit.
	var                   _LIMIT   = $FF;
	if (argument_count>4) _LIMIT   = min(abs(argument[4]), _LIMIT);
	if(!_LIMIT)           _LIMIT   = $FF;

	// default if none found
	var                   _DEFAULT = -1;
	if (argument_count>5) _DEFAULT = (argument[5]<<8) | (argument[1]&$FF); // rc $FFFF


	// Return format: $FF
	// If find_solid_rc() returns -1, this will return 255($FF)
	var     _return = find_rc_solid(argument[0]&$F, argument[1],argument[2], 0,argument[3], _LIMIT, _DEFAULT);
	return (_return>>8) &$FF; // >>8 bc find_rc_solid() returns 2 bytes, the row being the 2nd byte







}
