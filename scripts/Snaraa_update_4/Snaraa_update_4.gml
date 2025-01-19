/// @description  Snaraa_update_4()
function Snaraa_update_4() {


	// DE40
	GO_update_cam_vars();
	// DE51: JSR EF11
	update_EF11();
	// DE54 & DE6C, DD3D. Despawn check
	GOB_update_2a(); // GOB body to proj/sword/body collision checks







}
