/// @description  ocsHV3(GO inst id)
function ocsHV3(argument0) {
	// HV: Horizontal Vertical. 
	// Return true if at least half width w/in ocs area width
	// AND any height is w/in ocs area vertically

	// w bits: 0001 1111, h bits: 1110 0000
	with(argument0) return !(ocs&$4) && ocs<$E0; // bit $4 is center x of GOB




}
