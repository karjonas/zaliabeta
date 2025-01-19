/// @description  cam_yt_min()
function cam_yt_min() {


	var _yt;

	if (g.view_y_page_max-g.view_y_page_min)
	{
	    if(!g.view_y_page_min)
	    {
	        _yt = g.VIEW_PAD_YT;
	    }
	    else
	    {
	        _yt = ((g.view_y_page_min+1)<<8) - viewH();
	        if (g.view_y_page_min+1==g.view_y_page_max) _yt -= g.VIEW_PAD_YB;
	    }
	}
	else
	{
	    _yt = ((g.view_y_page_min+1)<<8) - viewH();
	    if (g.view_y_page_max+1==g.rm_pages_y) _yt -= g.VIEW_PAD_YB;
	}


	return _yt;







}
