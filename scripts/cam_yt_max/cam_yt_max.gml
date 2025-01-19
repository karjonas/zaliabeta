/// @description  cam_yt_max()
function cam_yt_max() {


	var    _yb = (g.view_y_page_max+1)<<8;
	       _yb = min(_yb, g.rm_h-g.VIEW_PAD_YB);
	return _yb-viewH();







}
