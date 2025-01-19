/// @description  NPC_get_init_sprite(instance)
function NPC_get_init_sprite(argument0) {


	with(argument0)
	{
	    if(!is_undefined(dk_spawn))
	    {
	        sprite_datakey = g.dm_spawn[?dk_spawn+STR_Sprite+STR_Datakey];
	    }
    
	    if(!is_undefined(sprite_datakey))
	    {
	        return val(g.dm_NPC[?STR_Sprite+sprite_datakey+"01"], spr_0);
	    }
	}


	return spr_0;







}
