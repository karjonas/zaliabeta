/// @description  GOB_update_2b()
function GOB_update_2b() {


	// DE6C
	if (is_ancestor(object_index,GOB1) 
	&&  (is_undefined(dk_spawn) || !string_pos(STR_PRIO,dk_spawn)) 
	&&  in_despawn_dist(id) ) // if far enough from cam
	{   // DD3D
	    // *** Is this necessary now with the raised spawn limits?
	    GOB_despawn(id);
	}







}
