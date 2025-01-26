/// @description  Boss_update_end()
function Boss_update_end() {


	if (g.view_lock_boss 
	&&  pending_death 
	&& !stun_timer )
	{
	    despawn_all_goc();
    
	    aud_play_sound(get_audio_theme_track(dk_StrikeEnemy));
	    audio_group_stop_all(audiogroup_mus);
	    Audio.can_play_mus_rm_body = false; // Prevent music until take key
	    Audio.can_play_boss_music  = false;
    
    
	    state = state_EXPLODE;
    
	    // Call the following AFTER changing state to 
	    // state_EXPLODE so timer won't get changed.
	    for(var _i=MAX_GOB1-1; _i>=0; _i--)
	    {
					if (is_undefined(   g.go_mgr.dl_gob1[|_i]) 
	               || !instance_exists(g.go_mgr.dl_gob1[|_i]) )
	               {
	                   continue;//_i
	               }
        
        
	        with(g.go_mgr.dl_gob1[|_i])
	        {
	            if (state==state_NORMAL)
	            {
	                damage_gob(id, max(hp,0), false);
	            }
	        }
	    }
    
	    with(Spawner)
	    {
	        if (state==state_NORMAL)
	        {
	            damage_gob(id, max(hp,0), false);
	        }
	    }
	}







}
