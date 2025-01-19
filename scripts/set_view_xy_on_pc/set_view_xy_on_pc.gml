/// @description  set_view_xy_on_pc()
function set_view_xy_on_pc() {


	var _x,_y;

	if (g.view_lock&$3)
	{    _x =        viewXL();  }
	else _x = g.pc.x-viewW_();
	     _x = clamp(_x, cam_xl_min(),cam_xl_max());
	//
	if (g.view_lock&$C)
	{    _y =        viewYT();  }
	else _y = g.pc.y-viewH_();
	     _y = clamp(_y, cam_yt_min(),cam_yt_max());
	//
	set_camera_xy(_x,_y);







}
