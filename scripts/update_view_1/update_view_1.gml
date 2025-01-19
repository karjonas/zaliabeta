/// @description  update_view_1()
function update_view_1() {


	var _pad  = 0;
	var _diff = 0;

	var                 _PC_DIR_BITS  = $0;
	if (pc.x_change!=0) _PC_DIR_BITS |= $1<<(!pc.x_change_dir); // $1 or $2
	if (pc.y_change!=0) _PC_DIR_BITS |= $4<<(!pc.y_change_dir); // $4 or $8




	      view_at_rm_edge  = 0;
	// D4FE: JSR 9925
	// ----------------------------------------------------------------------------
	// --------------  HORIZONTAL  -------------------------------------
	if(!cam_xl_range())
	{     view_at_rm_edge |= $3;  }

	if(!( view_at_rm_edge &  $3) 
	&& !((view_lock       &  $3) & _PC_DIR_BITS) )
	{
	    _pad = 2; // stop cam if less than 4 pixels from edge
    
	    // RIGHT ----------------------------
	    if (cam_xr_max()-viewXR() <= _pad) // if view is close enough to its max
	    {
	        if (pc.x_change_dir            // pc moving right
	        ||  pc.view_xl_dist>viewW_() ) // pc right of cam center
	        {
	            view_at_rm_edge |= $1; // $1 right
	        }
	    }
    
	    // LEFT ----------------------------
	    if (viewXL()-cam_xl_min() <= _pad)
	    {
	        if(!pc.x_change_dir            // pc moving left
	        ||  pc.view_xl_dist<viewW_() ) // pc left of cam center
	        {
	            view_at_rm_edge |= $2; // $2 left
	        }
	    }
    
    
    
	    if (use_smooth_cam_x 
	    || !(view_at_rm_edge&$3) )
	    {
	        if (g.ViewCatchUp_STATE&$1  // $1: Horizontal
	        &&  abs(pc.x_change) 
	        &&  abs(pc.x_change)  <    abs(pc.x-viewXC()) 
	        &&      pc.x_change_dir==sign_(pc.x>viewXC()) ) // if change dir is away from view xc
	        {   // Help center of view catch up with PC
	            _diff  = abs(pc.x-viewXC());
	            _diff *= g.ViewCatchUp_SPEED_X;
	            _diff  = max(abs(pc.x_change), round(_diff));
	            _diff *= pc.x_change_dir;
	        }
	        else
	        {
	            _diff = update_view_1a(pc.x_change, use_smooth_cam_x, pc.x,viewXC());
	        }
        
	        if (_diff!=0)
	        {
	            var _viewXL = viewXL();
            
	            var _XL = clamp(viewXL()+_diff, cam_xl_min(),cam_xl_max());
	            set_camera_xy(_XL, viewYT());
            
	            if (_viewXL!=viewXL()) view_dir_x = sign(viewXL()-_viewXL);
	        }
	    }
	}






	// ----------------------------------------------------------------------------
	// --------------  VERTICAL  -------------------------------------
	if(!cam_yt_range())
	{     view_at_rm_edge |= $C;  }

	if(!( view_at_rm_edge &  $C) 
	&& !((view_lock       &  $C) & _PC_DIR_BITS) )
	{
	    _pad = 0;
    
	    // DOWN ----------------------------
	    if (cam_yb_max()-viewYB() <= _pad)
	    {
	        if (pc.y_change_dir            // pc moving down
	        ||  pc.view_yt_dist>viewH_() ) // pc below view center
	        {
	            view_at_rm_edge |= $4; // $4 bottom
	        }
	    }
    
	    // UP ----------------------------
	    if (viewYT()-cam_yt_min() <= _pad)
	    {
	        if(!pc.y_change_dir            // pc moving up
	        ||  pc.view_yt_dist<viewH_() ) // pc above view center
	        {
	            view_at_rm_edge |= $8; // $8 top
	        }
	    }
    
    
	    if (use_smooth_cam_y 
	    || !(view_at_rm_edge&$C) )
	    {
	        if (g.ViewCatchUp_STATE&$2  // $2: Vertical
	        &&  abs(pc.y_change) 
	        &&  abs(pc.y_change)  <    abs(pc.y-viewYC()) 
	        &&      pc.y_change_dir==sign_(pc.y>viewYC()) ) // if change dir is away from view yc
	        {   // Help center of view catch up with PC
	            _diff  = abs(pc.y-viewYC());
	            _diff *= g.ViewCatchUp_SPEED_Y;
	            _diff  = max(abs(pc.y_change), round(_diff));
	            _diff *= pc.y_change_dir;
	        }
	        else
	        {
	            _diff = update_view_1a(pc.y_change, use_smooth_cam_y, pc.y,viewYC());
	        }
        
	        if (_diff!=0)
	        {
	            var _viewYT = viewYT();
            
	            var _YT = clamp(viewYT()+_diff, cam_yt_min(),cam_yt_max());
	            set_camera_xy(viewXL(), _YT);
            
	            if (_viewYT!=viewYT()) view_dir_y = sign(viewYT()-_viewYT);
	        }
	    }
	}





	update_view_og();


	if (view_update_order==1)
	{   // Added 2023/11/01 so that if a GO moves PC and 
	    // update_Camera_1a() is called again after 
	    // GO update, it doesn't cause a double cam move.
	    pc.x_change=0;
	    pc.y_change=0;
	}







}
