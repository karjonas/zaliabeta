/// @description  Ganon1_update_battle_2()
function Ganon1_update_battle_2() {


	switch(Collision_VER)
	{
	    // ------------------------------------------------------------
	    case 1:{
	    update_body_hb_1a();
	    if (GO_can_collide_this_frame(update_idx) 
	    && !stun_timer 
	    && !g.pc.iframes_timer 
	    &&  g.pc.yt>=yt 
	    &&  collide_pc_body(BodyHB_x,BodyHB_y, BodyHB_w,BodyHB_h, BodyHB_r) )
	    {
	        PC_take_damage(id);
	    }
	    break;}//case 1
    
    
	    // ------------------------------------------------------------
	    case 2:{
	    Ganon1_update_battle_2a();
	    break;}//case 2
	}//switch(Collision_VER)







}
