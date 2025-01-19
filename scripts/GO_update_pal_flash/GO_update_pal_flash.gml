/// @description  GO_update_pal_flash(timer, per frames)
function GO_update_pal_flash(argument0, argument1) {


	var _TIME = argument0 >>max(0, bitNum(argument1)-1); // _timer >>0,1,2,3,4,5
	return p.dg_PI_SEQ[#0,_TIME&$3] + p.PI_LIT1;

	// reg: f, e
	// red: d, c
	// org: b, a
	// lnk: 9, 8

	// reg: 7, 6
	// red: 5, 4
	// org: 3, 2
	// lnk: 1, 0







}
