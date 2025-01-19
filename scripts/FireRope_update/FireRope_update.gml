/// @description  FireRope_update()
function FireRope_update() {


	if (spin_dir!=0) // You can set spin_dir to 0 to stop all movement.
	{
	    set_xy_len_ang(id, spawn_x,spawn_y, fireball_count<<3, angle);
    
	                  angle += (speed1 * -spin_dir); // -spin_dir: bc, in degrees, clockwise goes backwards.
	    if (angle<=0) angle += 360;
	    else          angle %= 360;
	}





	GO_update_cam_vars();
	update_EF11();

	cs &= ~CS_BD1; // remove CS_LBD from cs
	if (state==state_NORMAL 
	&&  GO_can_collide_this_frame(update_idx) 
	&&  colliding_FireRope(id, g.pc.BodyHB_x,g.pc.BodyHB_y,g.pc.BodyHB_w,g.pc.BodyHB_h) )
	{
	    cs |= CS_BD1;
	}

	if (cs&CS_BD1) enemy_collide_pc_body();







}
