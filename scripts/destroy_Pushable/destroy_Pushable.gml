/// @description  destroy_Pushable(id, reset to original spawn)
function destroy_Pushable() {


	var                   _RESET_TO_ORIGINAL_SPAWN = false;
	if (argument_count>1) _RESET_TO_ORIGINAL_SPAWN = argument[1];

	with(argument[0])
	{
	    if (_RESET_TO_ORIGINAL_SPAWN 
	    && !is_undefined(dk_spawn) )
	    {
	        f.dm_quests[?dk_spawn+STR_Rm] = val(g.dm_spawn[?dk_spawn+STR_Rm+STR_Name], g.rm_name);
	        f.dm_quests[?dk_spawn+"_XL"]  = val(g.dm_spawn[?dk_spawn+"_x"], (xl>>3)<<3);
	        f.dm_quests[?dk_spawn+"_YT"]  = val(g.dm_spawn[?dk_spawn+"_y"], (yt>>3)<<3);
	    }
    
	    moving_dir = 0;
	    vspd = 0;
    
	    stun_timer = STUN_DURATION1; // $30
	    aud_play_sound(get_audio_theme_track(dk_EnemyDeath));
    
	    timer = explosion_DURATION1; // $25: 0.617s
	    state = state_EXPLODE; // Explode
	}







}
