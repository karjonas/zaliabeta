/// @description  get_spawn_datakey(rm_name, type, spawn data index)
function get_spawn_datakey(argument0, argument1, argument2) {


	// var _SPAWN_IDX = str_hex(string_copy(argument0, string_length(argument0)-2, 2));
	// var _TYPE      = string_copy(argument0, string_length(g.rm_name)+1, string_length(argument0) - string_length(g.rm_name) - 2);

	// pass -1 if you want key for rm's GOB spawn count
	if (argument2==-1)
	{   return argument0+argument1+STR_Count;  }

	    return argument0+argument1+hex_str(argument2);
	//







}
