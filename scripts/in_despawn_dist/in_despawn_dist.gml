/// @description  in_despawn_dist(inst id)
function in_despawn_dist() {


	// DE6C
	var                     _DIST = $2C<<3; // $160
	return x < g.view_xl_og-_DIST 
	    || x > g.view_xr_og+_DIST;
	//







}
