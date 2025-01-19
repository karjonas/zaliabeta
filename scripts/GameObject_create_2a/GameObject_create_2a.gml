/// @description  GameObject_create_2a(spawn datakey)
function GameObject_create_2a(argument0) {


	if (is_string(  argument0)){
	    dk_spawn  = argument0;
	    spawn_idx = str_hex(string_copy(dk_spawn, string_length(dk_spawn)-2, 2));
	}
	else if (       argument0>-1){
	    spawn_idx = argument0;
	    dk_spawn  = get_spawn_datakey(g.rm_name,STR_PRXM,spawn_idx);
	}
	else
	{
	    dk_spawn  = undefined;
	}







}
