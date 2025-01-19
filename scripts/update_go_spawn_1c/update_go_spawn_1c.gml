function update_go_spawn_1c() {
	/*
	/// update_go_spawn_1c(object_index, spawn datakey)


	var _SPAWN_DK = argument1;


	// D658
	// Example: "_Defeated_HorsA_ver01_PalcA_0D"
	var _datakey  = get_defeated_dk_1a();
	//var _datakey  = STR_Defeated + "_";
	    _datakey += _SPAWN_DK;
	//

	if (is_ancestor(argument0, Boss) 
	&&  val(f.dm_quests[?_datakey]) ) // num of times defeated boss in this rm
	{
	    if(!g.mod_BOSS_ARENA_WIDE_VIEW)
	    {
	        // datakey structure for f.dm_keys depends on the spawn source of the key.
	        // For a key dropped by an enemy, the enemy's spawn datakey is the key's datakey.
	        _datakey = _SPAWN_DK+STR_Item_Key;
        
	        if (_obj != ShLiA 
	        &&  is_undefined(f.dm_keys[?_datakey]) ) // Defined means key has been taken
	        {
	            // Just in case, make sure key not already spawned.
	            var     _already_spawned = false;
	            with (ItmD0) // ItmD0: Key
	            {
	                if (dk_item == _datakey) // dk: Data Key
	                {
	                    _already_spawned = true;
	                    break;
	                }
	            }
            
	            if (   !_already_spawned)
	            {
	                // The boss was defeated, but somehow game was saved w/out 
	                // picking up the key. Spawn the key.
	                var                      _PAGE = g.dm_spawn_DEFAULT[?_SPAWN_DK+"_x"]>>8;
	                //var                      _PAGE = g.dm_spawn[?_SPAWN_DK+"_x"+STR_Default] >>8;
	                if (is_undefined(_PAGE)) _PAGE = 1;
                
	                var _arena_x =  (_PAGE<<8)+$80;
	                if(!is_undefined(g.dm_spawn[?_SPAWN_DK+STR_Data]))
	                {   _arena_x =   g.dm_spawn[?_SPAWN_DK+STR_Data];  }
                
	                spawn_boss_key(_arena_x, _datakey);
	            }
	        }
	    }
    
    
	    return true;
	}


	    return false;
	//


	*/



}
