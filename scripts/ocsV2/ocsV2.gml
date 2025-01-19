/// @description  ocsV2(GO inst id)
function ocsV2(argument0) {
	// V: Vertical. w bits: 0001 1111, h bits: 1110 0000
	// Return true if at least 8 (4 if hh == 8)
	// pixels height is w/in ocs area height.

	with(argument0) return !(ocs&$20) || !(ocs&$80);




}
