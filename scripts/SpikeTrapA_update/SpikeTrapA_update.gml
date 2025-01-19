/// @description  SpikeTrapA_update()
function SpikeTrapA_update() {


	if (Idle_timer) Idle_timer--;

	if(!Idle_timer)
	{
	    if (hspd) updateX();
	    if (vspd) updateY();
	}


	GO_update_cs();
	if (cs&$F)
	{
	    if (cs&$1 && x&$7) set_xy(id, (x>>3)<<3,    y);           // RIGHT
	    if (cs&$2 && x&$7) set_xy(id,((x>>3)<<3)+8, y);           // LEFT
	    if (cs&$8 && y&$7) set_xy(id,  x,         ((y>>3)<<3)+8); // TOP
	    if (cs&$4 && y&$7) set_xy(id,  x,          (y>>3)<<3);    // BOTTOM
	    GO_update_cs();
    
	    if (hspd) hspd = byte_negate(hspd);
	    if (vspd) vspd = byte_negate(vspd);
    
	    //if (ocsH2(id)) aud_play_sound(get_audio_theme_track("_SpikeTrap"));
	    Idle_timer = Idle_DURATION1;
	}


	GOB_update_2();
	if (cs&CS_BD1) enemy_collide_pc_body();


	SpikeTrap_out_of_bounds(id);







}
