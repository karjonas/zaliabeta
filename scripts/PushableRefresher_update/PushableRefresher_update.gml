/// @description  PushableRefresher_update()
function PushableRefresher_update() {


	switch(sub_state)
	{
	    // --------------------------------------------------------------------
	    case sub_state_IDLE:{
	    if (timer) break;
    
	    Pushable_inst = noone;
    
	    GOB_body_collide_pc_sword();
	    if (cs&CS_SW1)
	    {
	        if(!is_undefined(Pushable_SPAWN_DATAKEY))
	        {
	            with(PushA)
	            {
	                if(!is_undefined(dk_spawn) 
	                &&  dk_spawn==other.Pushable_SPAWN_DATAKEY )
	                {
	                    other.Pushable_inst = id;
	                    destroy_Pushable(id,true);
	                    break;//with(PushA)
	                }
	            }
            
	            f.dm_quests[?Pushable_SPAWN_DATAKEY+STR_Rm] = val(g.dm_spawn[?Pushable_SPAWN_DATAKEY+STR_Rm+STR_Name], g.rm_name);
	            f.dm_quests[?Pushable_SPAWN_DATAKEY+"_XL"]  = val(g.dm_spawn[?Pushable_SPAWN_DATAKEY+"_x"]);
	            f.dm_quests[?Pushable_SPAWN_DATAKEY+"_YT"]  = val(g.dm_spawn[?Pushable_SPAWN_DATAKEY+"_y"]);
	        }
        
	        aud_play_sound(get_audio_theme_track(dk_StrikeEnemy));
	        timer = DURATION1; // DURATION1=$20
	        sub_state = sub_state_TRIGGERED;
	    }
	    break;}//case sub_state_IDLE
    
    
    
    
    
    
    
	    // --------------------------------------------------------------------
	    case sub_state_TRIGGERED:{
	    if (timer) break;
    
	    timer = 0;
	    sub_state = sub_state_SPAWNING;
	    break;}//case sub_state_TRIGGERED
    
    
    
    
    
    
    
	    // --------------------------------------------------------------------
	    case sub_state_SPAWNING:{
	    if (timer) break;
    
	    if(!Pushable_inst 
	    || !instance_exists(Pushable_inst) )
	    {
	        if(!is_undefined(Pushable_SPAWN_DATAKEY))
	        {
	            var _XL = $17<<3;
	            var _YT = viewYT()-sprite_get_height(g.Pushable_SPR2);
	            f.dm_quests[?Pushable_SPAWN_DATAKEY+"_XL"] = _XL;
	            f.dm_quests[?Pushable_SPAWN_DATAKEY+"_YT"] = _YT;
	            var _VER = val(g.dm_spawn[?Pushable_SPAWN_DATAKEY+STR_Version], $3);
	            GameObject_create(_XL,_YT, PushA,_VER, Pushable_SPAWN_DATAKEY);
	        }
        
	        timer = DURATION2; // DURATION2=$100-DURATION1
	        sub_state = sub_state_COOLDOWN;
	    }
	    break;}//case sub_state_SPAWNING
    
    
    
    
    
    
    
	    // --------------------------------------------------------------------
	    case sub_state_COOLDOWN:{
	    if (timer) break;
    
	    timer = 0;
	    sub_state = sub_state_IDLE;
	    break;}//case sub_state_COOLDOWN
	}//switch(sub_state)







}
