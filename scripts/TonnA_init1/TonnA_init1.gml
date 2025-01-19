/// @description  TonnA_init1()
function TonnA_init1() {

	// Large rectangular tank-y enemy with high hp.
	// 40x32 size
	// Walks until cs3(), then turns around
	// Does not stop when stunned.


	GameObjectB_init();


	vspd_grav   = 2;

	abilities |= ABL_WALK;


	HSPD_1 = $08;







}
