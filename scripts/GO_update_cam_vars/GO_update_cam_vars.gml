/// @description  GO_update_cam_vars()
function GO_update_cam_vars() {


	// F27D
	view_xl_dist_og = (xl-g.view_xl_og) &$FF; // simulates OG
	view_yt_dist_og = (yt-g.view_yt_og) &$FF; // simulates OG

	view_xl_dist = x-viewXL();
	view_yt_dist = y-viewYT();


	GO_update_ocs();







}
