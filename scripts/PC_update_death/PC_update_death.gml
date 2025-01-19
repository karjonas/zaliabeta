/// @description  PC_update_death()
function PC_update_death() {


	// C2D5: JSR D385, C2E9: JSR D385, D3CC
	if (g.pc.is_dead 
	&& !g.pc.stun_timer )
	{
	    g.pc.is_dead = 0;
	    g.pc.state   = g.pc.state_DEAD;
    
	    audio_stop_sound(Audio.mus_rm_inst);
	    aud_play_sound(get_audio_theme_track(STR_PC+STR_Death));
    
	    room_goto_(rmB_Death);
	    return true;
	}


	return false;







}
