/// @description  GOB_sword_collision_2a()
function GOB_sword_collision_2a() {


	// E563: JSR E5F3
	GOB_update_sword_offsets();
	GOB_update_sword_hb_1a();
	SwordHB_can_draw = SwordHB_collidable;

	if (SwordHB_collidable 
	&&  collide_pc_shield(SwordHB_x,SwordHB_y, SwordHB_w,SwordHB_h) )
	{
	    // E371
	    pushback_pc_and_go(id);
	    aud_play_sound(get_audio_theme_track(dk_StrikeSolid));
	    return true;  // collided
	}


	    return false; // not collided
	//







}
