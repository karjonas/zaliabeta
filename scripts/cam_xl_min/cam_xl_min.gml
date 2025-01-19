/// @description  cam_xl_min()
function cam_xl_min() {


	// x coord of furthest left view_x can be
	if (g.rm_w<viewW() 
	||  g.view_lock_rm&$3 )
	{   return g.rm_w_-viewW_();  }
	    return 0;
	//







}
