/// @description  ocsHV1(GO inst id)
function ocsHV1(argument0) {
	// HV: Horizontal Vertical. 
	// Return true if any width w/in ocs area width
	// AND any height is w/in ocs area height
	// w bits: 0001 1111, h bits: 1110 0000
	with(argument0) {return ocsH1(id) && ocs<$E0;}
	//with(argument0) return ocsH1(id) && ocs<$E0;




}
