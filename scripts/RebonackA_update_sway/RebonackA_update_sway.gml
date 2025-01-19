/// @description  RebonackA_update_sway()
function RebonackA_update_sway() {


	// SWAY BACK AND FORTH --------------------
	if (g.counter1&$40) hspd = (-hspd_SWAY) &$FF;
	else                hspd = ( hspd_SWAY) &$FF;

	hspd_impel = byte_dir(hspd);







}
