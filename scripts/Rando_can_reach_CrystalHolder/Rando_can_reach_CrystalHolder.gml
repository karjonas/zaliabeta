/// @description  Rando_can_reach_CrystalHolder(dungeon name)
function Rando_can_reach_CrystalHolder(argument0) {


	var    _DUNGEON_NAME = argument0;

	switch(_DUNGEON_NAME)
	{
	    // ====================================================
	    // --------------------------------------------
	    case STR_Parapa_Palace:{
	    if (Rando_is_qual_location(val(dm_save_data[?STR_Dungeon+STR_Rando+_DUNGEON_NAME+"A"], _DUNGEON_NAME)))
	    {
	        if (ItemLocations_DARKROOM_DIFFICULTY>=2 
	        ||  Rando_is_attainable(STR_CANDLE,STR_FIRE) )
	        //||  Rando_is_attainable(STR_CANDLE,STR_FIRE,STR_ENIGMA) )
	        {
	            if (Rando_is_attainable(STR_ALLKEY) 
	            ||  Rando_attainable_key_count(val(g.dm_dungeon[?STR_Dungeon+STR_Num+_DUNGEON_NAME],1))>=3 )
	            {
	                return true;
	            }
	        }
	    }
	    break;}
    
    
    
	    // ====================================================
	    // --------------------------------------------
	    case STR_Midoro_Palace:{
	    if (Rando_is_qual_location(val(dm_save_data[?STR_Dungeon+STR_Rando+_DUNGEON_NAME+"A"], _DUNGEON_NAME)))
	    {
	        if (Rando_is_attainable(STR_GLOVE))
	        {
	            if (ItemLocations_DARKROOM_DIFFICULTY>=2 
	            ||  Rando_is_attainable(STR_CANDLE,STR_FIRE) )
	            {
	                if (Rando_is_attainable(STR_ALLKEY) 
	                ||  Rando_attainable_key_count(val(g.dm_dungeon[?STR_Dungeon+STR_Num+_DUNGEON_NAME],2))>=4 )
	                {
	                    return true;
	                }
	            }
	        }
	    }
	    break;}
    
    
    
	    // ====================================================
	    // --------------------------------------------
	    case STR_Island_Palace:{
	    if (Rando_is_qual_location(val(dm_save_data[?STR_Dungeon+STR_Rando+_DUNGEON_NAME+"A"], _DUNGEON_NAME)))
	    {
	        if (Rando_is_attainable(STR_GLOVE) 
	        &&  Rando_is_attainable(STR_STABDOWN) ) // defeat Rebonack
	        {
	            if (Rando_is_attainable(STR_ALLKEY) 
	            ||  Rando_attainable_key_count(val(g.dm_dungeon[?STR_Dungeon+STR_Num+_DUNGEON_NAME],3))>=4 )
	            {
	                return true;
	            }
	        }
	    }
	    break;}
    
    
    
	    // ====================================================
	    // --------------------------------------------
	    case STR_Maze_Island_Palace:{
	    if (Rando_is_qual_location(val(dm_save_data[?STR_Dungeon+STR_Rando+_DUNGEON_NAME+"A"], _DUNGEON_NAME)))
	    {
	        if (Rando_is_attainable(STR_ALLKEY) 
	        ||  Rando_attainable_key_count(val(g.dm_dungeon[?STR_Dungeon+STR_Num+_DUNGEON_NAME],4))>=6 )
	        {
	            if (Rando_is_attainable(STR_REFLECT)) // defeat Carock
	            {
	                return true;
	            }
	        }
	    }
	    break;}
    
    
    
	    // ====================================================
	    // --------------------------------------------
	    case STR_Palace_On_The_Sea:{
	    if (Rando_is_qual_location(val(dm_save_data[?STR_Dungeon+STR_Rando+_DUNGEON_NAME+"A"], _DUNGEON_NAME)))
	    {
	        if (Rando_is_attainable(STR_FAIRY))
	        {
	            if (Rando_is_attainable(STR_ALLKEY) 
	            ||  Rando_attainable_key_count(val(g.dm_dungeon[?STR_Dungeon+STR_Num+_DUNGEON_NAME],5))>=5 )
	            {
	                return true;
	            }
	        }
	    }
	    break;}
    
    
    
	    // ====================================================
	    // --------------------------------------------
	    case STR_Three_Eye_Rock_Palace:{
	    if (Rando_is_qual_location(val(dm_save_data[?STR_Dungeon+STR_Rando+_DUNGEON_NAME+"A"], _DUNGEON_NAME)))
	    {
	        if (Rando_is_attainable(STR_GLOVE)      // block wall
	        &&  Rando_are_attainable(STR_JUMP,STR_STABDOWN) ) // Dark Rebonack
	        {
	            if (Rando_is_attainable(STR_ALLKEY) 
	            ||  Rando_attainable_key_count(val(g.dm_dungeon[?STR_Dungeon+STR_Num+_DUNGEON_NAME],6))>=6 )
	            {
	                if (Rando_is_attainable(STR_FAIRY)) // low passage to boss room
	                {
	                    return true;
	                }
	            }
	        }
	    }
	    break;}
	}


	return false;







}
