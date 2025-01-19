/// @description  cam_xl_max()
function cam_xl_max() {


	if (g.view_lock_rm&$3 
	||       g.rm_w <  viewW() )
	{ return g.rm_w_ - viewW_(); }
	  return g.rm_w  - viewW();
	//







}
