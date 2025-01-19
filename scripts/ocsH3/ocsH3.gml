/// @description  ocsH3(GO inst id)
function ocsH3(argument0) {
	// H: Horizontal. 
	// Return true if ALL width is w/in ocs area width
	// w bits: 0001 1111, h bits: 1110 0000
	with(argument0) return ocs&$1F==0;



}
