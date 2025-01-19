/// @description  ocsH2(GO inst id)
function ocsH2(argument0) {
	// H: Horizontal. w bits: 0001 1111, h bits: 1110 0000
	// Return true if at least 8(4 if ww==8) pixels width 
	// are w/in ocs area width

	// bits: $10,8 OR 2,1 must be clear. 0 0111, 1 1100
	with(argument0) {return !(ocs&$18) || !(ocs&$3);}
	//with(argument0) return !(ocs&$18) || !(ocs&$3);




}
