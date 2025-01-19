/// @description  rm_set_cam_1a(cam center x target, cam center y target)
function rm_set_cam_1a(argument0, argument1) {


	g.view_dir_x = 1; // 071F
	g.view_dir_y = 1; // 

	__view_set( e__VW.WView, 0, g.VIEW_W );
	__view_set( e__VW.HView, 0, g.VIEW_H );

	set_camera_xy(clamp(argument0-viewW_(), cam_xl_min(),cam_xl_max()), 
	              clamp(argument1-viewH_(), cam_yt_min(),cam_yt_max()) );
	//







}
