/// @description  ocsH1(GO inst id)
function ocsH1(argument0) {
	// H: Horizontal. ocs: Off Camera State

	// spr [L edge -> uw    ctr    uw <- edge R]
	// 000     1      1      1     1      1
	// bit  $4 is spr horizontal center, 
	// bits $10 & $1 outer most left & right edge of spr, 
	// bits  $8 & 2  are one 8 or 4 pixels toward the 
	// center from the edge, which could also be the center

	// Return true if any width is w/in ocs area width
	// Return true if any width is on camera
	// w bits: 0001 1111, h bits: 1110 0000
	return argument0.ocs&$1F < $1F;




}
