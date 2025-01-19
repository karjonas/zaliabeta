/// @description  ocsV3(GO inst id)
function ocsV3(argument0) {

	// V: Vertical. 
	// w bits: 0001 1111, h bits: 1110 0000


	// Return true if ALL height is w/in ocs area height.
	with(argument0) return ocs&$E0 == 0;







}
