/// @description  RebonackB_init2()
function RebonackB_init2() {


	IronKnuckle_init2();
	GO_init_palidx(PI_MOB_BLU);

	reboA = noone;

	// if fell in liquid, and reset back to arena floor.
	reset_timer     = 0;
	RESET_DUR       = $80;
	RESET_TRIGGER_Y = viewYB()-8; // reset trigger







}
