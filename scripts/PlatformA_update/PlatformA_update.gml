/// @description  PlatformA_update()
function PlatformA_update() {


	x_prev = x;
	y_prev = y;

	GO_update_cam_vars();
	GO_update_cs();
	update_EF11();



	// --------------------------------------------------------------------
	switch(ver)
	{
	    // --------------------------------------------------------------------
	    case 1:{ // ------------  PATH MOVEMENT ---------------------
	    if (ds_grid_width(dg_path)<=1)
	    {   // Only 1 location. Does not move.
	        exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	    }
    
    
	    if (timer)
	    {
	        timer--;
	        if(!timer)
	        {
	            var     _SPD = $10;
	            hspd1 = _SPD;
	            vspd1 = _SPD;
	            hspd  =(hspd1 * sign(dg_path[#location_b,1]-dg_path[#location_a,1])) &$FF;
	            vspd  =(vspd1 * sign(dg_path[#location_b,2]-dg_path[#location_a,2])) &$FF;
	        }
	        else
	        {
	            exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	        }
	    }
    
    
    
    
	    // --------------------------------------------------------------------
	    if (hspd && !(cs&$3)) updateX();
	    if (vspd && !(cs&$C)) updateY();
    
	    update_body_hb_1a();
    
    
	    if (((x-dg_path[#location_b,1]) * sign8b(hspd)) >= 0 
	    &&  ((y-dg_path[#location_b,2]) * sign8b(vspd)) >= 0 )
	    {
	        set_xy(id, dg_path[#location_b,1], dg_path[#location_b,2]);
        
	        location_a = location_b;
        
	        if(!inRange(location_a+path_dir, 0,ds_grid_width(dg_path)-1))
	        {
	            path_dir = -path_dir;
	            timer = DELAY1_DUR;
	        }
	        else
	        {
	            timer = DELAY2_DUR;
	        }
        
	        location_b = location_a+path_dir;
        
	        hspd = 0;
	        vspd = 0;
	    }
	    break;}//case 1:{
    
    
    
    
    
    
    
	    // --------------------------------------------------------------------
	    case 2:{ // --------------  CIRCLE MOVEMENT  ----------------
	    if (timer){timer--; break;}
    
	    // --------------------------------------------------------------------
	    if (path_dir!=0) // You can set spin_dir to 0 to stop all movement.
	    {
	                      angle += (speed1 * -path_dir); // -path_dir: bc, in degrees, clockwise goes backwards.
	        if (angle<=0) angle += 360;
	        else          angle %= 360;
        
	        set_xy_len_ang(id, dg_path[#location_a,1], dg_path[#location_a,2], radius, angle);
	    }
    
	    update_body_hb_1a();
	    break;}//case 2:{
	}//switch(ver)




	// --------------------------------------------------------------------
	// --------------------------------------------------------------------
	// --------------------------------------------------------------------
	Platform_update_1a();
	// --------------------------------------------------------------------
	GO_update_cam_vars();
	update_EF11();







}
