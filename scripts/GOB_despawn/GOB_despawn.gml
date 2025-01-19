/// @description  GOB_despawn(GOB instance)
function GOB_despawn(argument0) {


	// DD3D. For despawning instances that have not been 
	// used/defeated, this will allow them to respawn
	with(argument0)
	{
	    if(!is_undefined(dk_spawn)) // DD41. Allow obj to respawn
	    {   g.dm_spawn[? dk_spawn+STR_Spawn_Permission] = 1;  }
    
	    state = 0;
	}







}
