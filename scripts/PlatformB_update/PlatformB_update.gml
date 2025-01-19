/// @description  PlatformB_update()
function PlatformB_update() {


	x_prev = x;
	y_prev = y;


	GO_update_cam_vars();
	update_EF11();


	if (hspd) updateX();
	if (vspd) updateY();


	switch(ver)
	{
	    // ============================================================
	    // -----------------------------------------------------
	    case 1:{ // Cloud
	    if (hspd_dir)
	    {    if (x >=  ww_+g.rm_w) set_xy(id, -(x&$FF),       y);  }
	    else if (x <= -ww_)        set_xy(id,  (x&$FF)+g.rm_w,y);
	    /*
	    if (hspd_dir)
	    {    if (x >=  ww_+g.rm_w) set_xy(id, -ww_,       y);  }
	    else if (x <= -ww_)        set_xy(id,  ww_+g.rm_w,y);
	    */
	    break;}
    
    
    
    
    
	    // ============================================================
	    // -----------------------------------------------------
	    case 2:{ // 
    
	    break;}
	}



	Platform_update_1a();


	GO_update_cam_vars();
	update_EF11();







}
