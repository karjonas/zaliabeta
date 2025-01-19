/// @description  find_clm_solid(solid bits, clm start, row, clm search dir, *search limit, *none found clm $FF)
function find_clm_solid() {

	// argument[0](solid bits) can be 0 if searching for a non-solid clm


	// clm search dir
	argument[3] = sign(argument[3]);

	// search limit. Pass 0 for max limit.
	var                   _LIMIT   = $FF;
	if (argument_count>4) _LIMIT   = min(abs(argument[4]), $FF);
	if(!_LIMIT)           _LIMIT   = $FF;

	// default if none found
	var                   _DEFAULT = -1;
	if (argument_count>5) _DEFAULT = (argument[2]<<8) | (argument[5]&$FF); // rc $FFFF


	// if find_rc_solid() returns -1, this will return 255($FF)
	return find_rc_solid(argument[0]&$F, argument[1],argument[2], argument[3],0, _LIMIT, _DEFAULT) &$FF;







}
