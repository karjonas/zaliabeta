/// @description  ocsHV4(inst id)
function ocsHV4(argument0) {


	// HV: Horizontal Vertical. 
	// Return true if all width is w/in ocs area width
	// AND all height is w/in ocs area height
	// w bits: 0001 1111, h bits: 1110 0000
	with(argument0) return ocsH3(id) && ocsV3(id);








}
